namespace Infrastructure.Enums
{
    /// <summary>
    /// ErrorCodes enumeration
    /// </summary>
    public enum ErrorCodes
    {
        /// <summary>
        /// The created
        /// </summary>
        Created = 201,

        /// <summary>
        /// The bad request
        /// </summary>
        BadRequest = 400,

        /// <summary>
        /// The unauthorized
        /// </summary>
        Unauthorized = 401,

        /// <summary>
        /// The forbidden
        /// </summary>
        Forbidden = 403,

        /// <summary>
        /// The not found
        /// </summary>
        NotFound = 404,

        /// <summary>
        /// The conflict
        /// </summary>
        Conflict = 409,

        /// <summary>
        /// The unprocessable entity
        /// </summary>
        UnprocessableEntity = 422,

        /// <summary>
        /// The internal server error
        /// </summary>
        InternalServerError = 500
    }
}