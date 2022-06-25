using System;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Repository.Interfaces;
using Repository.Provider;
using Services.Interfaces;

namespace Services.Implementations
{
    /// <summary>
    /// UserProfileService class
    /// </summary>
    /// <seealso cref="IUserProfileService" />
    public class UserProfileService : BaseService, IUserProfileService
    {
        /// <summary>
        /// The unit of work
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;

        /// <summary>
        /// The user profile repository
        /// </summary>
        private readonly IUserProfileRepository _userProfileRepository;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserProfileService" /> class.
        /// </summary>
        /// <param name="unitOfWork">The unit of work.</param>
        /// <param name="userProfileRepository">The user profile repository.</param>
        public UserProfileService(IUnitOfWork unitOfWork, IUserProfileRepository userProfileRepository) : base()
        {
            this._unitOfWork = unitOfWork;
            this._userProfileRepository = userProfileRepository;
            this._userProfileRepository.UnitOfWork = unitOfWork;
        }

        /// <summary>
        /// Adds the user profile.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <param name="device">The device.</param>
        /// <param name="language">The language.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public bool AddUserProfile(UserProfile userProfile, Devices device, string language)
        {
            bool IsAdded = false;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug($"Getting the user profile information with the email: {userProfile.EmailAddress}");
                UserProfile dbUserProfile = this._userProfileRepository.Get(0, userProfile.UserId);
                if (dbUserProfile == null)
                {
                    this._unitOfWork.BeginTransaction();
                    this.logger.Debug("Adding new profile in the system.");
                    this._userProfileRepository.Insert(userProfile);
                    this._unitOfWork.CommitTransaction();
                    IsAdded = true;
                }
                else
                {
                    throw new LevelsUpException(ErrorMessages.USER_PROFILE_ALREADY_EXIST, ErrorCodes.Conflict);
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
        /// Gets the user profile.
        /// </summary>
        /// <param name="profileId">The profile identifier.</param>
        /// <param name="userId">The user identifier.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <returns>
        /// the user profile
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public UserProfile GetUserProfile(int? profileId, string userId = null, string mobileNumber = null)
        {
            this._unitOfWork.Open();
            UserProfile userProfile = null;
            try
            {
                userProfile = this._userProfileRepository.Get(profileId, userId, mobileNumber);
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

            return userProfile;
        }

        /// <summary>
        /// Updates the user profile.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool UpdateUserProfile(UserProfile userProfile)
        {
            bool IsUpdated = false;
            this._unitOfWork.Open();
            try
            {
                this.logger.Debug("Updating the user profile in the system");
                this._unitOfWork.BeginTransaction();
                IsUpdated = this._userProfileRepository.Update(userProfile);
                this._unitOfWork.CommitTransaction();
                this.logger.Debug("Updated the user profile in the system");
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
    }
}