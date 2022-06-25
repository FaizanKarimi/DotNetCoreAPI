using System.ComponentModel.DataAnnotations;
using Infrastructure.Configurations.ValidationServices;

namespace Infrastructure.Configurations
{
    /// <summary>
    /// TwillioSettings class
    /// </summary>
    public class TwillioSettings : ISettingValidationStartupFilter
    {
        /// <summary>
        /// Gets or sets the name of the user.
        /// </summary>
        /// <value>
        /// The name of the user.
        /// </value>
        [Required]
        public string UserName { get; set; }

        /// <summary>
        /// Gets or sets the authentication token.
        /// </summary>
        /// <value>
        /// The authentication token.
        /// </value>
        [Required]
        public string AuthToken { get; set; }

        /// <summary>
        /// Gets or sets the phone number.
        /// </summary>
        /// <value>
        /// The phone number.
        /// </value>
        [Required]
        public string PhoneNumber { get; set; }

        /// <summary>
        /// Validates this instance.
        /// </summary>
        public void Validate()
        {
            Validator.ValidateObject(this, new ValidationContext(this), validateAllProperties: true);
        }
    }
}