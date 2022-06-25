using System.Linq;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Mvc.Filters;

namespace LevelsUpAPI.Filters
{
    /// <summary>
    /// ModelValidationFilter class
    /// </summary>
    /// <seealso cref="IActionFilter" />
    public class ModelValidationFilter : IActionFilter
    {
        /// <summary>
        /// Called before the action executes, after model binding is complete.
        /// </summary>
        /// <param name="context">The <see cref="T:Microsoft.AspNetCore.Mvc.Filters.ActionExecutingContext" />.</param>
        public void OnActionExecuting(ActionExecutingContext context)
        {
            if (!context.ModelState.IsValid)
            {
                string errorMessage = this.GetErrorMessage(context);
                context.Result = ActionResultHelpers.GetBadRequestJsonResult(errorMessage);
            }
        }

        /// <summary>
        /// Called after the action executes, before the action result.
        /// </summary>
        /// <param name="context">The <see cref="T:Microsoft.AspNetCore.Mvc.Filters.ActionExecutedContext" />.</param>
        public void OnActionExecuted(ActionExecutedContext context)
        {
            // Do nothing on this for now at the moment
        }

        /// <summary>
        /// Gets the error message.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <returns>
        /// the error message
        /// </returns>
        private string GetErrorMessage(ActionExecutingContext context)
        {
            return context.ModelState.Values
                                     .SelectMany(x => x.Errors
                                     .Select(e => e.ErrorMessage))
                                     .FirstOrDefault();
        }
    }
}