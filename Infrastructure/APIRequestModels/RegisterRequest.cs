using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// RegisterRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class RegisterRequest : IBaseRequest
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
        /// Gets or sets the country code.
        /// </summary>
        /// <value>
        /// The country code.
        /// </value>
        [Required]
        public string CountryCode { get; set; }

        /// <summary>
        /// Gets or sets the country.
        /// </summary>
        /// <value>
        /// The country.
        /// </value>
        [Required]
        public string Country { get; set; }

        /// <summary>
        /// Gets or sets the device token.
        /// </summary>
        /// <value>
        /// The device token.
        /// </value>
        public string DeviceToken { get; set; }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the registration token.
        /// </summary>
        /// <value>
        /// The registration token.
        /// </value>
        public string RegistrationToken { get; set; }

        /// <summary>
        /// Gets or sets the password.
        /// </summary>
        /// <value>
        /// The password.
        /// </value>
        [Required]
        public string Password { get; set; }

        /// <summary>
        /// Gets or sets the language.
        /// </summary>
        /// <value>
        /// The language.
        /// </value>
        public string Language { get; set; }

        /// <summary>
        /// Gets or sets the device type identifier.
        /// </summary>
        /// <value>
        /// The device type identifier.
        /// </value>
        [Required]
        public int? DeviceTypeId { get; set; }
    }
}