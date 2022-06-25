using Infrastructure.DatabaseModels;

namespace Services.Interfaces
{
    /// <summary>
    /// ISubCategoryService interface
    /// </summary>
    /// <seealso cref="IService" />
    public interface ISubCategoryService : IService
    {
        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// the sub category
        /// </returns>
        SubCategory Get(int id);
    }
}