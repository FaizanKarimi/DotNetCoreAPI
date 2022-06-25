using System;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.Helpers;
using Logging;
using Microsoft.Extensions.DependencyInjection;
using PostSharp.Aspects;

namespace BusinessOperations.PostSharp
{
    /// <summary>
    /// ProfilerAspect class
    /// </summary>
    /// <seealso cref="OnExceptionAspect" />
    [Serializable]
    [AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Method)]
    public class ProfilerAspect : OnExceptionAspect
    {
        /// <summary>
        /// Method executed <b>after</b> the body of methods to which this aspect is applied,
        /// in case that the method failed with an exception (i.e., in a <c>catch</c> block).
        /// </summary>
        /// <param name="args">Advice arguments.</param>
        public override void OnException(MethodExecutionArgs args)
        {
            IServiceProvider serviceProvider = ServiceHelpers.GetServiceProvider();
            ILogger logger = serviceProvider.GetRequiredService<ILogger>();

            Type type = args.Exception.GetType();
            logger.Debug(args.Exception.Message);
            if (type == typeof(LevelsUpException))
            {
                throw args.Exception;
            }
            else
            {
                throw new LevelsUpException(ErrorMessages.INTERNAL_SERVER_ERROR, ErrorCodes.InternalServerError);
            }
        }
    }
}