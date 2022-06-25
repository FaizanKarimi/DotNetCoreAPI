namespace Infrastructure.DatabaseModels
{
    /// <summary>
    /// UserProfile class
    /// </summary>
    public partial class UserProfile
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserProfile"/> class.
        /// </summary>
        public UserProfile()
        {

        }

        /// <summary>
        /// Gets or sets the user.
        /// </summary>
        /// <value>
        /// The user.
        /// </value>
        public AspNetUsers User { get; set; }
    }
}