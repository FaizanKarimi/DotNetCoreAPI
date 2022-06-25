using System.Collections.Generic;
using BusinessOperations.Interfaces;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.ExtensionMethods.Framework;
using Services.Interfaces;

namespace BusinessOperations.Implementations
{
    /// <summary>
    /// BOUserCategory class
    /// </summary>
    /// <seealso cref="IBOUserCategory" />
    public class BOUserCategory : BaseBusinessOperation, IBOUserCategory
    {
        /// <summary>
        /// The user category service
        /// </summary>
        private readonly IUserCategoryService _userCategoryService;

        /// <summary>
        /// Initializes a new instance of the <see cref="BOUserCategory" /> class.
        /// </summary>
        /// <param name="userCategoryService">The user category service.</param>
        public BOUserCategory(IUserCategoryService userCategoryService) : base()
        {
            this._userCategoryService = userCategoryService;
        }

        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// list of user categories
        /// </returns>
        public List<UserCategoryInformation> Get(string userId)
        {
            this.logger.Debug("Get categories process started");

            this.logger.Debug($"Getting the user category information with the userId: {userId}");

            List<UserCategory> userCategories = this._userCategoryService.Get(userId);
            this.logger.Debug($"User category count is: {userCategories.Count}");
            if (userCategories.IsNotAny())
            {
                throw new LevelsUpException(ErrorMessages.USER_CATEGORIES_NOT_EXIST, ErrorCodes.NotFound);
            }

            List<UserCategoryInformation> userCategoryInformation = this.mapper.Map<List<UserCategoryInformation>>(userCategories);

            this.logger.Debug("Get categories process ended");

            return userCategoryInformation;
        }
    }
}