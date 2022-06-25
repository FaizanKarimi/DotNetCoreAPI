using Hangfire.Dashboard;

#if !DEBUG
using Microsoft.AspNetCore.Http;
#endif

namespace LevelsUpAPI.Filters
{
    /// <summary>
    /// HangfireAuthorizationFilter class
    /// </summary>
    /// <seealso cref="IDashboardAuthorizationFilter" />
    public class HangfireAuthorizationFilter : IDashboardAuthorizationFilter
    {
        /// <summary>
        /// Authorizes the specified context.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool Authorize(DashboardContext context)
        {
#if !DEBUG
            HttpContext httpContext = context.GetHttpContext();
            if (httpContext.User != null && httpContext.User.Identity.IsAuthenticated)
            {
                return true;
            }

            return false; 
#else
            return true;
#endif
        }
    }
}