namespace Components.Interfaces
{
    /// <summary>
    /// IEmailService interface
    /// </summary>
    /// <seealso cref="IComponent" />
    public interface IEmailService : IComponent
    {
        /// <summary>
        /// Sends the account verification email.
        /// </summary>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="username">The username.</param>
        /// <param name="verificationCode">The verification code.</param>
        /// <returns>
        /// the tasks
        /// </returns>
        void SendAccountVerificationEmail(string emailAddress, string username, string verificationCode);
    }
}