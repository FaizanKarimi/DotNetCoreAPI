using System.Collections.Generic;
using System.Linq;
using Infrastructure.DatabaseModels;
using Infrastructure.ExtensionMethods.Framework;
using Repository.Interfaces;
using Repository.Provider;
using Services.Interfaces;

namespace Services.Implementations
{
    /// <summary>
    /// UserSubCategoryService class
    /// </summary>
    /// <seealso cref="IUserSubCategoryService" />
    public class UserSubCategoryService : BaseService, IUserSubCategoryService
    {
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The user sub category repository
        /// </summary>
        private readonly IUserSubCategoryRepository _userSubCategoryRepository;

        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategoryService" /> class.
        /// </summary>
        /// <param name="logger">The logger.</param>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="userSubCategoryRepository">The user sub category repository.</param>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        public UserSubCategoryService(IUnitOfWork unitOfWork, IUserSubCategoryRepository userSubCategoryRepository, ISubCategoryRepository subCategoryRepository)
            : base()
        {
            this._unitOfWork = unitOfWork;
            this._userSubCategoryRepository = userSubCategoryRepository;
            this._userSubCategoryRepository.UnitOfWork = unitOfWork;
            this._subCategoryRepository = subCategoryRepository;
            this._subCategoryRepository.UnitOfWork = unitOfWork;
        }

        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the list of user sub categories
        /// </returns>
        public List<UserSubCategory> Get(string userId)
        {
            List<UserSubCategory> userSubCategories = null;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug($"Getting the user sub categories with the userId: {userId}");
                userSubCategories = this._userSubCategoryRepository.Get(userId);
                List<int> subCategoriesId = userSubCategories.Select(x => x.SubCategoryId).ToList();
                this.logger.Debug($"SubCategories ids are: {subCategoriesId.GetCommaSeperatedString<int>()}");
                subCategoriesId?.ForEach(subCategoryId =>
                {
                    this.logger.Debug($"Getting the sub category with the id: {subCategoryId}");
                    SubCategory subCategory = this._subCategoryRepository.Get(subCategoryId);
                    if (userSubCategories.Exists(x => x.SubCategoryId == subCategoryId))
                    {
                        userSubCategories.FirstOrDefault(x => x.SubCategoryId == subCategoryId).SubCategory = subCategory;
                    }
                });
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return userSubCategories;
        }
    }
}