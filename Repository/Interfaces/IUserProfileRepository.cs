using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// IUserProfileRepository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{UserProfile}" />
    public interface IUserProfileRepository : IBaseRepository<UserProfile>
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="profileId">The profile identifier.</param>
        /// <param name="userId">The user identifier.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <returns>
        /// the user profile
        /// </returns>
        UserProfile Get(int? profileId, string userId = null, string mobileNumber = null);
    }
}