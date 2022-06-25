using System.ComponentModel.DataAnnotations;
using Infrastructure.Configurations.ValidationServices;

namespace Infrastructure.Configurations
{
    /// <summary>
    /// AppSettings class
    /// </summary>
    public class AppSettings : ISettingValidationStartupFilter
    {
        /// <summary>
        /// Gets or sets the linux ip address.
        /// </summary>
        /// <value>
        /// The linux ip address.
        /// </value>
        public string LinuxIpAddress { get; set; }

        /// <summary>
        /// Gets or sets the support email.
        /// </summary>
        /// <value>
        /// The support email.
        /// </value>
        [Required]
        public string SupportEmail { get; set; }

        /// <summary>
        /// Gets or sets the support username.
        /// </summary>
        /// <value>
        /// The support username.
        /// </value>
        [Required]
        public string SupportUsername { get; set; }

        /// <summary>
        /// Gets or sets the admin username.
        /// </summary>
        /// <value>
        /// The admin username.
        /// </value>
        [Required]
        public string AdminUsername { get; set; }

        /// <summary>
        /// Gets or sets the admin password.
        /// </summary>
        /// <value>
        /// The admin password.
        /// </value>
        [Required]
        public string AdminPassword { get; set; }

        /// <summary>
        /// Gets or sets the admin mobile number.
        /// </summary>
        /// <value>
        /// The admin mobile number.
        /// </value>
        [Required]
        public string AdminMobileNumber { get; set; }

        /// <summary>
        /// Gets or sets the admin country code.
        /// </summary>
        /// <value>
        /// The admin country code.
        /// </value>
        [Required]
        public string AdminCountryCode { get; set; }

        /// <summary>
        /// Gets or sets the admin country.
        /// </summary>
        /// <value>
        /// The admin country.
        /// </value>
        [Required]
        public string AdminCountry { get; set; }

        /// <summary>
        /// Gets or sets the name of the admin.
        /// </summary>
        /// <value>
        /// The name of the admin.
        /// </value>
        [Required]
        public string AdminName { get; set; }

        /// <summary>
        /// Validates this instance.
        /// </summary>
        public void Validate()
        {
            Validator.ValidateObject(this, new ValidationContext(this), validateAllProperties: true);
        }
    }
}