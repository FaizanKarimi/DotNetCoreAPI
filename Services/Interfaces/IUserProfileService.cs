using Infrastructure.DatabaseModels;

namespace Services.Interfaces
{
    public interface IUserProfileService : IService
    {
        /// <summary>
        /// Adds the user profile.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <param name="device">The device.</param>
        /// <param name="language">The language.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool AddUserProfile(UserProfile userProfile, Devices device, string language);

        /// <summary>
        /// Gets the user profile.
        /// </summary>
        /// <param name="profileId">The profile identifier.</param>
        /// <param name="userId">The user identifier.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <returns>
        /// the user profile
        /// </returns>
        UserProfile GetUserProfile(int? profileId, string userId = null, string mobileNumber = null);

        /// <summary>
        /// Updates the user profile.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool UpdateUserProfile(UserProfile userProfile);
    }
}