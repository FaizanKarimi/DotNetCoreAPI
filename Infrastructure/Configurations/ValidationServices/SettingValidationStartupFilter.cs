using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;

namespace Infrastructure.Configurations.ValidationServices
{
    /// <summary>
    /// SettingValidationStartupFilter class
    /// </summary>
    /// <seealso cref="IStartupFilter" />
    public class SettingValidationStartupFilter : IStartupFilter
    {
        /// <summary>
        /// The setting validation startup filters
        /// </summary>
        private readonly IEnumerable<ISettingValidationStartupFilter> _settingValidationStartupFilters;

        /// <summary>
        /// Initializes a new instance of the <see cref="SettingValidationStartupFilter"/> class.
        /// </summary>
        /// <param name="settingValidationStartupFilters">The setting validation startup filters.</param>
        public SettingValidationStartupFilter(IEnumerable<ISettingValidationStartupFilter> settingValidationStartupFilters)
        {
            this._settingValidationStartupFilters = settingValidationStartupFilters;
        }

        /// <summary>
        /// Configures the specified next.
        /// </summary>
        /// <param name="next">The next.</param>
        /// <returns>
        /// the action of IApplicationBuilder
        /// </returns>
        public Action<IApplicationBuilder> Configure(Action<IApplicationBuilder> next)
        {
            foreach (ISettingValidationStartupFilter settingValidationStartupFilter in this._settingValidationStartupFilters)
            {
                settingValidationStartupFilter.Validate();
            }

            return next;
        }
    }
}