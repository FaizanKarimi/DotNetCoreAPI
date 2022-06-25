using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// ChangePasswordRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class ChangePasswordRequest : IBaseRequest
    {
        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        /// <value>
        /// The email.
        /// </value>
        [Required]
        public string Email { get; set; }

        /// <summary>
        /// Creates new password.
        /// </summary>
        /// <value>
        /// The new password.
        /// </value>
        [Required]
        public string NewPassword { get; set; }
    }
}