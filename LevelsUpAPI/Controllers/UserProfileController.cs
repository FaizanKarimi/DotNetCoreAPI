using BusinessOperations.Interfaces;
using Infrastructure.APIRequestModels;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using LevelsUpAPI.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace LevelsUpAPI.Controllers
{
    /// <summary>
    /// UserProfileController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    [Route(Routes.ControllerRoute)]
    [ApiController]
    [AuthorizeUser]
    public class UserProfileController : BaseController
    {
        /// <summary>
        /// The b o user
        /// </summary>
        private readonly IBOUser _bOUser;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserProfileController" /> class.
        /// </summary>
        /// <param name="bOUser">The b o user.</param>
        public UserProfileController(IBOUser bOUser) : base()
        {
            this._bOUser = bOUser;
        }

        /// <summary>
        /// Gets the profile.
        /// </summary>
        /// <returns>
        /// the user profile object
        /// </returns>
        [HttpGet]
        public IActionResult GetProfile()
        {
            string userId = this.httpContextAccessor.GetCurrentUserId();

            return this.OK<UserProfileInformation>(this._bOUser.GetUserProfile(userId));
        }

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="updateUserProfileRequest">The update user profile request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPut]
        public IActionResult UpdateProfile(UpdateUserProfileRequest updateUserProfileRequest)
        {
            return this.OK<bool>(this._bOUser.UpdateProfile(updateUserProfileRequest));
        }
    }
}