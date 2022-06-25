using System.ComponentModel.DataAnnotations;

namespace Infrastructure.APIRequestModels
{
    /// <summary>
    /// RefreshTokenRequest class
    /// </summary>
    /// <seealso cref="IBaseRequest" />
    public class RefreshTokenRequest : IBaseRequest
    {
        /// <summary>
        /// Gets or sets the authentication token.
        /// </summary>
        /// <value>
        /// The authentication token.
        /// </value>
        [Required]
        public string AuthenticationToken { get; set; }

        /// <summary>
        /// Gets or sets the refresh token.
        /// </summary>
        /// <value>
        /// The refresh token.
        /// </value>
        [Required]
        public string RefreshToken { get; set; }
    }
}