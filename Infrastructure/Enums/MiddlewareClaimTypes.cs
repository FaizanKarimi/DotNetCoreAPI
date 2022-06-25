using System.ComponentModel;

namespace Infrastructure.Enums
{
    /// <summary>
    /// MiddlewareClaimTypes enumeration
    /// </summary>
    public enum MiddlewareClaimTypes
    {
        /// <summary>
        /// The name
        /// </summary>
        [Description("unique_name")]
        Name,

        /// <summary>
        /// The email
        /// </summary>
        [Description("email")]
        Email,

        /// <summary>
        /// The user identifier
        /// </summary>
        [Description("nameid")]
        UserId,

        /// <summary>
        /// The role
        /// </summary>
        [Description("role")]
        Role
    }
}