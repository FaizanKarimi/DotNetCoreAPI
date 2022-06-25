using System.Collections.Generic;
using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// ISubCategoryRepository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{SubCategory}" />
    public interface ISubCategoryRepository : IBaseRepository<SubCategory>
    {
        /// <summary>
        /// Gets the sub categories.
        /// </summary>
        /// <param name="categoryId">The category identifier.</param>
        /// <returns>
        /// the list of sub categories
        /// </returns>
        List<SubCategory> GetSubCategories(int categoryId);
    }
}