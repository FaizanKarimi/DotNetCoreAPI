using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// VerifyAccountRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class VerifyAccountRequest : IBaseRequest
    {
        /// <summary>
        /// Gets or sets the mobile number.
        /// </summary>
        /// <value>
        /// The mobile number.
        /// </value>
        [Required]
        public string MobileNumber { get; set; }

        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        /// <value>
        /// The email.
        /// </value>
        [Required]
        public string Email { get; set; }

        /// <summary>
        /// Gets or sets the verification code.
        /// </summary>
        /// <value>
        /// The verification code.
        /// </value>
        [Required]
        public string VerificationCode { get; set; }
    }
}