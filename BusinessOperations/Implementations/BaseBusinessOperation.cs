using System;
using AutoMapper;
using Infrastructure.Helpers;
using Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace BusinessOperations.Implementations
{
    /// <summary>
    /// BaseBusinessOperation class
    /// </summary>
    public abstract class BaseBusinessOperation
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
        /// The mapper
        /// </summary>
        protected readonly IMapper mapper;

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseBusinessOperation"/> class.
        /// </summary>
        protected BaseBusinessOperation()
        {
            if (this.logger == null)
            {
                this.logger = this._serviceProvider.GetRequiredService<ILogger>();
            }

            if (this.httpContextAccessor == null)
            {
                this.httpContextAccessor = ServiceHelpers.GetHttpContextAccessor();
            }

            if (this.mapper == null)
            {
                this.mapper = ServiceHelpers.GetMapper();
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseBusinessOperation"/> class.
        /// </summary>
        /// <param name="mapper">The mapper.</param>
        protected BaseBusinessOperation(IMapper mapper) : this()
        {
            this.mapper = mapper;
        }
    }
}