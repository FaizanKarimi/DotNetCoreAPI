namespace Infrastructure.APIResponseModels
{
    /// <summary>
    /// UserSubCategoryDetailInformation class
    /// </summary>
    /// <seealso cref="IBaseResponse" />
    public class UserSubCategoryDetailInformation : IBaseResponse
    {
        /// <summary>
        /// Gets or sets the points.
        /// </summary>
        /// <value>
        /// The points.
        /// </value>
        public int Points { get; set; }

        /// <summary>
        /// Gets or sets the reps.
        /// </summary>
        /// <value>
        /// The reps.
        /// </value>
        public int Reps { get; set; }

        /// <summary>
        /// Gets or sets the total number of play.
        /// </summary>
        /// <value>
        /// The total number of play.
        /// </value>
        public int TotalNumberOfPlay { get; set; }

        /// <summary>
        /// Gets or sets the description.
        /// </summary>
        /// <value>
        /// The description.
        /// </value>
        public string Description { get; set; }
    }
}