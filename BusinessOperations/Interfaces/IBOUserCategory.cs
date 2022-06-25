using System.Collections.Generic;
using Infrastructure.APIResponseModels;

namespace BusinessOperations.Interfaces
{
    /// <summary>
    /// IBOUserCategory interface
    /// </summary>
    /// <seealso cref="IBusinessOperation" />
    public interface IBOUserCategory : IBusinessOperation
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>list of user categories</returns>
        List<UserCategoryInformation> Get(string userId);
    }
}