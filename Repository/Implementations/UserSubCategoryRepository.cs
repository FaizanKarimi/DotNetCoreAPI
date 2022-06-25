using System.Collections.Generic;
using System.Linq;
using DapperExtensions;
using Infrastructure.DatabaseModels;
using Repository.Interfaces;

namespace Repository.Implementations
{
    /// <summary>
    /// UserSubCategoryRepository class
    /// </summary>
    /// <seealso cref="BaseRepository{UserSubCategory}" />
    /// <seealso cref="IUserSubCategoryRepository" />
    public class UserSubCategoryRepository : BaseRepository<UserSubCategory>, IUserSubCategoryRepository
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        public List<UserSubCategory> Get(string userId)
        {
            IPredicate predicate = Predicates.Field<UserSubCategory>(field => field.UserId, Operator.Eq, userId);
            return UnitOfWork.Connection.GetList<UserSubCategory>(predicate).ToList();
        }

        /// <summary>
        /// Gets the user sub categories.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="subCategoryIds">The sub category ids.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        public List<UserSubCategory> GetUserSubCategories(string userId, int[] subCategoryIds)
        {
            IPredicateGroup predicateGroup = new PredicateGroup() { Operator = GroupOperator.And, Predicates = new List<IPredicate>() };
            predicateGroup.Predicates.Add(Predicates.Field<UserSubCategory>(field => field.UserId, Operator.Eq, userId));
            predicateGroup.Predicates.Add(Predicates.Field<UserSubCategory>(field => field.SubCategoryId, Operator.Eq, subCategoryIds));
            return UnitOfWork.Connection.GetList<UserSubCategory>(predicateGroup).ToList();
        }
    }
}