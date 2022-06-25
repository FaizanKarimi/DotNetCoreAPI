using System;
using AutoMapper;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// ServiceHelpers class
    /// </summary>
    public static class ServiceHelpers
    {
        /// <summary>
        /// Gets or sets the service provider.
        /// </summary>
        /// <value>
        /// The service provider.
        /// </value>
        private static IServiceProvider ServiceProvider { get; set; }

        /// <summary>
        /// Configures the specified service provider.
        /// </summary>
        /// <param name="serviceProvider">The service provider.</param>
        public static void Configure(IServiceProvider serviceProvider)
        {
            ServiceProvider = serviceProvider;
        }

        /// <summary>
        /// Gets the service provider.
        /// </summary>
        /// <returns>
        /// the ServiceProvider instance
        /// </returns>
        public static IServiceProvider GetServiceProvider()
        {
            return ServiceProvider;
        }

        /// <summary>
        /// Gets the mapper.
        /// </summary>
        /// <returns>
        /// the mapper
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public static IMapper GetMapper()
        {
            if (ServiceProvider == null)
            {
                throw new LevelsUpException(ErrorMessages.SERVICE_PROVIDER_NOT_EXISTS, ErrorCodes.NotFound);
            }

            return ServiceProvider.GetRequiredService<IServiceScopeFactory>().CreateScope().ServiceProvider.GetRequiredService<IMapper>();
        }

        /// <summary>
        /// Gets the HTTP context accessor.
        /// </summary>
        /// <returns>
        /// the IHttpContextAccessor
        /// </returns>
        public static IHttpContextAccessor GetHttpContextAccessor()
        {
            if (ServiceProvider == null)
            {
                throw new LevelsUpException(ErrorMessages.SERVICE_PROVIDER_NOT_EXISTS, ErrorCodes.NotFound);
            }

            return ServiceProvider.GetRequiredService<IHttpContextAccessor>();
        }
    }
}