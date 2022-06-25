namespace Infrastructure.APIResponseModels
{
    /// <summary>
    /// BasicResponse class
    /// </summary>
    /// <seealso cref="IBaseResponse" />
    public class BasicResponse : IBaseResponse
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BasicResponse"/> class.
        /// </summary>
        public BasicResponse()
        {
            this.Success = true;
            this.ErrorMessage = string.Empty;
        }

        /// <summary>
        /// Gets or sets the data.
        /// </summary>
        /// <value>
        /// The data.
        /// </value>
        public dynamic Data { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="BasicResponse"/> is success.
        /// </summary>
        /// <value>
        ///   <c>true</c> if success; otherwise, <c>false</c>.
        /// </value>
        public bool Success { get; set; }

        /// <summary>
        /// Gets or sets the error message.
        /// </summary>
        /// <value>
        /// The error message.
        /// </value>        
        public string ErrorMessage { get; set; }
    }
}