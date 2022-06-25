using System;
using Infrastructure.Configurations;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// SettingsHelper class
    /// </summary>
    public static class SettingsHelper
    {
        /// <summary>
        /// Gets the json web token settings.
        /// </summary>
        /// <returns>
        /// the JsonWebTokenSettings
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public static JsonWebTokenSettings GetJsonWebTokenSettings()
        {
            IServiceProvider serviceProvider = ServiceHelpers.GetServiceProvider();

            if (serviceProvider == null)
            {
                throw new LevelsUpException(ErrorMessages.SERVICE_PROVIDER_NOT_EXISTS, ErrorCodes.NotFound);
            }

            return serviceProvider.GetRequiredService<JsonWebTokenSettings>();
        }

        /// <summary>
        /// Gets the application settings.
        /// </summary>
        /// <returns>
        /// the AppSettings
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public static AppSettings GetAppSettings()
        {
            IServiceProvider serviceProvider = ServiceHelpers.GetServiceProvider();

            if (serviceProvider == null)
            {
                throw new LevelsUpException(ErrorMessages.SERVICE_PROVIDER_NOT_EXISTS, ErrorCodes.NotFound);
            }

            return serviceProvider.GetRequiredService<AppSettings>();
        }

        /// <summary>
        /// Gets the twillio settings.
        /// </summary>
        /// <returns>
        /// the TwillioSettings
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public static TwillioSettings GetTwillioSettings()
        {
            IServiceProvider serviceProvider = ServiceHelpers.GetServiceProvider();

            if (serviceProvider == null)
            {
                throw new LevelsUpException(ErrorMessages.SERVICE_PROVIDER_NOT_EXISTS, ErrorCodes.NotFound);
            }

            return serviceProvider.GetRequiredService<TwillioSettings>();
        }
    }
}