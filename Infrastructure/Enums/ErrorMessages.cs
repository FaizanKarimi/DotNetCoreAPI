namespace Infrastructure.Enums
{
    /// <summary>
    /// ErrorMessages enumerations
    /// </summary>
    public enum ErrorMessages
    {
        /// <summary>
        /// The internal server error
        /// </summary>
        INTERNAL_SERVER_ERROR,

        /// <summary>
        /// The model binder deserialization error
        /// </summary>
        MODEL_BINDER_DESERIALIZATION_ERROR,

        /// <summary>
        /// The model binding context error
        /// </summary>
        MODEL_BINDING_CONTEXT_ERROR,

        /// <summary>
        /// The controller factory context null
        /// </summary>
        CONTROLLER_FACTORY_CONTEXT_NULL,

        /// <summary>
        /// The unauthorized error
        /// </summary>
        UNAUTHORIZED_ERROR,

        /// <summary>
        /// The forbidden error
        /// </summary>
        FORBIDDEN_ERROR,

        /// <summary>
        /// The user already exist
        /// </summary>
        USER_ALREADY_EXIST,

        /// <summary>
        /// The user not created
        /// </summary>
        USER_NOT_CREATED,

        /// <summary>
        /// The user not added to role
        /// </summary>
        USER_NOT_ADDED_TO_ROLE,

        /// <summary>
        /// The role already exist
        /// </summary>
        ROLE_ALREADY_EXIST,

        /// <summary>
        /// The user profile already exist
        /// </summary>
        USER_PROFILE_ALREADY_EXIST,

        /// <summary>
        /// The user not exist
        /// </summary>
        USER_NOT_EXIST,

        /// <summary>
        /// The user is disabled
        /// </summary>
        USER_IS_DISABLED,

        /// <summary>
        /// The user invalid username password
        /// </summary>
        USER_INVALID_USERNAME_PASSWORD,

        /// <summary>
        /// The error occured while sending message using twillio
        /// </summary>
        ERROR_OCCURED_WHILE_SENDING_MESSAGE_USING_TWILLIO,

        /// <summary>
        /// The user invalid verification code
        /// </summary>
        USER_INVALID_VERIFICATION_CODE,

        /// <summary>
        /// The user profile not exist
        /// </summary>
        USER_PROFILE_NOT_EXIST,

        /// <summary>
        /// The user not successfully registered
        /// </summary>
        USER_NOT_SUCCESSFULLY_REGISTERED,

        /// <summary>
        /// The user categories not exist
        /// </summary>
        USER_CATEGORIES_NOT_EXIST,

        /// <summary>
        /// The sub category not exists
        /// </summary>
        SUB_CATEGORY_NOT_EXISTS,

        /// <summary>
        /// The category not exists
        /// </summary>
        CATEGORY_NOT_EXISTS,

        /// <summary>
        /// The claim not found
        /// </summary>
        CLAIMS_NOT_FOUND,

        /// <summary>
        /// The claim not found
        /// </summary>
        CLAIM_NOT_FOUND,

        /// <summary>
        /// The token is not valid
        /// </summary>
        TOKEN_IS_NOT_VALID,

        /// <summary>
        /// The service provider not exists
        /// </summary>
        SERVICE_PROVIDER_NOT_EXISTS,

        /// <summary>
        /// The SQL exception
        /// </summary>
        SQL_EXCEPTION,

        /// <summary>
        /// The token is expired
        /// </summary>
        TOKEN_IS_EXPIRED
    }
}