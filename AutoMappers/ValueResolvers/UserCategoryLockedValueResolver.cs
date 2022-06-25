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
    /// UserCategoryLockedValueResolver class
    /// </summary>
    /// <seealso cref="IValueResolver{UserCategory, UserCategoryInformation, bool}" />
    public class UserCategoryLockedValueResolver : IValueResolver<UserCategory, UserCategoryInformation, bool>
    {
        /// <summary>
        /// The category repository
        /// </summary>
        private readonly ICategoryRepository _categoryRepository;

        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategoryLockedValueResolver" /> class.
        /// </summary>
        /// <param name="categoryRepository">The category repository.</param>
        /// <param name="unitOfWork">The unit of work.</param>
        public UserCategoryLockedValueResolver(ICategoryRepository categoryRepository, IUnitOfWork unitOfWork, ILogger logger)
        {
            this._unitOfWork = unitOfWork;
            this._logger = logger;
            this._categoryRepository = categoryRepository;
            this._categoryRepository.UnitOfWork = unitOfWork;
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
        public bool Resolve(UserCategory source, UserCategoryInformation destination, bool destMember, ResolutionContext context)
        {
            bool IsLocked = false;
            this._unitOfWork.Open();
            try
            {
                this._logger.Debug($"Getting the category with id: {source.CategoryId} in UserCategoryLockedValueResolver");
                Category category = this._categoryRepository.Get(source.CategoryId);
                if (category == null)
                {
                    throw new LevelsUpException(ErrorMessages.CATEGORY_NOT_EXISTS, ErrorCodes.NotFound);
                }

                IsLocked = category.IsLocked;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsLocked;
        }
    }
}