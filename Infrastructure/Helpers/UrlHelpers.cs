using System;
using System.Linq.Expressions;
using Infrastructure.Common;
using Microsoft.AspNetCore.Mvc;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// UrlHelpers class
    /// </summary>
    public static class UrlHelpers
    {
        /// <summary>
        /// Actions the specified URL helper.
        /// </summary>
        /// <typeparam name="TController">The type of the controller.</typeparam>
        /// <param name="actionExpression">The action expression.</param>
        /// <returns>
        /// Action name
        /// </returns>
        public static string ActionName<TController>(Expression<Func<TController, object>> actionExpression) where TController : ControllerBase
        {
            string actionName = actionExpression.GetActionName();

            return actionName;
        }

        /// <summary>
        /// Gets the name of the controller.
        /// </summary>
        /// <typeparam name="TController">The type of the controller.</typeparam>
        /// <returns>
        /// Controller name
        /// </returns>
        public static string GetControllerName<TController>() where TController : ControllerBase
        {
            return typeof(TController).Name.Replace(Constants.Controller, string.Empty);
        }

        /// <summary>
        /// Gets the name of the action.
        /// </summary>
        /// <param name="actionExpression">The action expression.</param>
        /// <returns>
        /// Action namec
        /// </returns>
        public static string GetActionName(this LambdaExpression actionExpression)
        {
            return ((MethodCallExpression)actionExpression.Body).Method.Name;
        }
    }
}