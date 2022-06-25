using System;
using Infrastructure.Configurations;
using Infrastructure.ExtensionMethods.Framework;
using Microsoft.IdentityModel.Tokens;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// TokenValidationParameterHelpers class
    /// </summary>
    public static class TokenValidationParameterHelpers
    {
        /// <summary>
        /// Gets the token validation parameters.
        /// </summary>
        /// <returns>
        /// the token validation parameters
        /// </returns>
        public static TokenValidationParameters GetTokenValidationParameters()
        {
            JsonWebTokenSettings jsonWebTokenSettings = SettingsHelper.GetJsonWebTokenSettings();

            return new TokenValidationParameters()
            {
                ValidateIssuer = true,
                ValidateAudience = true,
                ValidateLifetime = true,
                ValidateIssuerSigningKey = true,
                ValidIssuer = jsonWebTokenSettings.Issuer,
                ValidAudience = jsonWebTokenSettings.Issuer,
                IssuerSigningKey = jsonWebTokenSettings.Key.ConvertToSymmetricSecurityKey(),
                ClockSkew = TimeSpan.Zero
            };
        }

        /// <summary>
        /// Gets the expired token validation parameters.
        /// </summary>
        /// <returns>
        /// the token validation parameters
        /// </returns>
        public static TokenValidationParameters GetExpiredTokenValidationParameters()
        {
            JsonWebTokenSettings jsonWebTokenSettings = SettingsHelper.GetJsonWebTokenSettings();

            return new TokenValidationParameters()
            {
                ValidateIssuer = false,
                ValidateAudience = false,
                ValidateLifetime = false,
                ValidateIssuerSigningKey = true,
                ValidIssuer = jsonWebTokenSettings.Issuer,
                ValidAudience = jsonWebTokenSettings.Issuer,
                IssuerSigningKey = jsonWebTokenSettings.Key.ConvertToSymmetricSecurityKey(),
                ClockSkew = TimeSpan.Zero
            };
        }
    }
}