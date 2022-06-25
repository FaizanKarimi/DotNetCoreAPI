using System.Threading.Tasks;
using Infrastructure.APIRequestModels;
using Infrastructure.APIResponseModels;
using Infrastructure.Enums;

namespace BusinessOperations.Interfaces
{
    /// <summary>
    /// IBOUser interface
    /// </summary>
    /// <seealso cref="IBusinessOperation" />
    public interface IBOUser : IBusinessOperation
    {
        /// <summary>
        /// Registers the user.
        /// </summary>
        /// <param name="registerRequest">The register request.</param>
        /// <param name="userRole">The user role.</param>
        /// <returns>
        /// true or false
        /// </returns>
        Task<bool> RegisterUserAsync(RegisterRequest registerRequest, UserRoles userRole);

        /// <summary>
        /// Verifies the account.
        /// </summary>
        /// <param name="verifyAccountRequest">The verify account request.</param>
        /// <returns>
        /// true or false
        /// </returns>
        Task<bool> VerifyAccount(VerifyAccountRequest verifyAccountRequest);

        /// <summary>
        /// Gets the user profile.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the user profile information
        /// </returns>
        UserProfileInformation GetUserProfile(string userId);

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="updateUserProfileRequest">The update user profile request.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool UpdateProfile(UpdateUserProfileRequest updateUserProfileRequest);

        /// <summary>
        /// Changes the password asynchronous.
        /// </summary>
        /// <param name="changePasswordRequest">The change password request.</param>
        /// <returns>
        /// true or false
        /// </returns>
        Task<bool> ChangePasswordAsync(ChangePasswordRequest changePasswordRequest);

        /// <summary>
        /// Logins the specified login request.
        /// </summary>
        /// <param name="loginRequest">The login request.</param>
        /// <returns>
        /// the login response
        /// </returns>
        Task<TokenResponse> Login(LoginRequest loginRequest);

        /// <summary>
        /// Generates the refresh token.
        /// </summary>
        /// <param name="refreshTokenRequest">The refresh token request.</param>
        /// <returns>
        /// the refresh token response
        /// </returns>
        Task<TokenResponse> GenerateRefreshToken(RefreshTokenRequest refreshTokenRequest);

        /// <summary>
        /// Logouts this instance.
        /// </summary>
        /// <returns>
        /// true or false
        /// </returns>
        Task<bool> Logout();
    }
}