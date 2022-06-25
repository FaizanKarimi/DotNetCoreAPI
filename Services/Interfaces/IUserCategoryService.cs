using System.Collections.Generic;
using Infrastructure.DatabaseModels;

namespace Services.Interfaces
{
    /// <summary>
    /// IUserCategoryService interface
    /// </summary>
    /// <seealso cref="IService" />
    public interface IUserCategoryService : IService
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>list of user categories</returns>
        List<UserCategory> Get(string userId);
    }
}