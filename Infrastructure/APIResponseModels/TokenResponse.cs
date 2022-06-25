using Infrastructure.Common;

namespace Infrastructure.APIResponseModels
{
    /// <summary>
    /// TokenResponse class
    /// </summary>
    /// <seealso cref="IBaseResponse" />
    public class TokenResponse : IBaseResponse
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TokenResponse"/> class.
        /// </summary>
        public TokenResponse()
        {
            this.token_type = Constants.TokenType;
        }

        /// <summary>
        /// Gets or sets the authentication token.
        /// </summary>
        /// <value>
        /// The authentication token.
        /// </value>
        public string auth_token { get; set; }

        /// <summary>
        /// Gets or sets the refresh token.
        /// </summary>
        /// <value>
        /// The refresh token.
        /// </value>
        public string refresh_token { get; set; }

        /// <summary>
        /// Gets or sets the type of the token.
        /// </summary>
        /// <value>
        /// The type of the token.
        /// </value>
        public string token_type { get; set; }

        /// <summary>
        /// Gets or sets the issue time.
        /// </summary>
        /// <value>
        /// The issue time.
        /// </value>
        public string issue_time { get; set; }

        /// <summary>
        /// Gets or sets the expiration time.
        /// </summary>
        /// <value>
        /// The expiration time.
        /// </value>
        public string expiration_time { get; set; }

        /// <summary>
        /// Gets or sets the role.
        /// </summary>
        /// <value>
        /// The role.
        /// </value>
        public string role { get; set; }
    }
}