using Infrastructure.DatabaseModels;

namespace Infrastructure.ExtensionMethods.DatabaseModels
{
    /// <summary>
    /// UserProfileExtension class
    /// </summary>
    public static class UserProfileExtension
    {
        /// <summary>
        /// Gets the mobile number.
        /// </summary>
        /// <param name="userProfile">The user profile.</param>
        /// <returns>the converted mobile number</returns>
        public static string GetMobileNumber(this UserProfile userProfile)
        {
            return string.Concat(userProfile.CountryCode, userProfile.MobileNumber);
        }
    }
}