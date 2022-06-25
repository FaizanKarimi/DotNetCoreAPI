using System.Collections.Generic;
using Infrastructure.APIResponseModels;

namespace BusinessOperations.Interfaces
{
    /// <summary>
    /// IBOUserSubCategory interface
    /// </summary>
    /// <seealso cref="IBusinessOperation" />
    public interface IBOUserSubCategory : IBusinessOperation
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        List<UserSubCategoryInformation> Get(string userId);
    }
}