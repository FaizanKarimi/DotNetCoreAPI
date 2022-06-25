namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// UserSubCategory class
    /// </summary>
    public partial class UserSubCategory
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategory"/> class.
        /// </summary>
        public UserSubCategory()
        {

        }

        /// <summary>
        /// Gets or sets the sub category.
        /// </summary>
        /// <value>
        /// The sub category.
        /// </value>
        public SubCategory SubCategory { get; set; }

        /// <summary>
        /// Gets or sets the user.
        /// </summary>
        /// <value>
        /// The user.
        /// </value>
        public AspNetUsers User { get; set; }
    }   
}