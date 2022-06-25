using System.Collections.Generic;
using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// IUserSubCategoryRepository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{UserSubCategory}" />
    public interface IUserSubCategoryRepository : IBaseRepository<UserSubCategory>
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        List<UserSubCategory> Get(string userId);

        /// <summary>
        /// Gets the user sub categories.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="subCategoryIds">The sub category ids.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        List<UserSubCategory> GetUserSubCategories(string userId, int[] subCategoryIds);
    }
}