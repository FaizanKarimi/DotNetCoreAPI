using System.Security.Claims;
using Microsoft.AspNetCore.Http;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// HttpContextExtensionMethods class
    /// </summary>
    public static class HttpContextExtensionMethods
    {
        /// <summary>
        /// Get userId from the claim.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <returns>
        /// the userId
        /// </returns>
        public static string GetCurrentUserId(this IHttpContextAccessor httpContextAccessor)
        {
            string userId = string.Empty;

            HttpContext httpContext = httpContextAccessor.HttpContext;

            if (httpContext != null)
            {
                bool hasUserId = httpContext.User.HasClaim(x => x.Type == ClaimTypes.NameIdentifier);

                if (hasUserId)
                {
                    userId = httpContext.User.FindFirst(x => x.Type == ClaimTypes.NameIdentifier).Value;
                }
            }

            return userId;
        }

        /// <summary>
        /// Get username from the claim.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <returns>
        /// the username
        /// </returns>
        public static string GetCurrentUserName(this IHttpContextAccessor httpContextAccessor)
        {
            string userName = string.Empty;

            HttpContext httpContext = httpContextAccessor.HttpContext;

            if (httpContext != null)
            {
                bool hasUserName = httpContext.User.HasClaim(x => x.Type == ClaimTypes.Name);

                if (hasUserName)
                {
                    userName = httpContext.User.FindFirst(x => x.Type == ClaimTypes.Name).Value;
                }
            }

            return userName;
        }

        /// <summary>
        /// Get user email from the claim.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <returns>
        /// the user email
        /// </returns>
        public static string GetCurrentUserEmail(this IHttpContextAccessor httpContextAccessor)
        {
            string userEmail = string.Empty;

            HttpContext httpContext = httpContextAccessor.HttpContext;

            if (httpContext != null)
            {
                bool hasUserEmail = httpContext.User.HasClaim(x => x.Type == ClaimTypes.Email);

                if (hasUserEmail)
                {
                    userEmail = httpContext.User.FindFirst(x => x.Type == ClaimTypes.Email).Value;
                }
            }

            return userEmail;
        }

        /// <summary>
        /// Get user role from the claim.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <returns>
        /// the user role
        /// </returns>
        public static string GetCurrentUserRole(this IHttpContextAccessor httpContextAccessor)
        {
            string userRole = string.Empty;

            HttpContext httpContext = httpContextAccessor.HttpContext;

            if (httpContext != null)
            {
                bool hasUserRole = httpContext.User.HasClaim(x => x.Type == ClaimTypes.Role);

                if (hasUserRole)
                {
                    userRole = httpContext.User.FindFirst(x => x.Type == ClaimTypes.Role).Value;
                }
            }

            return userRole;
        }

        /// <summary>
        /// Gets the current user mobile number.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <returns>
        /// the user mobile number
        /// </returns>
        public static string GetCurrentUserMobileNumber(this IHttpContextAccessor httpContextAccessor)
        {
            string userMobileNumber = string.Empty;

            HttpContext httpContext = httpContextAccessor.HttpContext;

            if (httpContext != null)
            {
                bool hasUserMobileNumber = httpContext.User.HasClaim(x => x.Type == ClaimTypes.MobilePhone);

                if (hasUserMobileNumber)
                {
                    userMobileNumber = httpContext.User.FindFirst(x => x.Type == ClaimTypes.MobilePhone).Value ?? null;
                }
            }

            return userMobileNumber;
        }
    }
}