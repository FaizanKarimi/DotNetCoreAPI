using System.Collections.Generic;

namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// UserCategory
    /// </summary>
    public partial class UserCategory
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategory"/> class.
        /// </summary>
        public UserCategory()
        {
            UserSubCategories = new List<UserSubCategory>();
            SubCategories = new List<SubCategory>();
        }

        /// <summary>
        /// Gets or sets the category.
        /// </summary>
        /// <value>
        /// The category.
        /// </value>
        public Category Category { get; set; }

        /// <summary>
        /// Gets or sets the sub categories.
        /// </summary>
        /// <value>
        /// The sub categories.
        /// </value>
        public List<SubCategory> SubCategories { get; set; }

        /// <summary>
        /// Gets or sets the user sub categories.
        /// </summary>
        /// <value>
        /// The user sub categories.
        /// </value>
        public List<UserSubCategory> UserSubCategories { get; set; }
    }
}