using System.Linq;
using DapperExtensions;
using Infrastructure.DatabaseModels;
using Repository.Interfaces;

namespace Repository.Implementations
{
    /// <summary>
    /// UserProfileRepository class
    /// </summary>
    /// <seealso cref="BaseRepository{UserProfile}" />
    /// <seealso cref="IUserProfileRepository" />
    public class UserProfileRepository : BaseRepository<UserProfile>, IUserProfileRepository
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <returns>
        /// the user profile
        /// </returns>
        public UserProfile Get(int? profileId, string userId = null, string mobileNumber = null)
        {
            IPredicate predicate;
            if (profileId != null && profileId != 0)
            {
                predicate = Predicates.Field<UserProfile>(field => field.Id, Operator.Eq, profileId);
            }
            else if (!string.IsNullOrEmpty(userId))
            {
                predicate = Predicates.Field<UserProfile>(field => field.UserId, Operator.Eq, userId);
            }
            else
            {
                predicate = Predicates.Field<UserProfile>(field => field.MobileNumber, Operator.Eq, mobileNumber);
            }

            return UnitOfWork.Connection.GetList<UserProfile>(predicate).FirstOrDefault();
        }
    }
}