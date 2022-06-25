using System;

namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// AspNetUsers class
    /// </summary>
    public class AspNetUsers: IDatabaseEntity
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public string Id { get; set; }

        /// <summary>
        /// Gets or sets the name of the user.
        /// </summary>
        /// <value>
        /// The name of the user.
        /// </value>
        public string UserName { get; set; }

        /// <summary>
        /// Gets or sets the name of the normalized user.
        /// </summary>
        /// <value>
        /// The name of the normalized user.
        /// </value>
        public string NormalizedUserName { get; set; }

        /// <summary>
        /// Gets or sets the email.
        /// </summary>
        /// <value>
        /// The email.
        /// </value>
        public string Email { get; set; }

        /// <summary>
        /// Gets or sets the normalized email.
        /// </summary>
        /// <value>
        /// The normalized email.
        /// </value>
        public string NormalizedEmail { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [email confirmed].
        /// </summary>
        /// <value>
        ///   <c>true</c> if [email confirmed]; otherwise, <c>false</c>.
        /// </value>
        public bool EmailConfirmed { get; set; }

        /// <summary>
        /// Gets or sets the password hash.
        /// </summary>
        /// <value>
        /// The password hash.
        /// </value>
        public string PasswordHash { get; set; }

        /// <summary>
        /// Gets or sets the security stamp.
        /// </summary>
        /// <value>
        /// The security stamp.
        /// </value>
        public string SecurityStamp { get; set; }

        /// <summary>
        /// Gets or sets the concurrency stamp.
        /// </summary>
        /// <value>
        /// The concurrency stamp.
        /// </value>
        public string ConcurrencyStamp { get; set; }

        /// <summary>
        /// Gets or sets the phone number.
        /// </summary>
        /// <value>
        /// The phone number.
        /// </value>
        public string PhoneNumber { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [phone number confirmed].
        /// </summary>
        /// <value>
        ///   <c>true</c> if [phone number confirmed]; otherwise, <c>false</c>.
        /// </value>
        public bool PhoneNumberConfirmed { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [two factor enabled].
        /// </summary>
        /// <value>
        ///   <c>true</c> if [two factor enabled]; otherwise, <c>false</c>.
        /// </value>
        public bool TwoFactorEnabled { get; set; }

        /// <summary>
        /// Gets or sets the lockout end.
        /// </summary>
        /// <value>
        /// The lockout end.
        /// </value>
        public object LockoutEnd { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether [lockout enabled].
        /// </summary>
        /// <value>
        ///   <c>true</c> if [lockout enabled]; otherwise, <c>false</c>.
        /// </value>
        public bool LockoutEnabled { get; set; }

        /// <summary>
        /// Gets or sets the access failed count.
        /// </summary>
        /// <value>
        /// The access failed count.
        /// </value>
        public int AccessFailedCount { get; set; }

        /// <summary>
        /// Gets or sets the date registration.
        /// </summary>
        /// <value>
        /// The date registration.
        /// </value>
        public DateTime DateRegistration { get; set; }
    }
}