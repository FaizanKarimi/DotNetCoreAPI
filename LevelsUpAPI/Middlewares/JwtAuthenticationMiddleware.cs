using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Threading.Tasks;
using Infrastructure.Common;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.ExtensionMethods.Framework;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Http;
using Microsoft.IdentityModel.Tokens;

namespace LevelsUpAPI.Middlewares
{
    /// <summary>
    /// JwtAuthenticationMiddleware class
    /// </summary>
    public class JwtAuthenticationMiddleware
    {
        /// <summary>
        /// The next
        /// </summary>
        private readonly RequestDelegate _next;

        /// <summary>
        /// Initializes a new instance of the <see cref="JwtAuthenticationMiddleware" /> class.
        /// </summary>
        /// <param name="next">The next.</param>
        public JwtAuthenticationMiddleware(RequestDelegate next)
        {
            this._next = next;
        }

        /// <summary>
        /// Invokes the specified context.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="jwtSecurityTokenHandler">The JWT security token handler.</param>
        /// <exception cref="LevelsUpException">Different exceptions based on the token validations</exception>
        public async Task Invoke(HttpContext context, JwtSecurityTokenHandler jwtSecurityTokenHandler)
        {
            string accessToken = context.Request.Headers[Constants.AuthorizationHeader];
            if (!string.IsNullOrEmpty(accessToken))
            {
                accessToken = accessToken.Replace(Constants.TokenType, string.Empty, StringComparison.OrdinalIgnoreCase).Trim();
                SecurityToken validToken;

                try
                {
                    jwtSecurityTokenHandler.ValidateToken(accessToken, TokenValidationParameterHelpers.GetTokenValidationParameters(), out validToken);
                }
                catch (SecurityTokenExpiredException)
                {
                    throw new LevelsUpException(ErrorMessages.TOKEN_IS_EXPIRED, ErrorCodes.Unauthorized);
                }
                catch (ArgumentException)
                {
                    throw new LevelsUpException(ErrorMessages.TOKEN_IS_NOT_VALID, ErrorCodes.Unauthorized);
                }

                JwtSecurityToken validJwtToken = validToken as JwtSecurityToken;

                if (validJwtToken == null)
                {
                    throw new LevelsUpException(ErrorMessages.UNAUTHORIZED_ERROR, ErrorCodes.Unauthorized);
                }

                if (!validJwtToken.Header.Alg.Equals(SecurityAlgorithms.HmacSha256, StringComparison.OrdinalIgnoreCase))
                {
                    throw new LevelsUpException(ErrorMessages.UNAUTHORIZED_ERROR, ErrorCodes.Unauthorized);
                }

                context.User = this._GetClaimsPrincipal(validJwtToken);
            }

            await this._next(context);
        }

        /// <summary>
        /// Gets the claims principal.
        /// </summary>
        /// <param name="validJwtToken">The valid JWT token.</param>
        /// <returns>
        /// the claims principal
        /// </returns>
        private ClaimsPrincipal _GetClaimsPrincipal(JwtSecurityToken validJwtToken)
        {
            List<Claim> claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, validJwtToken.Claims.GetClaimValue(EnumHelpers.GetDescription(MiddlewareClaimTypes.Name))),
                new Claim(ClaimTypes.Role, validJwtToken.Claims.GetClaimValue(EnumHelpers.GetDescription(MiddlewareClaimTypes.Role))),
                new Claim(ClaimTypes.Email, validJwtToken.Claims.GetClaimValue(EnumHelpers.GetDescription(MiddlewareClaimTypes.Email))),
                new Claim(ClaimTypes.NameIdentifier, validJwtToken.Claims.GetClaimValue(EnumHelpers.GetDescription(MiddlewareClaimTypes.UserId)))
            };

            ClaimsIdentity identity = new ClaimsIdentity(claims, Constants.TokenType);
            return new ClaimsPrincipal(identity);
        }
    }
}