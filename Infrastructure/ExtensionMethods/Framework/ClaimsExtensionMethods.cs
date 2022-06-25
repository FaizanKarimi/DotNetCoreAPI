using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using Infrastructure.Enums;
using Infrastructure.Exceptions;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// ClaimsExtensionMethods class
    /// </summary>
    public static class ClaimsExtensionMethods
    {
        /// <summary>
        /// Gets the claim value.
        /// </summary>
        /// <param name="claims">The claims.</param>
        /// <param name="claimType">Type of the claim.</param>
        /// <returns>
        /// the claim value
        /// </returns>
        /// <exception cref="LevelsUpException">
        /// Claim not found exception
        /// </exception>
        public static string GetClaimValue(this IEnumerable<Claim> claims, string claimType)
        {
            if (claims == null)
            {
                throw new LevelsUpException(ErrorMessages.CLAIMS_NOT_FOUND, ErrorCodes.Unauthorized);
            }

            if (!claims.Any(claim => claim.Type == claimType))
            {
                throw new LevelsUpException(ErrorMessages.CLAIM_NOT_FOUND, ErrorCodes.Unauthorized, claimType);
            }

            return claims.FirstOrDefault(claim => claim.Type == claimType).Value;
        }
    }
}