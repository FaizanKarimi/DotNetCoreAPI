using System.ComponentModel.DataAnnotations;
using Infrastructure.Configurations.ValidationServices;

namespace Infrastructure.Configurations
{
    /// <summary>
    /// JsonWebTokenSettings class
    /// </summary>
    public class JsonWebTokenSettings : ISettingValidationStartupFilter
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
        /// Gets or sets the issuer.
        /// </summary>
        /// <value>
        /// The issuer.
        /// </value>
        [Required]
        public string Issuer { get; set; }

        /// <summary>
        /// Gets or sets the expire time.
        /// </summary>
        /// <value>
        /// The expire time.
        /// </value>
        [Required]
        public int ExpireTime { get; set; }

        /// <summary>
        /// Validates this instance.
        /// </summary>
        public void Validate()
        {
            Validator.ValidateObject(this, new ValidationContext(this), validateAllProperties: true);
        }
    }
}