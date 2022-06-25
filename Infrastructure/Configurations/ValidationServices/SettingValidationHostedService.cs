using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Hosting;

namespace Infrastructure.Configurations.ValidationServices
{
    /// <summary>
    /// SettingValidationHostedService class
    /// </summary>
    /// <seealso cref="IHostedService" />
    public class SettingValidationHostedService : IHostedService
    {
        /// <summary>
        /// The setting validation startup filter
        /// </summary>
        readonly IEnumerable<ISettingValidationStartupFilter> _settingValidationStartupFilter;

        /// <summary>
        /// Initializes a new instance of the <see cref="SettingValidationHostedService"/> class.
        /// </summary>
        /// <param name="settingValidationStartupFilter">The setting validation startup filter.</param>
        public SettingValidationHostedService(IEnumerable<ISettingValidationStartupFilter> settingValidationStartupFilter)
        {
            this._settingValidationStartupFilter = settingValidationStartupFilter;
        }

        /// <summary>
        /// Triggered when the application host is ready to start the service.
        /// </summary>
        /// <param name="cancellationToken">Indicates that the start process has been aborted.</param>
        /// <returns>
        /// the task status
        /// </returns>
        public Task StartAsync(CancellationToken cancellationToken)
        {
            foreach (ISettingValidationStartupFilter settingValidationStartupFilter in this._settingValidationStartupFilter)
            {
                settingValidationStartupFilter.Validate();
            }

            return Task.CompletedTask;
        }

        /// <summary>
        /// Triggered when the application host is performing a graceful shutdown.
        /// </summary>
        /// <param name="cancellationToken">Indicates that the shutdown process should no longer be graceful.</param>
        /// <returns>
        /// the task status
        /// </returns>
        public Task StopAsync(CancellationToken cancellationToken) => Task.CompletedTask;
    }
}