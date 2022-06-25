using System;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Net;
using System.Reflection;
using AutoMapper;
using AutoMappers;
using BusinessOperations.Interfaces;
using Castle.DynamicProxy;
using Components.Interfaces;
using Hangfire;
using Hangfire.SqlServer;
using Identity;
using Infrastructure.Common;
using Infrastructure.Configurations;
using Infrastructure.ExtensionMethods.Framework;
using Infrastructure.Helpers;
using LevelsUpAPI.Binders;
using LevelsUpAPI.Factory;
using LevelsUpAPI.Filters;
using LevelsUpAPI.Formatters;
using LevelsUpAPI.Formatters.InputFormatters;
using LevelsUpAPI.Formatters.OutputFormatters;
using Logging;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ApplicationModels;
using Microsoft.AspNetCore.Mvc.Controllers;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Repository.Interfaces;
using Serilog;
using Services.Interfaces;

namespace LevelsUpAPI.Extensions
{
    /// <summary>
    /// StartupExtensions class
    /// </summary>
    public static class StartupExtensions
    {
        /// <summary>
        /// Configures the linux server.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void ConfigureLinuxServer(this IServiceCollection services)
        {
            services.Configure<ForwardedHeadersOptions>(config =>
            {
                config.KnownProxies.Add(IPAddress.Parse(Startup.Configuration.GetLinuxServerApplicationAddress()));
            });
        }

        /// <summary>
        /// Configures the IIS server options.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void ConfigureIISServerOptions(this IServiceCollection services)
        {
            services.Configure<IISServerOptions>(options =>
            {
                options.AllowSynchronousIO = true;
            });
        }

        /// <summary>
        /// Configures the API behaviour options.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void ConfigureAPIBehaviourOptions(this IServiceCollection services)
        {
            services.Configure<ApiBehaviorOptions>(options =>
            {
                options.SuppressModelStateInvalidFilter = true;
            });
        }

        /// <summary>
        /// Configures the hangfire.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void ConfigureHangfire(this IServiceCollection services)
        {
            services.AddHangfire((provider, config) =>
                                 config.UseSqlServerStorage(Startup.Configuration.GetConnectionString(Constants.ConnectionStringName),
                                                            new SqlServerStorageOptions()
                                                            {
                                                                DisableGlobalLocks = true,
                                                                UseRecommendedIsolationLevel = true,
                                                                QueuePollInterval = TimeSpan.Zero,
                                                                CommandBatchMaxTimeout = TimeSpan.FromMinutes(5),
                                                                SlidingInvisibilityTimeout = TimeSpan.FromMinutes(5),
                                                                PrepareSchemaIfNecessary = true
                                                            })
                                 .UseFilter(new HangfireJobExecutionFilter(provider.GetRequiredService<Logging.ILogger>()))
                                 .UseFilter(new AutomaticRetryAttribute() { Attempts = 0, OnAttemptsExceeded = AttemptsExceededAction.Fail })

            );

            services.AddHangfireServer(options =>
            {
                options.ServerName = MachineConfigurationHelpers.GetMachineName();
                options.Queues = new[] { MachineConfigurationHelpers.GetMachineName(), Constants.Default };
                options.WorkerCount = 1;
            });
        }

        /// <summary>
        /// Adds the HTTP context.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddHttpContext(this IServiceCollection services)
        {
            services.AddHttpContextAccessor();
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
        }

        /// <summary>
        /// Adds the application logging.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddApplicationLogging(this IServiceCollection services)
        {
            Serilog.Core.Logger logger = new LoggerConfiguration()
                                              .ReadFrom.Configuration(Startup.Configuration)
                                              .CreateLogger();

            services.AddSingleton<ProxyGenerator>();

            services.AddSingleton<Serilog.ILogger>(logger);
            services.AddSingleton<Logging.ILogger, SerilogLogger>();
            services.AddSingleton<IInterceptor, LoggingInterceptor>();

            //services.AddSingleton<ILogger, NLogLogger>();
        }

        /// <summary>
        /// Adds the swagger configuration.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddSwaggerConfiguration(this IServiceCollection services)
        {
            services.AddSwaggerDocument(config =>
            {
                config.PostProcess = document =>
                {
                    document.Info.Version = Constants.APIVerison;
                    document.Info.Title = Constants.APITitle;
                    document.Info.Description = Constants.APIDescription;
                    document.Info.TermsOfService = Constants.APITOS;
                };
            });
        }

        /// <summary>
        /// Adds the cors configuration.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddCorsConfiguration(this IServiceCollection services)
        {
            services.AddCors(options =>
            {
                options.AddPolicy(Constants.CorsPolicy, builder => builder.AllowAnyOrigin()
                                                                          .AllowAnyMethod()
                                                                          .AllowAnyHeader());
            });
        }

        /// <summary>
        /// Adds the application settings.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddApplicationSettings(this IServiceCollection services)
        {
            services.UseConfigurationValidation();
            services.ConfigureValidatableSetting<AppSettings>(Startup.Configuration.GetSection(nameof(AppSettings)));
            services.ConfigureValidatableSetting<JsonWebTokenSettings>(Startup.Configuration.GetSection(nameof(JsonWebTokenSettings)));
            services.ConfigureValidatableSetting<TwillioSettings>(Startup.Configuration.GetSection(nameof(TwillioSettings)));
            services.ConfigureValidatableSetting<SendGridSettings>(Startup.Configuration.GetSection(nameof(SendGridSettings)));
        }

        /// <summary>
        /// Adds the API controller.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddApiController(this IServiceCollection services)
        {
            services.AddControllers(options =>
            {
                // register the custom model binder provider
                options.ModelBinderProviders.Insert(0, new ModelBinderProvider());

                // register the model validation filter globally
                options.Filters.Add(typeof(ModelValidationFilter));

                // register the custom exception filter globally
                options.Filters.Add(typeof(ExceptionFilter));

                // remove all the output formatters
                options.OutputFormatters.Clear();

                // register the output formatters globally
                options.OutputFormatters.Insert(0, new JsonResponseOutputFormatter());
                options.OutputFormatters.Insert(1, new XmlResponseOutputFormatter());

                // remove all the input formatters
                options.InputFormatters.Clear();

                // register the input formatters globally
                options.InputFormatters.Insert(0, new JsonRequestInputFormatter(new JsonOptions(), null));

                // url formatter registered
                options.Conventions.Add(new RouteTokenTransformerConvention(new UrlFormatter()));
            })
            .AddControllersAsServices();

            // register the custom controller factory
            services.AddSingleton<IControllerFactory, ControllerFactory>();
        }

        /// <summary>
        /// Adds the application localization.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddApplicationLocalization(this IServiceCollection services)
        {
            services.AddLocalization(options => options.ResourcesPath = Constants.ResourcePath);
            services.Configure<RequestLocalizationOptions>(options =>
            {
                options.DefaultRequestCulture = LanguageHelpers.GetDefaultRequestCulture();
                options.SupportedCultures = LanguageHelpers.GetSupportedCultureInfos();
                options.SupportedUICultures = LanguageHelpers.GetSupportedUICultureInfos();
            });
        }

        /// <summary>
        /// Adds the database context.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddDBContext(this IServiceCollection services)
        {
            services.AddDbContext<LevelsUpDbContext>(options =>
            {
                options.UseSqlServer(Startup.Configuration.GetConnectionString(Constants.ConnectionStringName));
            });
        }

        /// <summary>
        /// Adds the identity.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddIdentity(this IServiceCollection services)
        {
            services.AddIdentity<LevelsUpUser, IdentityRole>(options =>
            {
                options.Password.RequireDigit = false;
                options.Password.RequiredLength = 4;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireUppercase = false;
                options.Password.RequireLowercase = false;

                // user with different (unique) email will be successfully registered
                options.User.RequireUniqueEmail = true;

                // user with confirmed email will be able to successfully login
                options.SignIn.RequireConfirmedEmail = true;

                // user with confirmed phone number will be able to successfully login
                options.SignIn.RequireConfirmedPhoneNumber = true;
            })
            .AddEntityFrameworkStores<LevelsUpDbContext>()
            .AddDefaultTokenProviders();
        }

        /// <summary>
        /// Adds the authentication services.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddAuthenticationServices(this IServiceCollection services)
        {
            services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            .AddJwtBearer(options =>
            {
                options.RequireHttpsMetadata = false;
                options.SaveToken = true;
                options.TokenValidationParameters = TokenValidationParameterHelpers.GetTokenValidationParameters();
            });

            // Register JwtSecurityTokenHandler per request to use as a dependency injection
            services.AddScoped<JwtSecurityTokenHandler>();
        }

        /// <summary>
        /// Adds the authorization services.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddAuthorizationServices(this IServiceCollection services)
        {
            services.AddAuthorization(authorization =>
            {
                authorization.DefaultPolicy = new AuthorizationPolicyBuilder()
                                                 .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme)
                                                 .RequireAuthenticatedUser()
                                                 .Build();
            });
        }

        /// <summary>
        /// Adds the automatic mapper.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddAutoMapper(this IServiceCollection services)
        {
            Assembly assembly = typeof(IAutoMapper).Assembly;
            services.AddAutoMapper(assembly);
        }

        /// <summary>
        /// Adds the repositories.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddRepositories(this IServiceCollection services)
        {
            services.Scan(scan => scan
                                  .FromAssemblyOf<IRepository>()
                                  .AddClasses()
                                  .AsImplementedInterfaces()
                                  .WithScopedLifetime());
        }

        /// <summary>
        /// Adds the services.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddServices(this IServiceCollection services, bool loggingInterceptor = true)
        {
            if (loggingInterceptor)
            {
                Type[] userDefinedTypes = typeof(IService).Assembly.GetExportedTypes().Where(x => x.IsClass && x.IsPublic && typeof(IService).IsAssignableFrom(x)).ToArray();
                foreach (Type implementation in userDefinedTypes)
                {
                    foreach (Type @interface in implementation.GetInterfaces().Where(impl => impl.Name != nameof(IService)))
                    {
                        services.AddProxiedScoped(@interface, implementation);
                    }
                }
            }
            else
            {
                services.Scan(scan => scan
                                      .FromAssemblyOf<IService>()
                                      .AddClasses()
                                      .AsImplementedInterfaces()
                                      .WithScopedLifetime());
            }
        }

        /// <summary>
        /// Adds the business operations.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddBusinessOperations(this IServiceCollection services)
        {
            services.Scan(scan => scan
                                  .FromAssemblyOf<IBusinessOperation>()
                                  .AddClasses()
                                  .AsImplementedInterfaces()
                                  .WithScopedLifetime());
        }

        /// <summary>
        /// Adds the components.
        /// </summary>
        /// <param name="services">The services.</param>
        public static void AddComponents(this IServiceCollection services)
        {
            services.Scan(scan => scan
                                  .FromAssemblyOf<IComponent>()
                                  .AddClasses()
                                  .AsImplementedInterfaces()
                                  .WithTransientLifetime());
        }
    }
}