using BusinessOperations.Interfaces;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Services.Interfaces;

namespace BusinessOperations.Implementations
{
    /// <summary>
    /// BOSubCategory class
    /// </summary>
    /// <seealso cref="IBOSubCategory" />
    public class BOSubCategory : BaseBusinessOperation, IBOSubCategory
    {
        /// <summary>
        /// The sub category service
        /// </summary>
        private readonly ISubCategoryService _subCategoryService;

        /// <summary>
        /// Initializes a new instance of the <see cref="BOSubCategory" /> class.
        /// </summary>
        /// <param name="subCategoryService">The sub category service.</param>
        public BOSubCategory(ISubCategoryService subCategoryService) : base()
        {
            this._subCategoryService = subCategoryService;
        }

        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// user sub category detail information
        /// </returns>
        public UserSubCategoryDetailInformation Get(int id)
        {
            this.logger.Debug("Process started for getting UserSubCategoryDetailInformation");

            SubCategory subCategory = this._subCategoryService.Get(id);
            if (subCategory == null)
            {
                throw new LevelsUpException(ErrorMessages.SUB_CATEGORY_NOT_EXISTS, ErrorCodes.NotFound, id);
            }

            UserSubCategoryDetailInformation userSubCategoryDetailInformation = this.mapper.Map<UserSubCategoryDetailInformation>(subCategory);

            this.logger.Debug("Process ended for getting UserSubCategoryDetailInformation");

            return userSubCategoryDetailInformation;
        }
    }
}