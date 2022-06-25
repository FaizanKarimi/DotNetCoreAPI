using System.Threading.Tasks;
using Hangfire;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using Infrastructure.Helpers;
using LevelsUpAPI.Extensions;
using LevelsUpAPI.Filters;
using LevelsUpAPI.Middlewares;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Serilog;

namespace LevelsUpAPI
{
    /// <summary>
    /// Startup class
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Startup"/> class.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        /// <summary>
        /// Gets the configuration.
        /// </summary>
        /// <value>
        /// The configuration.
        /// </value>
        public static IConfiguration Configuration { get; private set; }

        /// <summary>
        /// Configures the services.
        /// </summary>
        /// <param name="services">The services.</param>
        public void ConfigureServices(IServiceCollection services)
        {
            if (!string.IsNullOrEmpty(Configuration.GetLinuxServerApplicationAddress()))
            {
                // configure the linux nginx (engine-x)
                services.ConfigureLinuxServer();
            }

            // Configure the IIS server options
            services.ConfigureIISServerOptions();

            // Configure the api options i.e disable the framework validation
            services.ConfigureAPIBehaviourOptions();

            // Cross origin request
            services.AddCorsConfiguration();

            // Swagger documentation and configuration
            services.AddSwaggerConfiguration();

            // EFC db context
            services.AddDBContext();

            // Asp.Net core identity
            services.AddIdentity();

            // JWT authentication service
            services.AddAuthenticationServices();

            // JWT authorization service
            services.AddAuthorizationServices();

            // Configure the application settings
            services.AddApplicationSettings();

            // Configure the nlog logging
            services.AddApplicationLogging();

            // Httpcontext
            services.AddHttpContext();

            // Configure the automapper 
            services.AddAutoMapper();

            // Add application level components
            services.AddComponents();

            // Add application level repositories
            services.AddRepositories();

            // Add application level services
            services.AddServices();

            // Add application level business operations
            services.AddBusinessOperations();

            // Configure the hangfire server
            services.ConfigureHangfire();

            // Add api controller and api level configurations
            services.AddApiController();

            // Add the application localization
            services.AddApplicationLocalization();
        }

        /// <summary>
        /// Configures the specified application.
        /// </summary>
        /// <param name="application">The application.</param>
        /// <param name="environment">The environment.</param>
        public void Configure(IApplicationBuilder application, IWebHostEnvironment environment, ILoggerFactory loggerFactory)
        {
            // adding the serilog as a default logger.
            loggerFactory.AddSerilog();

            // use the linux ngix (engine-x) server
            if (!string.IsNullOrEmpty(Configuration.GetLinuxServerApplicationAddress()))
            {
                application.UseForwardedHeaders(new ForwardedHeadersOptions()
                {
                    ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
                });
            }

            if (environment.IsDevelopment())
            {
                application.UseDeveloperExceptionPage();
            }

            // use the cross origin policy
            application.UseCors(Constants.CorsPolicy);

            // use the swagger ui for the api open documentation
            application.UseSwagger();

            // use the default routing mechanism 
            application.UseRouting();

            // use the application request localization
            application.UseRequestLocalization(LanguageHelpers.GetSupportedLocalizations());

            // use the custom exception middleware 
            application.UseLevelsUpExceptionMiddleware();

            // use the authentication middleware
            application.UseLevelsUpAuthenticationMiddleware();

            // use the authorization middleware
            application.UseAuthorization();

            // use the custom request and response logging middleware
            application.UseLevelsUpResponseRequestLoggingMiddleware();

            // assigning the serviceProvider to static class which will be used in every project
            ServiceHelpers.Configure(application.ApplicationServices);

            // use the api endpoints as a default routing
            application.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();

                // use the hanfire route
                endpoints.MapHangfireDashboard(new DashboardOptions()
                {
                    Authorization = new[] { new HangfireAuthorizationFilter() }
                },
                JobStorage.Current);
            });

            // execute the swagger page when the application loads and terminates the pipelines
            application.Run((context) =>
            {
                context.Response.Redirect(Constants.SwaggerUrl);
                return Task.CompletedTask;
            });
        }
    }
}