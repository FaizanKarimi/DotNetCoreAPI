using System.Collections.Generic;
using Infrastructure.DatabaseModels;

namespace Services.Interfaces
{
    /// <summary>
    /// IUserSubCategoryService
    /// </summary>
    /// <seealso cref="IService" />
    public interface IUserSubCategoryService : IService
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        List<UserSubCategory> Get(string userId);
    }
}