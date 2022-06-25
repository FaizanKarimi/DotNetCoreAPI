using System.Linq;
using System.Threading.Tasks;
using BusinessOperations.Interfaces;
using Infrastructure.APIRequestModels;
using Infrastructure.Common;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using LevelsUpAPI.Attributes;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using NSwag.Annotations;

namespace LevelsUpAPI.Controllers
{
    /// <summary>
    /// AccountController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    [Route(Routes.ControllerRoute)]
    [ApiController]
    [AllowAnonymous]
    public class AccountController : BaseController
    {
        #region Private Members
        /// <summary>
        /// The role manager
        /// </summary>
        private readonly RoleManager<IdentityRole> _roleManager;

        /// <summary>
        /// The b o user
        /// </summary>
        private readonly IBOUser _bOUser;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="AccountController" /> class.
        /// </summary>
        /// <param name="jwtSecurityTokenHandler">The JWT security token handler.</param>
        /// <param name="roleManager">The role manager.</param>
        /// <param name="bOUser">The b o user.</param>
        public AccountController(RoleManager<IdentityRole> roleManager, IBOUser bOUser) : base()
        {
            this._roleManager = roleManager;
            this._bOUser = bOUser;
        }
        #endregion

        #region API'S
        /// <summary>
        /// Registers the admin user.
        /// </summary>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        [OpenApiIgnore]
        public async Task<IActionResult> RegisterAdminUser()
        {
            this.logger.Debug("Register admin user process started");

            RegisterRequest registerRequest = this.mapper.Map<RegisterRequest>(this.appSettings);

            return this.OK<bool>(await this._bOUser.RegisterUserAsync(registerRequest, UserRoles.Admin));
        }

        /// <summary>
        /// Registers the user.
        /// </summary>
        /// <param name="registerRequest">The register request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        public async Task<IActionResult> RegisterUser(RegisterRequest registerRequest)
        {
            this.logger.Debug("Register user process started");

            return this.OK<bool>(await this._bOUser.RegisterUserAsync(registerRequest, UserRoles.User));
        }

        /// <summary>
        /// Creates the role.
        /// </summary>
        /// <param name="addRoleRequest">The add role request.</param>
        /// <returns>
        /// the response
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// </exception>
        [HttpPost]
        [AuthorizeAdmin]
        public async Task<IActionResult> CreateRole(AddRoleRequest addRoleRequest)
        {
            bool isExist = await this._roleManager.RoleExistsAsync(addRoleRequest.RoleName);
            if (isExist)
            {
                throw new LevelsUpException(ErrorMessages.ROLE_ALREADY_EXIST, ErrorCodes.Conflict);
            }

            IdentityRole role = new IdentityRole()
            {
                Name = addRoleRequest.RoleName
            };

            IdentityResult result = await this._roleManager.CreateAsync(role);
            if (!result.Succeeded)
            {
                throw new LevelsUpException(result.Errors?.FirstOrDefault()?.Description);
            }

            return this.OK();
        }

        /// <summary>
        /// Changes the password asynchronous.
        /// </summary>
        /// <param name="changePasswordRequest">The change password request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        [AuthorizeUser]
        public async Task<IActionResult> ChangePasswordAsync(ChangePasswordRequest changePasswordRequest)
        {
            this.logger.Debug("Change password process started.");

            return this.OK(await this._bOUser.ChangePasswordAsync(changePasswordRequest));
        }

        /// <summary>
        /// Accounts the verification.
        /// </summary>
        /// <param name="verifyAccountRequest">The verify account request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        public async Task<IActionResult> AccountVerification(VerifyAccountRequest verifyAccountRequest)
        {
            this.logger.Debug("Account verification process started");

            return this.OK<bool>(await this._bOUser.VerifyAccount(verifyAccountRequest));
        }

        /// <summary>
        /// Logins the specified login request.
        /// </summary>
        /// <param name="loginRequest">The login request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        public async Task<IActionResult> Login(LoginRequest loginRequest)
        {
            this.logger.Debug("Login process started.");

            return this.OK(await this._bOUser.Login(loginRequest));
        }

        /// <summary>
        /// Refreshes the token.
        /// </summary>
        /// <param name="refreshTokenRequest">The refresh token request.</param>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        public async Task<IActionResult> RefreshToken(RefreshTokenRequest refreshTokenRequest)
        {
            this.logger.Debug("RefreshToken process started.");

            return this.OK(await this._bOUser.GenerateRefreshToken(refreshTokenRequest));
        }

        /// <summary>
        /// Logs the out asynchronous.
        /// </summary>
        /// <returns>
        /// the response
        /// </returns>
        [HttpPost]
        [AuthorizeUser]
        public async Task<IActionResult> LogOutAsync()
        {
            this.logger.Debug("Logout process started.");

            return this.OK(await this._bOUser.Logout());
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public override void Dispose()
        {
            this._roleManager.Dispose();
            base.Dispose();
        }
        #endregion
    }
}