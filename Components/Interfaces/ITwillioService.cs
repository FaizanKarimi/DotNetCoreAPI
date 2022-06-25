namespace Components.Interfaces
{
    /// <summary>
    /// ITwillioService interface
    /// </summary>
    public interface ITwillioService : IComponent
    {
        /// <summary>
        /// Sends the account verification message.
        /// </summary>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <param name="verificationCode">The verification code.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool SendAccountVerificationMessage(string mobileNumber, string verificationCode);
    }
}