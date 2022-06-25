using Infrastructure.Configurations;
using Microsoft.Extensions.Configuration;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// ConfigurationExtensionMethods class
    /// </summary>
    public static class ConfigurationExtensionMethods
    {
        /// <summary>
        /// Gets the linux server application address.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        /// <returns>
        /// the linux ip address of the hosted application
        /// </returns>
        public static string GetLinuxServerApplicationAddress(this IConfiguration configuration)
        {
            return configuration.GetSection(nameof(AppSettings)).Get<AppSettings>().LinuxIpAddress;
        }
    }
}