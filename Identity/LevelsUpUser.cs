using System;
using Microsoft.AspNetCore.Identity;

namespace Identity
{
    /// <summary>
    /// LevelsUpUser class
    /// </summary>
    /// <seealso cref="IdentityUser" />
    public class LevelsUpUser : IdentityUser
    {
        /// <summary>
        /// Gets or sets the date registration.
        /// </summary>
        /// <value>
        /// The date registration.
        /// </value>
        public DateTime DateRegistration { get; set; }
    }
}