using Infrastructure.DatabaseModels;
using Repository.Interfaces;
using Repository.Provider;
using Services.Interfaces;

namespace Services.Implementations
{
    /// <summary>
    /// SubCategoryService class
    /// </summary>
    /// <seealso cref="ISubCategoryService" />
    public class SubCategoryService : BaseService, ISubCategoryService
    {
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// Initializes a new instance of the <see cref="SubCategoryService" /> class.
        /// </summary>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        public SubCategoryService(IUnitOfWork unitOfWork, ISubCategoryRepository subCategoryRepository) : base()
        {
            this._unitOfWork = unitOfWork;
            this._subCategoryRepository = subCategoryRepository;
            this._subCategoryRepository.UnitOfWork = unitOfWork;
        }

        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// the sub category
        /// </returns>
        public SubCategory Get(int id)
        {
            SubCategory subCategory = null;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug($"Getting the subcategory information with id: {id}");
                subCategory = this._subCategoryRepository.Get(id);
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return subCategory;
        }
    }
}