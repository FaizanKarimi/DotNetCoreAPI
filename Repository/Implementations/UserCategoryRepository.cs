using System.Collections.Generic;
using System.Linq;
using DapperExtensions;
using Infrastructure.DatabaseModels;
using Repository.Interfaces;

namespace Repository.Implementations
{
    /// <summary>
    /// UserCategoryRepository class
    /// </summary>
    /// <seealso cref="BaseRepository{UserCategory}" />
    /// <seealso cref="IUserCategoryRepository" />
    public class UserCategoryRepository : BaseRepository<UserCategory>, IUserCategoryRepository
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// list of user categories
        /// </returns>
        public List<UserCategory> Get(string userId)
        {
            IPredicate predicate = Predicates.Field<UserCategory>(field => field.UserId, Operator.Eq, userId);
            return UnitOfWork.Connection.GetList<UserCategory>(predicate).ToList();
        }
    }
}