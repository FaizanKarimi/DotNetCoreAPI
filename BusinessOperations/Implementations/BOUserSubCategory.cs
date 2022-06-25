using System.Collections.Generic;
using BusinessOperations.Interfaces;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Infrastructure.ExtensionMethods.Framework;
using Services.Interfaces;

namespace BusinessOperations.Implementations
{
    /// <summary>
    /// BOUserSubCategory class
    /// </summary>
    /// <seealso cref="IBOUserSubCategory" />
    public class BOUserSubCategory : BaseBusinessOperation, IBOUserSubCategory
    {
        /// <summary>
        /// The user sub category service
        /// </summary>
        private readonly IUserSubCategoryService _userSubCategoryService;

        /// <summary>
        /// Initializes a new instance of the <see cref="BOUserSubCategory" /> class.
        /// </summary>
        /// <param name="userSubCategoryService">The user sub category service.</param>
        public BOUserSubCategory(IUserSubCategoryService userSubCategoryService) : base()
        {
            this._userSubCategoryService = userSubCategoryService;
        }

        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        public List<UserSubCategoryInformation> Get(string userId)
        {
            if (string.IsNullOrEmpty(userId))
            {
                this.logger.Debug("Getting the userId");
                userId = this.httpContextAccessor.GetCurrentUserId();
            }

            List<UserSubCategory> subCategories = this._userSubCategoryService.Get(userId);

            return this.mapper.Map<List<UserSubCategoryInformation>>(subCategories);
        }
    }
}