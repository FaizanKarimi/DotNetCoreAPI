using AutoMapper;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Logging;
using Repository.Interfaces;
using Repository.Provider;

namespace AutoMappers.ValueResolvers
{
    /// <summary>
    /// UserSubCategoryImagePathValueResolver class
    /// </summary>
    /// <seealso cref="IValueResolver{UserSubCategory, UserSubCategoryInformation, string}" />
    public class UserSubCategoryImagePathValueResolver : IValueResolver<UserSubCategory, UserSubCategoryInformation, string>
    {
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategoryImagePathValueResolver" /> class.
        /// </summary>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="logger">The logger.</param>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        public UserSubCategoryImagePathValueResolver(IUnitOfWork unitOfWork, ILogger logger, ISubCategoryRepository subCategoryRepository)
        {
            this._unitOfWork = unitOfWork;
            this._logger = logger;
            this._subCategoryRepository = subCategoryRepository;
            this._subCategoryRepository.UnitOfWork = unitOfWork;
        }

        /// <summary>
        /// Implementors use source object to provide a destination object.
        /// </summary>
        /// <param name="source">Source object</param>
        /// <param name="destination">Destination object, if exists</param>
        /// <param name="destMember">Destination member</param>
        /// <param name="context">The context of the mapping</param>
        /// <returns>
        /// Result, typically build from the source resolution result
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public string Resolve(UserSubCategory source, UserSubCategoryInformation destination, string destMember, ResolutionContext context)
        {
            string ImagePath = string.Empty;
            this._unitOfWork.Open();
            try
            {
                this._logger.Debug($"Getting the subcategory with the id: {source.SubCategoryId}");
                SubCategory subCategory = this._subCategoryRepository.Get(source.SubCategoryId);
                if (subCategory == null)
                {
                    throw new LevelsUpException(ErrorMessages.SUB_CATEGORY_NOT_EXISTS, ErrorCodes.NotFound, source.SubCategoryId);
                }

                ImagePath = subCategory.ImagePath;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return ImagePath;
        }
    }
}