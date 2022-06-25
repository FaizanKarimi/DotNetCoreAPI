using System;
using Infrastructure.Helpers;
using Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace Components.Implementation
{
    /// <summary>
    /// BaseComponent class
    /// </summary>
    public abstract class BaseComponent
    {
        /// <summary>
        /// Gets the service provider.
        /// </summary>
        /// <value>
        /// The service provider.
        /// </value>
        private IServiceProvider _serviceProvider
        {
            get
            {
                return ServiceHelpers.GetServiceProvider();
            }
        }

        /// <summary>
        /// The logger
        /// </summary>
        protected readonly ILogger logger;

        /// <summary>
        /// The HTTP context accessor
        /// </summary>
        protected readonly IHttpContextAccessor httpContextAccessor;

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseComponent"/> class.
        /// </summary>
        protected BaseComponent()
        {
            if (this.logger == null)
            {
                this.logger = this._serviceProvider.GetRequiredService<ILogger>();
            }

            if (this.httpContextAccessor == null)
            {
                this.httpContextAccessor = ServiceHelpers.GetHttpContextAccessor();
            }
        }
    }
}