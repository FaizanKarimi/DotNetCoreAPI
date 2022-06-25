using System;
using AutoMapper;
using Infrastructure.APIResponseModels;
using Infrastructure.Configurations;
using Infrastructure.Helpers;
using Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;

namespace LevelsUpAPI.Controllers
{
    /// <summary>
    /// BaseController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    public class BaseController : ControllerBase, IDisposable
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
        /// The application settings
        /// </summary>
        protected readonly AppSettings appSettings;

        /// <summary>
        /// The mapper
        /// </summary>
        protected readonly IMapper mapper;

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseController" /> class.
        /// </summary>
        public BaseController()
        {
            if (this.logger == null)
            {
                this.logger = this._serviceProvider.GetRequiredService<ILogger>();
            }

            if (this.appSettings == null)
            {
                this.appSettings = SettingsHelper.GetAppSettings();
            }

            if (this.mapper == null)
            {
                this.mapper = ServiceHelpers.GetMapper();
            }

            if (this.httpContextAccessor == null)
            {
                this.httpContextAccessor = ServiceHelpers.GetHttpContextAccessor();
            }
        }

        /// <summary>
        /// Oks the specified value.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the OK object result
        /// </returns>
        public OkObjectResult OK<T>(T value)
        {
            return base.Ok(new BasicResponse()
            {
                Data = value
            });
        }

        /// <summary>
        /// Oks this instance.
        /// </summary>
        /// <returns>
        /// the OK result
        /// </returns>
        public OkObjectResult OK()
        {
            return base.Ok(new BasicResponse());
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public virtual void Dispose()
        {
            // Do nothing 
        }
    }
}