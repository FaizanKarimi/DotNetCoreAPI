namespace Infrastructure.Common
{
    /// <summary>
    /// Routes class
    /// </summary>
    public static class Routes
    {
        /// <summary>
        /// The controller route
        /// </summary>
        public const string ControllerRoute = "api/[controller]/[action]";

        /// <summary>
        /// The get user sub categories
        /// </summary>
        public const string GetUserSubCategories = "get-sub-categories";

        /// <summary>
        /// The get user sub category detail
        /// </summary>
        public const string GetUserSubCategoryDetail = "get-sub-category-detail/{id}";

        /// <summary>
        /// The account verification
        /// </summary>
        public const string AccountVerification = "account-verification";

        /// <summary>
        /// The login
        /// </summary>
        public const string Login = "login";

        /// <summary>
        /// The refresh token
        /// </summary>
        public const string RefreshToken = "refresh-token";

        /// <summary>
        /// The logout
        /// </summary>
        public const string Logout = "logout";

        /// <summary>
        /// The change password
        /// </summary>
        public const string ChangePassword = "change-password";

        /// <summary>
        /// The create role
        /// </summary>
        public const string CreateRole = "create-role";

        /// <summary>
        /// The register user
        /// </summary>
        public const string RegisterUser = "register";

        /// <summary>
        /// The register admin user
        /// </summary>
        public const string RegisterAdminUser = "register-admin";

        /// <summary>
        /// The get user categories
        /// </summary>
        public const string GetUserCategories = "get-categories";

        /// <summary>
        /// The get user profile
        /// </summary>
        public const string GetUserProfile = "get-profile";

        /// <summary>
        /// The update user profile
        /// </summary>
        public const string UpdateUserProfile = "update-profile";

        /// <summary>
        /// The process details
        /// </summary>
        public const string ProcessDetails = "get-process-details";
    }
}