using LevelsUpAPI.Filters;
using Microsoft.AspNetCore.Mvc;

namespace LevelsUpAPI.Attributes
{
    /// <summary>
    /// AuthorizeAdminAttribute class
    /// </summary>
    /// <seealso cref="TypeFilterAttribute" />
    public class AuthorizeAdminAttribute : TypeFilterAttribute
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AuthorizeAdminAttribute" /> class.
        /// </summary>
        public AuthorizeAdminAttribute() : base(typeof(AuthorizeAdminFilter))
        {

        }
    }
}