using System.Collections.Generic;
using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// IUserCategoryRepository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{UserCategory}" /> 
    public interface IUserCategoryRepository : IBaseRepository<UserCategory>
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// list of user categories
        /// </returns>
        List<UserCategory> Get(string userId);
    }
}