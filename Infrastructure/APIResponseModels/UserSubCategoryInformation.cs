namespace Infrastructure.APIResponseModels
{
    /// <summary>
    /// UserSubCategoryInformation class
    /// </summary>
    /// <seealso cref="IBaseResponse" />
    public class UserSubCategoryInformation : IBaseResponse
    {
        /// <summary>
        /// Gets or sets the category.
        /// </summary>
        /// <value>
        /// The category.
        /// </value>
        public string Category { get; set; }

        /// <summary>
        /// Gets or sets the points.
        /// </summary>
        /// <value>
        /// The points.
        /// </value>
        public string Points { get; set; }

        /// <summary>
        /// Gets or sets the current repetitions.
        /// </summary>
        /// <value>
        /// The current repetitions.
        /// </value>
        public int CurrentRepetitions { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this instance is locked.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is locked; otherwise, <c>false</c>.
        /// </value>
        public bool? IsLocked { get; set; }

        /// <summary>
        /// Gets or sets the image path.
        /// </summary>
        /// <value>
        /// The image path.
        /// </value>
        public string ImagePath { get; set; }
    }
}