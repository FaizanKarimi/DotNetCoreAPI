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
    /// UserSubCategoryLockedValueResolver class
    /// </summary>
    /// <seealso cref="IValueResolver{UserSubCategory, UserSubCategoryInformation, bool}" />
    public class UserSubCategoryLockedValueResolver : IValueResolver<UserSubCategory, UserSubCategoryInformation, bool?>
    {
        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategoryLockedValueResolver"/> class.
        /// </summary>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        /// <param name="unitOfWork">The unit of work.</param>
        public UserSubCategoryLockedValueResolver(ISubCategoryRepository subCategoryRepository, IUnitOfWork unitOfWork, ILogger logger)
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
        public bool? Resolve(UserSubCategory source, UserSubCategoryInformation destination, bool? destMember, ResolutionContext context)
        {
            bool IsLocked = false;
            this._unitOfWork.Open();
            try
            {
                this._logger.Debug($"Getting the sub category with id: {source.SubCategoryId} in UserSubCategoryLockedValueResolver");
                SubCategory subCategory = this._subCategoryRepository.Get(source.SubCategoryId);
                if (subCategory == null)
                {
                    throw new LevelsUpException(ErrorMessages.SUB_CATEGORY_NOT_EXISTS, ErrorCodes.NotFound, source.SubCategoryId);
                }

                IsLocked = subCategory.IsLocked;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsLocked;
        }
    }
}