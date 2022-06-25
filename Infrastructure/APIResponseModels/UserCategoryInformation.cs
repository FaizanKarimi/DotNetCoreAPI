using System.Collections.Generic;

namespace Infrastructure.APIResponseModels
{
    /// <summary>
    /// UserCategoryInformation class
    /// </summary>
    /// <seealso cref="IBaseResponse" />
    public class UserCategoryInformation : IBaseResponse
    {
        /// <summary>
        /// Gets or sets the category.
        /// </summary>
        /// <value>
        /// The category.
        /// </value>
        public string Category { get; set; }

        /// <summary>
        /// Gets or sets the level value.
        /// </summary>
        /// <value>
        /// The level value.
        /// </value>
        public string LevelValue { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is locked.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is locked; otherwise, <c>false</c>.
        /// </value>
        public bool IsLocked { get; set; }

        /// <summary>
        /// Gets or sets the user sub category information.
        /// </summary>
        /// <value>
        /// The user sub category information.
        /// </value>
        public List<UserSubCategoryInformation> UserSubCategoryInformation { get; set; }
    }
}