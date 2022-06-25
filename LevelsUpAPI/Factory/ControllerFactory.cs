using System;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Controllers;
using Microsoft.Extensions.DependencyInjection;

namespace LevelsUpAPI.Factory
{
    /// <summary>
    /// ControllerFactory class
    /// </summary>
    /// <seealso cref="IControllerFactory" />
    public class ControllerFactory : IControllerFactory
    {
        /// <summary>
        /// Creates a new controller for the specified <paramref name="context" />.
        /// </summary>
        /// <param name="context"><see cref="T:Microsoft.AspNetCore.Mvc.ControllerContext" /> for the action to execute.</param>
        /// <returns>
        /// The controller.
        /// </returns>
        public object CreateController(ControllerContext context)
        {
            if (context == null)
            {
                throw new LevelsUpException(ErrorMessages.CONTROLLER_FACTORY_CONTEXT_NULL, ErrorCodes.BadRequest);
            }

            Type controllerType = context.ActionDescriptor.ControllerTypeInfo.AsType();

            return context.HttpContext.RequestServices.GetRequiredService(controllerType);
        }

        /// <summary>
        /// Releases a controller instance.
        /// </summary>
        /// <param name="context"><see cref="T:Microsoft.AspNetCore.Mvc.ControllerContext" /> for the executing action.</param>
        /// <param name="controller">The controller.</param>
        public void ReleaseController(ControllerContext context, object controller)
        {
            if (controller is IDisposable)
            {
                (controller as IDisposable).Dispose();
            }
        }
    }
}