using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Threading.Tasks;
using BusinessOperations.Interfaces;
using Components.Interfaces;
using Identity;
using Infrastructure.APIRequestModels;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.Configurations;
using Infrastructure.DatabaseModels;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.ExtensionMethods.DatabaseModels;
using Infrastructure.ExtensionMethods.Framework;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using Services.Interfaces;

namespace BusinessOperations.Implementations
{
    /// <summary>
    /// BOUser class
    /// </summary>
    /// <seealso cref="IBOUser" />
    public class BOUser : BaseBusinessOperation, IBOUser
    {
        #region Private Members
        /// <summary>
        /// The user profile service
        /// </summary>
        private readonly IUserProfileService _userProfileService;

        /// <summary>
        /// The twillio service
        /// </summary>
        private readonly ITwillioService _twillioService;

        /// <summary>
        /// The user service
        /// </summary>
        private readonly IUserService _userService;

        /// <summary>
        /// The email service
        /// </summary>
        private readonly IEmailService _emailService;

        /// <summary>
        /// The user manager
        /// </summary>
        private readonly UserManager<LevelsUpUser> _userManager;

        /// <summary>
        /// The sign in manager
        /// </summary>
        private readonly SignInManager<LevelsUpUser> _signInManager;

        /// <summary>
        /// The json web token setting
        /// </summary>
        private readonly JsonWebTokenSettings _jsonWebTokenSetting;

        /// <summary>
        /// The JWT security token handler
        /// </summary>
        private readonly JwtSecurityTokenHandler _jwtSecurityTokenHandler;
        #endregion

        #region Public Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="BOUser" /> class.
        /// </summary>
        /// <param name="userProfileService">The user profile service.</param>
        /// <param name="twillioService">The twillio service.</param>
        /// <param name="userService">The user service.</param>
        /// <param name="emailService">The email service.</param>
        /// <param name="userManager">The user manager.</param>
        /// <param name="signInManager">The sign in manager.</param>
        /// <param name="jsonWebTokenSetting">The json web token setting.</param>
        /// <param name="jwtSecurityTokenHandler">The JWT security token handler.</param>
        public BOUser(IUserProfileService userProfileService, ITwillioService twillioService, IUserService userService, IEmailService emailService, UserManager<LevelsUpUser> userManager,
            SignInManager<LevelsUpUser> signInManager, JsonWebTokenSettings jsonWebTokenSetting, JwtSecurityTokenHandler jwtSecurityTokenHandler) : base()
        {
            this._userProfileService = userProfileService;
            this._twillioService = twillioService;
            this._userService = userService;
            this._emailService = emailService;
            this._userManager = userManager;
            this._signInManager = signInManager;
            this._jsonWebTokenSetting = jsonWebTokenSetting;
            this._jwtSecurityTokenHandler = jwtSecurityTokenHandler;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Registers the user.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public async Task<bool> RegisterUserAsync(RegisterRequest registerRequest, UserRoles userRole)
        {
            bool IsRegistered = false;

            this.logger.Debug($"Checking the user with the email {registerRequest.Email} in the system");

            LevelsUpUser dbUser = await this._userManager.FindByEmailAsync(registerRequest.Email);
            if (dbUser != null)
            {
                throw new LevelsUpException(ErrorMessages.USER_ALREADY_EXIST, ErrorCodes.NotFound);
            }

            this.logger.Debug($"User not exist in the system with the email {registerRequest.Email}");

            LevelsUpUser user = this.mapper.Map<LevelsUpUser>(registerRequest);

            this.logger.Debug($"Creating the {userRole.ToString()} user in system.");
            IdentityResult result = await this._userManager.CreateAsync(user, registerRequest.Password);
            if (!result.Succeeded)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_CREATED, ErrorCodes.Conflict);
            }

            this.logger.Debug($"Adding user to role {userRole.ToString()}");
            IdentityResult roleResult = await this._userManager.AddToRoleAsync(user, userRole.ToString());
            if (!roleResult.Succeeded)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_ADDED_TO_ROLE, ErrorCodes.Conflict);
            }

            LevelsUpUser newUser = await this._userManager.FindByEmailAsync(registerRequest.Email);
            this.logger.Debug("Registering the new user in the system.");

            UserProfile userProfile = this.mapper.Map<UserProfile>(registerRequest);
            userProfile.UserId = newUser.Id;

            this.logger.Debug("Generating the randon number.");

            string code = CommonHelpers.GenrateRandomNumber();

            this.logger.Debug($"Sending the verification code to registered mobile number: {code}");

            bool IsMessageSend = this._twillioService.SendAccountVerificationMessage(userProfile.GetMobileNumber(), code);

            this.logger.Debug($"Sending the verification code to email address: {userProfile.EmailAddress}");

            this._emailService.SendAccountVerificationEmail(userProfile.EmailAddress, userProfile.Name, code);

            if (IsMessageSend)
            {
                this.logger.Debug("Message is send to registered mobile number");

                userProfile.VerificationCode = code;

                IsRegistered = this._userService.RegisterUser(userProfile, null, null);
            }

            this.logger.Debug("Register admin user process ended");

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
        public async Task<bool> VerifyAccount(VerifyAccountRequest verifyAccountRequest)
        {
            this.logger.Debug("Verifying the account.");

            LevelsUpUser user = await this._userManager.FindByEmailAsync(verifyAccountRequest.Email);
            if (user == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_INVALID_USERNAME_PASSWORD, ErrorCodes.BadRequest);
            }

            bool IsVerified = this._userService.VerifyAccount(verifyAccountRequest.MobileNumber, verifyAccountRequest.VerificationCode);

            this.logger.Debug("Account verification process ended");

            return IsVerified;
        }

        /// <summary>
        /// Gets the user profile.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the user profile information
        /// </returns>
        /// <exception cref="LevelsUpException">user profile not exist</exception>
        public UserProfileInformation GetUserProfile(string userId)
        {
            this.logger.Debug("Get profile process started");

            this.logger.Debug($"Getting the user profile with the userId: {userId}");

            UserProfile userProfile = this._userProfileService.GetUserProfile(0, userId: userId);

            if (userProfile == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_PROFILE_NOT_EXIST, ErrorCodes.NotFound);
            }

            UserProfileInformation userProfileInformation = this.mapper.Map<UserProfileInformation>(userProfile);

            this.logger.Debug("Get profile process ended");

            return userProfileInformation;
        }

        /// <summary>
        /// Updates the profile.
        /// </summary>
        /// <param name="updateUserProfileRequest">The update user profile request.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException">user profile not exist</exception>
        public bool UpdateProfile(UpdateUserProfileRequest updateUserProfileRequest)
        {
            this.logger.Debug("Edit profile process started");

            UserProfile userProfile = this._userProfileService.GetUserProfile(profileId: updateUserProfileRequest.ProfileId);

            if (userProfile == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_PROFILE_NOT_EXIST, ErrorCodes.NotFound);
            }

            userProfile = this.mapper.Map<UpdateUserProfileRequest, UserProfile>(updateUserProfileRequest, userProfile);

            bool IsUpdated = this._userProfileService.UpdateUserProfile(userProfile);

            this.logger.Debug("Edit profile process ended");

            return IsUpdated;
        }

        /// <summary>
        /// Changes the password asynchronous.
        /// </summary>
        /// <param name="changePasswordRequest">The change password request.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// </exception>
        public async Task<bool> ChangePasswordAsync(ChangePasswordRequest changePasswordRequest)
        {
            this.logger.Debug($"Getting user by email: {changePasswordRequest.Email}");
            LevelsUpUser user = await this._userManager.FindByEmailAsync(changePasswordRequest.Email);
            if (user == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_EXIST, ErrorCodes.NotFound);
            }

            this.logger.Debug($"Removing the password of the user: {user.UserName}");
            IdentityResult removedResult = await this._userManager.RemovePasswordAsync(user);
            if (!removedResult.Succeeded)
            {
                throw new LevelsUpException(removedResult.Errors?.FirstOrDefault()?.Description);
            }

            this.logger.Debug($"Adding new password of the user: {user.UserName}");
            IdentityResult result = await this._userManager.AddPasswordAsync(user, changePasswordRequest.NewPassword);
            if (!result.Succeeded)
            {
                throw new LevelsUpException(result.Errors?.FirstOrDefault()?.Description);
            }

            this.logger.Debug("Change password process ended.");

            return true;
        }

        /// <summary>
        /// Logins the specified login request.
        /// </summary>
        /// <param name="loginRequest">The login request.</param>
        /// <returns>
        /// the login response
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// </exception>
        public async Task<TokenResponse> Login(LoginRequest loginRequest)
        {
            this.logger.Debug($"Getting user with the username: {loginRequest.UserName}");
            LevelsUpUser user = await this._userManager.FindByEmailAsync(loginRequest.UserName);
            if (user == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_EXIST, ErrorCodes.NotFound);
            }

            this.logger.Debug($"Password sign for the user with the username: {loginRequest.UserName}");
            SignInResult result = await this._signInManager.PasswordSignInAsync(loginRequest.UserName, loginRequest.Password, false, false);
            if (!result.Succeeded)
            {
                throw new LevelsUpException(ErrorMessages.USER_INVALID_USERNAME_PASSWORD, ErrorCodes.BadRequest);
            }
            else if (result.IsLockedOut)
            {
                throw new LevelsUpException(ErrorMessages.USER_IS_DISABLED, ErrorCodes.UnprocessableEntity);
            }

            this.logger.Debug("Getting roles of the user.");
            IList<string> roles = await this._userManager.GetRolesAsync(user);

            this.logger.Debug($"Generating token of user with the username: {user.UserName} and role: {roles.FirstOrDefault()}");

            TokenResponse tokenResponse = this._GenerateJSONWebToken(user, roles);

            this.logger.Debug("Login process ended.");

            return tokenResponse;
        }

        /// <summary>
        /// Generates the refresh token.
        /// </summary>
        /// <param name="refreshTokenRequest">The refresh token request.</param>
        /// <returns>
        /// the refresh token response
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// </exception>
        public async Task<TokenResponse> GenerateRefreshToken(RefreshTokenRequest refreshTokenRequest)
        {
            SecurityToken securityToken;
            ClaimsPrincipal principle = this._jwtSecurityTokenHandler.ValidateToken(refreshTokenRequest.AuthenticationToken, TokenValidationParameterHelpers.GetExpiredTokenValidationParameters(), out securityToken);
            JwtSecurityToken jwtToken = securityToken as JwtSecurityToken;

            if (jwtToken == null || !jwtToken.Header.Alg.Equals(SecurityAlgorithms.HmacSha256))
            {
                throw new LevelsUpException(ErrorMessages.UNAUTHORIZED_ERROR, ErrorCodes.Unauthorized);
            }

            this.logger.Debug($"Getting the userId from the jwtToken");
            string userId = jwtToken.Claims.GetClaimValue(EnumHelpers.GetDescription(MiddlewareClaimTypes.UserId));

            this.logger.Debug($"Getting the refresh token from the database with the userId: {userId}");
            RefreshToken refreshToken = this._userService.GetRefreshToken(userId, refreshTokenRequest.RefreshToken);
            if (refreshToken == null || refreshToken.IsUsed)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_EXIST, ErrorCodes.Unauthorized);
            }

            string username = principle.Identity.Name;
            this.logger.Debug($"Getting user with the username: {username}");
            LevelsUpUser user = await this._userManager.FindByEmailAsync(username);
            if (user == null)
            {
                throw new LevelsUpException(ErrorMessages.USER_NOT_EXIST, ErrorCodes.NotFound);
            }

            this.logger.Debug("Getting roles of the user.");
            IList<string> roles = await this._userManager.GetRolesAsync(user);

            this.logger.Debug($"Generating token of user with the username: {user.UserName} and role: {roles.FirstOrDefault()}");

            this.logger.Debug($"");
            refreshToken.IsUsed = true;
            this._userService.UpdateRefreshToken(refreshToken);

            TokenResponse tokenResponse = this._GenerateJSONWebToken(user, roles);

            this.logger.Debug("RefreshToken process ended.");

            return tokenResponse;
        }

        /// <summary>
        /// Logouts this instance.
        /// </summary>
        /// <returns>
        /// true or false
        /// </returns>
        public async Task<bool> Logout()
        {
            string userId = this.httpContextAccessor.GetCurrentUserId();
            this.logger.Debug($"Getting user by id: {userId}");

            LevelsUpUser user = await this._userManager.FindByIdAsync(userId);
            if (user != null)
            {
                await this._signInManager.SignOutAsync();
            }

            this.logger.Debug("Logout process ended.");

            return true;
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Generates the json web token.
        /// </summary>
        /// <param name="applicationUser">The application user.</param>
        /// <param name="roles">The roles.</param>
        /// <returns>
        /// the token response
        /// </returns>
        private TokenResponse _GenerateJSONWebToken(LevelsUpUser applicationUser, IList<string> roles)
        {
            List<Claim> claims = new List<Claim>()
            {
                new Claim(ClaimTypes.Name, applicationUser.UserName),
                new Claim(ClaimTypes.Email, applicationUser.Email),
                new Claim(ClaimTypes.Role, roles.FirstOrDefault()),
                new Claim(ClaimTypes.NameIdentifier , applicationUser.Id)
            };

            Dictionary<string, object> claimsDictionary = claims.ToDictionary(x => x.Type, x => (object)x.Value);

            SecurityTokenDescriptor tokenDescriptor = new SecurityTokenDescriptor()
            {
                Subject = new ClaimsIdentity(claims, Constants.TokenType),
                Claims = claimsDictionary,
                Expires = DateTime.UtcNow.AddMinutes(this._jsonWebTokenSetting.ExpireTime),
                SigningCredentials = new SigningCredentials(this._jsonWebTokenSetting.Key.ConvertToSymmetricSecurityKey(), SecurityAlgorithms.HmacSha256),
                IssuedAt = DateTime.UtcNow,
                Issuer = this._jsonWebTokenSetting.Issuer,
                Audience = this._jsonWebTokenSetting.Issuer,
            };

            SecurityToken jwtToken = this._jwtSecurityTokenHandler.CreateToken(tokenDescriptor);
            string token = this._jwtSecurityTokenHandler.WriteToken(jwtToken);
            string refreshToken = this._GetRefreshToken(applicationUser.Id);

            TokenResponse tokenResponse = new TokenResponse()
            {
                auth_token = token,
                refresh_token = refreshToken,
                expiration_time = jwtToken.ValidTo.ToString(Constants.MobileDateTimeFormat),
                issue_time = jwtToken.ValidFrom.ToString(Constants.MobileDateTimeFormat),
                role = roles.FirstOrDefault()
            };

            return tokenResponse;
        }

        /// <summary>
        /// Gets the refresh token.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <returns>
        /// the refresh token
        /// </returns>
        private string _GetRefreshToken(string userId)
        {
            string refreshToken = string.Empty;
            byte[] randomNumber = new byte[32];
            using (RandomNumberGenerator randomNumberGenerator = RandomNumberGenerator.Create())
            {
                randomNumberGenerator.GetBytes(randomNumber);
                refreshToken = Convert.ToBase64String(randomNumber);
            }

            RefreshToken refreshTokenObj = new RefreshToken()
            {
                UserId = userId,
                Token = refreshToken,
                IsUsed = false,
                IsRevoked = false,
                CreatedOn = DateTime.UtcNow
            };
            this._userService.AddRefreshToken(refreshTokenObj);

            return refreshToken;
        }
        #endregion
    }
}