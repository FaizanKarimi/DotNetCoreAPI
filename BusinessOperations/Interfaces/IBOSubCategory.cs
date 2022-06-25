using Infrastructure.APIResponseModels;

namespace BusinessOperations.Interfaces
{
    /// <summary>
    /// IBOSubCategory interface
    /// </summary>
    /// <seealso cref="IBusinessOperation" />
    public interface IBOSubCategory : IBusinessOperation
    {
        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// user sub category detail information
        /// </returns>
        UserSubCategoryDetailInformation Get(int id);
    }
}