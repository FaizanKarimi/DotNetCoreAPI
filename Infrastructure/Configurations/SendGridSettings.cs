using System.ComponentModel.DataAnnotations;
using Infrastructure.Configurations.ValidationServices;

namespace Infrastructure.Configurations
{
    /// <summary>
    /// SendGridSettings class
    /// </summary>
    public class SendGridSettings : ISettingValidationStartupFilter
    {
        /// <summary>
        /// Gets or sets the key.
        /// </summary>
        /// <value>
        /// The key.
        /// </value>
        [Required]
        public string Key { get; set; }

        /// <summary>
        /// Validates this instance.
        /// </summary>
        public void Validate()
        {
            Validator.ValidateObject(this, new ValidationContext(this), validateAllProperties: true);
        }
    }
}