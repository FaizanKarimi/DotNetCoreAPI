using System;

namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// RefreshToken class
    /// </summary>
    /// <seealso cref="IDatabaseEntity" />
    public class RefreshToken : IDatabaseEntity
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public int Id { get; set; }

        /// <summary>
        /// Gets or sets the user identifier.
        /// </summary>
        /// <value>
        /// The user identifier.
        /// </value>
        public string UserId { get; set; }

        /// <summary>
        /// Gets or sets the token.
        /// </summary>
        /// <value>
        /// The token.
        /// </value>
        public string Token { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is used.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this instance is used; otherwise, <c>false</c>.
        /// </value>
        public bool IsUsed { get; set; } 

        /// <summary>
        /// Gets or sets a value indicating whether this instance is revoked.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this instance is revoked; otherwise, <c>false</c>.
        /// </value>
        public bool IsRevoked { get; set; } 

        /// <summary>
        /// Gets or sets the created on.
        /// </summary>
        /// <value>
        /// The created on.
        /// </value>
        public DateTime CreatedOn { get; set; }

        /// <summary>
        /// Gets or sets the expired on.
        /// </summary>
        /// <value>
        /// The expired on.
        /// </value>
        public DateTime? ExpiredOn { get; set; }
    }
}