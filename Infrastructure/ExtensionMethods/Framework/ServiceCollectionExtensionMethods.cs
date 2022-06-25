using System;
using System.Linq;
using Castle.DynamicProxy;
using Infrastructure.Configurations.ValidationServices;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Options;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// ServiceCollectionExtensions class
    /// </summary>
    public static class ServiceCollectionExtensionMethods
    {
        /// <summary>
        /// Uses the configuration validation.
        /// </summary>
        /// <param name="services">The services.</param>
        /// <returns>
        /// the configuration validation service
        /// </returns>
        public static IServiceCollection UseConfigurationValidation(this IServiceCollection services)
        {
            if (services.IsNetStandard2_1())
            {
                return services.AddTransient<IHostedService, SettingValidationHostedService>();
            }
            else
            {
                return services.AddTransient<IStartupFilter, SettingValidationStartupFilter>();
            }
        }

        /// <summary>
        /// Configures the validatable setting.
        /// </summary>
        /// <typeparam name="TOptions">The type of the options.</typeparam>
        /// <param name="services">The services.</param>
        /// <param name="configuration">The configuration.</param>
        /// <returns>
        /// the service collection
        /// </returns>
        public static IServiceCollection ConfigureValidatableSetting<TOptions>(this IServiceCollection services, IConfiguration configuration)
        where TOptions : class, ISettingValidationStartupFilter, new()
        {
            services.Configure<TOptions>(configuration);
            services.AddSingleton<TOptions>(ctx => ctx.GetRequiredService<IOptions<TOptions>>().Value);
            services.AddSingleton<ISettingValidationStartupFilter>(ctx => ctx.GetRequiredService<IOptions<TOptions>>().Value);
            return services;
        }

        /// <summary>
        /// Adds the proxied scoped.
        /// </summary>
        /// <typeparam name="TInterface">The type of the interface.</typeparam>
        /// <typeparam name="TImplementation">The type of the implementation.</typeparam>
        /// <param name="services">The services.</param>
        public static void AddProxiedScoped<TInterface, TImplementation>(this IServiceCollection services)
            where TInterface : class
            where TImplementation : class, TInterface
        {
            services.AddScoped<TImplementation>();
            services.AddScoped(typeof(TInterface), serviceProvider =>
            {
                ProxyGenerator proxyGenerator = serviceProvider.GetRequiredService<ProxyGenerator>();
                TImplementation actual = serviceProvider.GetRequiredService<TImplementation>();
                IInterceptor[] interceptors = serviceProvider.GetServices<IInterceptor>().ToArray();
                return proxyGenerator.CreateInterfaceProxyWithTarget(typeof(TInterface), actual, interceptors);
            });
        }

        /// <summary>
        /// Adds the proxied scoped.
        /// </summary>
        /// <typeparam name="TInterface">The type of the interface.</typeparam>
        /// <typeparam name="TImplementation">The type of the implementation.</typeparam>
        /// <param name="services">The services.</param>
        /// <param name="interface">The interface.</param>
        /// <param name="implementation">The implementation.</param>
        public static void AddProxiedScoped(this IServiceCollection services, Type @interface, Type implementation)
        {
            services.AddScoped(implementation);
            services.AddScoped(@interface, serviceProvider =>
            {
                ProxyGenerator proxyGenerator = serviceProvider.GetRequiredService<ProxyGenerator>();
                object actual = serviceProvider.GetRequiredService(implementation);
                IInterceptor[] interceptors = serviceProvider.GetServices<IInterceptor>().ToArray();
                return proxyGenerator.CreateInterfaceProxyWithTarget(@interface, actual, interceptors);
            });
        }

        /// <summary>
        /// Determines whether [is net standard2 1].
        /// </summary>
        /// <returns>
        /// <c>true</c> if [is net standard2 1]; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsNetStandard2_1(this IServiceCollection services)
        {
#if NETSTANDARD2_1
            return true;
#else
            return false;
#endif
        }
    }
}