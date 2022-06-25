using Infrastructure.DatabaseModels;

namespace Services.Interfaces
{
    /// <summary>
    /// IUserService interface
    /// </summary>
    /// <seealso cref="IService" />
    public interface IUserService : IService
    {
        /// <summary>
        /// Verifies the account.
        /// </summary>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <param name="verificationCode">The verification code.</param>
        /// <returns>true or false</returns>
        bool VerifyAccount(string mobileNumber, string verificationCode);

        /// <summary>
        /// Registers the user.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <param name="device">The device.</param>
        /// <param name="language">The language.</param>
        /// <returns>true or false</returns>
        bool RegisterUser(UserProfile userProfile, Devices device, string language);

        /// <summary>
        /// Gets the refresh token.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// the refresh token object
        /// </returns>
        RefreshToken GetRefreshToken(string userId, string refreshToken);

        /// <summary>
        /// Adds the refresh token.
        /// </summary>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool AddRefreshToken(RefreshToken refreshToken);

        /// <summary>
        /// Updates the refresh token.
        /// </summary>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool UpdateRefreshToken(RefreshToken refreshToken);
    }
}