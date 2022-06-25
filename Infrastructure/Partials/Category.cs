using System.Collections.Generic;

namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// Category class
    /// </summary>
    public partial class Category
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Category"/> class.
        /// </summary>
        public Category()
        {
            this.UserCategories = new List<UserCategory>();
        }

        /// <summary>
        /// Gets or sets the user categories.
        /// </summary>
        /// <value>
        /// The user categories.
        /// </value>
        public List<UserCategory> UserCategories { get; set; }
    }
}