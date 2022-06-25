namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// SubCategory class
    /// </summary>
    public partial class SubCategory
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SubCategory"/> class.
        /// </summary>
        public SubCategory()
        {

        }

        /// <summary>
        /// Gets or sets the category.
        /// </summary>
        /// <value>
        /// The category.
        /// </value>
        public Category Category { get; set; }
    }
}