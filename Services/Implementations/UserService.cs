using System;
using System.Collections.Generic;
using System.Linq;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.ExtensionMethods.Framework;
using Repository.Interfaces;
using Repository.Provider;
using Services.Interfaces;

namespace Services.Implementations
{
    /// <summary>
    /// UserService class
    /// </summary>
    /// <seealso cref="IUserService" />
    public class UserService : BaseService, IUserService
    {
        #region Private Members
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The user profile repository
        /// </summary>
        private readonly IUserProfileRepository _userProfileRepository;

        /// <summary>
        /// The user repository
        /// </summary>
        private readonly IUserRepository _userRepository;

        /// <summary>
        /// The user category repository
        /// </summary>
        private readonly IUserCategoryRepository _userCategoryRepository;

        /// <summary>
        /// The category repository
        /// </summary>
        private readonly ICategoryRepository _categoryRepository;

        /// <summary>
        /// The sub category repository
        /// </summary>
        private readonly ISubCategoryRepository _subCategoryRepository;

        /// <summary>
        /// The user sub category repository
        /// </summary>
        private readonly IUserSubCategoryRepository _userSubCategoryRepository;

        /// <summary>
        /// The refresh token respository
        /// </summary>
        private readonly IRefreshTokenRespository _refreshTokenRespository;
        #endregion

        #region Public Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="UserService" /> class.
        /// </summary>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="userProfileRepository">The user profile repository.</param>
        /// <param name="userRepository">The user repository.</param>
        /// <param name="userCategoryRepository">The user category repository.</param>
        /// <param name="categoryRepository">The category repository.</param>
        /// <param name="subCategoryRepository">The sub category repository.</param>
        /// <param name="userSubCategoryRepository">The user sub category repository.</param>
        /// <param name="refreshTokenRespository">The refresh token respository.</param>
        public UserService(IUnitOfWork unitOfWork, IUserProfileRepository userProfileRepository, IUserRepository userRepository, IUserCategoryRepository userCategoryRepository,
            ICategoryRepository categoryRepository, ISubCategoryRepository subCategoryRepository, IUserSubCategoryRepository userSubCategoryRepository, IRefreshTokenRespository refreshTokenRespository) : base()
        {
            this._unitOfWork = unitOfWork;
            this._userProfileRepository = userProfileRepository;
            this._userProfileRepository.UnitOfWork = unitOfWork;
            this._userRepository = userRepository;
            this._userRepository.UnitOfWork = unitOfWork;
            this._userCategoryRepository = userCategoryRepository;
            this._userCategoryRepository.UnitOfWork = unitOfWork;
            this._categoryRepository = categoryRepository;
            this._subCategoryRepository = subCategoryRepository;
            this._subCategoryRepository.UnitOfWork = unitOfWork;
            this._categoryRepository.UnitOfWork = unitOfWork;
            this._userSubCategoryRepository = userSubCategoryRepository;
            this._refreshTokenRespository = refreshTokenRespository;
            this._refreshTokenRespository.UnitOfWork = unitOfWork;
            this._userSubCategoryRepository.UnitOfWork = unitOfWork;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Adds the refresh token.
        /// </summary>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool AddRefreshToken(RefreshToken refreshToken)
        {
            bool IsAdded = false;
            this._unitOfWork.Open();

            try
            {
                this._unitOfWork.BeginTransaction();
                refreshToken = this._refreshTokenRespository.Insert(refreshToken);
                this._unitOfWork.CommitTransaction();
                if (refreshToken != null)
                {
                    IsAdded = true;
                }
            }
            catch (Exception)
            {
                this._unitOfWork.RollBackTransaction();
                throw;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsAdded;
        }

        /// <summary>
        /// Updates the refresh token.
        /// </summary>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool UpdateRefreshToken(RefreshToken refreshToken)
        {
            bool IsUpdated = false;
            this._unitOfWork.Open();
            try
            {
                this._unitOfWork.BeginTransaction();
                IsUpdated = this._refreshTokenRespository.Update(refreshToken);
                this._unitOfWork.CommitTransaction();
            }
            catch (Exception)
            {
                this._unitOfWork.RollBackTransaction();
                throw;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsUpdated;
        }

        /// <summary>
        /// Gets the refresh token.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// the refresh token object
        /// </returns>
        public RefreshToken GetRefreshToken(string userId, string refreshToken)
        {
            RefreshToken refreshTokenObj = null;
            this._unitOfWork.Open();

            try
            {
                refreshTokenObj = this._refreshTokenRespository.Get(userId, refreshToken);
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return refreshTokenObj;
        }

        /// <summary>
        /// Registers the user.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <param name="device">The device.</param>
        /// <param name="language">The language.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public bool RegisterUser(UserProfile userProfile, Devices device, string language)
        {
            bool IsRegistered = false;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug($"Getting the user profile information with the email: {userProfile.EmailAddress}");
                UserProfile dbUserProfile = this._userProfileRepository.Get(0, userProfile.UserId);
                if (dbUserProfile != null)
                {
                    throw new LevelsUpException(ErrorMessages.USER_PROFILE_ALREADY_EXIST, ErrorCodes.Conflict);
                }

                this._unitOfWork.BeginTransaction();
                this.logger.Debug("Adding new profile in the system.");
                this._userProfileRepository.Insert(userProfile);
                this._unitOfWork.CommitTransaction();
                IsRegistered = true;
            }
            catch (Exception)
            {
                this._unitOfWork.RollBackTransaction();
                throw;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsRegistered;
        }

        /// <summary>
        /// Verifies the account.
        /// </summary>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <param name="verificationCode">The verification code.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// </exception>
        public bool VerifyAccount(string mobileNumber, string verificationCode)
        {
            bool IsUpdated = false;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug($"Getting the user profile information with the mobile number: {mobileNumber}");
                UserProfile userProfile = this._userProfileRepository.Get(0, mobileNumber: mobileNumber);

                if (userProfile == null)
                {
                    throw new LevelsUpException(ErrorMessages.USER_PROFILE_NOT_EXIST, ErrorCodes.NotFound);
                }

                if (!userProfile.VerificationCode.Equals(verificationCode))
                {
                    throw new LevelsUpException(ErrorMessages.USER_INVALID_VERIFICATION_CODE, ErrorCodes.BadRequest);
                }

                AspNetUsers user = this._userRepository.Get(mobileNumber: mobileNumber);
                List<UserCategory> dbUserCategories = this._userCategoryRepository.Get(user.Id);
                List<UserSubCategory> dbUserSubCategories = this._userSubCategoryRepository.Get(user.Id);

                this.logger.Debug($"Getting the user with the mobile number: {mobileNumber}");
                AspNetUsers aspNetUsers = this._userRepository.Get(mobileNumber: mobileNumber);
                aspNetUsers.PhoneNumberConfirmed = true;
                aspNetUsers.EmailConfirmed = true;

                this.logger.Debug("Getting all categories");
                List<Category> categories = this._categoryRepository.GetAll();

                Dictionary<int, List<SubCategory>> subCategoryDictionary = new Dictionary<int, List<SubCategory>>();
                if (categories.IsAny())
                {
                    foreach (Category category in categories)
                    {
                        this.logger.Debug($"Getting the subcategory with the Id: {category.Id} and Name: {category.Name}");
                        List<SubCategory> subCategories = this._subCategoryRepository.GetSubCategories(category.Id);
                        this.logger.Debug($"SubCategories for the category with Id: {category.Id} and Name: {category.Name} count is: {subCategories.Count}");
                        if (subCategories.IsAny())
                        {
                            subCategoryDictionary.Add(category.Id, subCategories);
                        }
                    }
                }

                List<UserCategory> userCategories = new List<UserCategory>();
                List<UserSubCategory> userSubCategories = new List<UserSubCategory>();
                foreach (Category category in categories)
                {
                    if (dbUserCategories.Exists(x => x.CategoryId == category.Id) == false)
                    {
                        UserCategory userCategory = new UserCategory()
                        {
                            AttributeKey = category.Name.ToPascal(),
                            AttributeValue = "0",
                            UserId = userProfile.UserId,
                            CategoryId = category.Id
                        };
                        userCategories.Add(userCategory);
                    }

                    List<SubCategory> subCategories = subCategoryDictionary.Where(x => x.Key == category.Id)?.SelectMany(y => y.Value)?.ToList();
                    subCategories?.ForEach(subCategory =>
                    {
                        if (dbUserSubCategories.Exists(x => x.SubCategoryId == subCategory.Id) == false)
                        {
                            UserSubCategory userSubCategory = new UserSubCategory()
                            {
                                UserId = userProfile.UserId,
                                AttributeKey = subCategory.Name,
                                AttributeValue = "0",
                                Repetitions = 0,
                                SubCategoryId = subCategory.Id

                            };
                            userSubCategories.Add(userSubCategory);
                        }
                    });
                }

                this.logger.Debug("Beginning the transaction as the database operations are starting from here");
                this._unitOfWork.BeginTransaction();

                if (userCategories.IsAny())
                {
                    this.logger.Debug("Inserting the user categories");
                    foreach (UserCategory userCategory in userCategories)
                    {
                        this._userCategoryRepository.Insert(userCategory);
                    }

                    if (userSubCategories.IsAny())
                    {
                        this.logger.Debug("Inserting the user sub categories");
                        foreach (UserSubCategory userSubCategory in userSubCategories)
                        {
                            this._userSubCategoryRepository.Insert(userSubCategory);
                        }
                    }
                }

                this.logger.Debug("Updating the user infomation in the system.");
                IsUpdated = this._userRepository.Update(aspNetUsers);

                this.logger.Debug("Committing the transaction as the database operations are done here");
                this._unitOfWork.CommitTransaction();

                IsUpdated = true;
            }
            catch (Exception)
            {
                this._unitOfWork.RollBackTransaction();
                throw;
            }
            finally
            {
                this._unitOfWork.Close();
            }

            return IsUpdated;
        }
        #endregion

        #region Private Methods

        #endregion
    }
}