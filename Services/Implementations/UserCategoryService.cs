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
    /// UserCategoryService class
    /// </summary>
    /// <seealso cref="IUserCategoryService" />
    public class UserCategoryService : BaseService, IUserCategoryService
    {
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The user category repository
        /// </summary>
        private readonly IUserCategoryRepository _userCategoryRepository;

        /// <summary>
        /// The category repository
        /// </summary>
        private readonly ICategoryRepository _categoryRepository;

        /// <summary>
        /// The user sub category repository
        /// </summary>
        private readonly IUserSubCategoryRepository _userSubCategoryRepository;

        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategoryService" /> class.
        /// </summary>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="userCategoryRepository">The user category repository.</param>
        /// <param name="categoryRepository">The category repository.</param>
        /// <param name="userSubCategoryRepository">The user sub category repository.</param>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        public UserCategoryService(IUnitOfWork unitOfWork, IUserCategoryRepository userCategoryRepository, ICategoryRepository categoryRepository, IUserSubCategoryRepository userSubCategoryRepository,
            ISubCategoryRepository subCategoryRepository) : base()
        {
            this._unitOfWork = unitOfWork;
            this._userCategoryRepository = userCategoryRepository;
            this._userCategoryRepository.UnitOfWork = unitOfWork;
            this._categoryRepository = categoryRepository;
            this._categoryRepository.UnitOfWork = unitOfWork;
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
        /// list of user categories
        /// </returns>
        public List<UserCategory> Get(string userId)
        {
            this._unitOfWork.Open();
            List<UserCategory> userCategories = null;
            try
            {
                userCategories = this._userCategoryRepository.Get(userId);
                List<int> categoriesId = userCategories.Select(x => x.CategoryId).ToList();
                this.logger.Debug($"Categories with the ids are: {categoriesId.GetCommaSeperatedString<int>()}");
                categoriesId?.ForEach(categoryId =>
                {
                    this.logger.Debug($"Getting the category with the id: {categoryId}");
                    Category category = this._categoryRepository.Get(categoryId);
                    if (userCategories.Exists(x => x.CategoryId == categoryId))
                    {
                        UserCategory userCategory = userCategories.FirstOrDefault(x => x.CategoryId == categoryId);
                        if (userCategory.Category == null)
                        {
                            userCategory.Category = category;
                        }

                        userCategory.SubCategories = this._subCategoryRepository.GetSubCategories(userCategory.Category.Id);
                        List<int> subCategoriesId = userCategory.SubCategories.Select(x => x.Id).ToList();
                        int[] ids = subCategoriesId.ToArray();
                        if (ids.Length > 0)
                        {
                            userCategory.UserSubCategories = this._userSubCategoryRepository.GetUserSubCategories(userId, ids);
                        }
                    }
                });
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return userCategories;
        }
    }
}