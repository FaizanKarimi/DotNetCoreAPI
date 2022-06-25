using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// UpdateUserProfileRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class UpdateUserProfileRequest : IBaseRequest
    {
        /// <summary>
        /// Gets or sets the profile identifier.
        /// </summary>
        /// <value>
        /// The profile identifier.
        /// </value>
        [Required]
        public int? ProfileId { get; set; }

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        /// <value>
        /// The email.
        /// </value>
        [Required]
        public string Email { get; set; }

        /// <summary>
        /// Gets or sets the country.
        /// </summary>
        /// <value>
        /// The country.
        /// </value>
        [Required]
        public string Country { get; set; }

        /// <summary>
        /// Gets or sets the football club.
        /// </summary>
        /// <value>
        /// The football club.
        /// </value>
        public string FootballClub { get; set; }

        /// <summary>
        /// Gets or sets the position.
        /// </summary>
        /// <value>
        /// The position.
        /// </value>
        public string Position { get; set; }

        /// <summary>
        /// Gets or sets the age.
        /// </summary>
        /// <value>
        /// The age.
        /// </value>
        public int? Age { get; set; }
    }
}