using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// AddRoleRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class AddRoleRequest : IBaseRequest
    {
        /// <summary>
        /// Gets or sets the name of the role.
        /// </summary>
        /// <value>
        /// The name of the role.
        /// </value>
        [Required]
        public string RoleName { get; set; }
    }
}