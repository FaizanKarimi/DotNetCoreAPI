using LevelsUpAPI.Filters;
using Microsoft.AspNetCore.Mvc;

namespace LevelsUpAPI.Attributes
{
    /// <summary>
    /// AuthorizeUserAttribute class
    /// </summary>
    /// <seealso cref="TypeFilterAttribute" />
    public class AuthorizeUserAttribute : TypeFilterAttribute
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AuthorizeUserAttribute" /> class.
        /// </summary>
        public AuthorizeUserAttribute() : base(typeof(AuthorizeUserFilter))
        {

        }
    }
}