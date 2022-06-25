using System;
using System.Runtime.Serialization;
using Infrastructure.Enums;

namespace Infrastructure.Exceptions
{
    /// <summary>
    /// LevelsUpException class
    /// </summary>
    /// <seealso cref="Exception" />
    [Serializable]
    public class LevelsUpException : Exception
    {
        /// <summary>
        /// The error codes
        /// </summary>
        public ErrorCodes ErrorCode = ErrorCodes.BadRequest;

        /// <summary>
        /// The arguments
        /// </summary>
        public object[] arguments = null;

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException"/> class.
        /// </summary>
        public LevelsUpException()
        : base() { }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException" /> class.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <param name="errorCode">The error code.</param>
        public LevelsUpException(ErrorMessages message, ErrorCodes errorCode = ErrorCodes.BadRequest)
            : base(message.ToString())
        {
            this.ErrorCode = errorCode;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException" /> class.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <param name="errorCode">The error code.</param>
        /// <param name="args">The arguments.</param>
        public LevelsUpException(ErrorMessages message, ErrorCodes errorCode = ErrorCodes.BadRequest, params object[] args) : base(message.ToString())
        {
            this.ErrorCode = errorCode;
            this.arguments = args;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException"/> class.
        /// </summary>
        /// <param name="format">The format.</param>
        /// <param name="args">The arguments.</param>
        public LevelsUpException(string format, params object[] args)
            : base(string.Format(format, args)) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException"/> class.
        /// </summary>
        /// <param name="message">The error message that explains the reason for the exception.</param>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        public LevelsUpException(ErrorMessages message, Exception innerException)
            : base(message.ToString(), innerException) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException"/> class.
        /// </summary>
        /// <param name="format">The format.</param>
        /// <param name="innerException">The inner exception.</param>
        /// <param name="args">The arguments.</param>
        public LevelsUpException(string format, Exception innerException, params object[] args)
            : base(string.Format(format, args), innerException) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpException"/> class.
        /// </summary>
        /// <param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"></see> that holds the serialized object data about the exception being thrown.</param>
        /// <param name="context">The <see cref="T:System.Runtime.Serialization.StreamingContext"></see> that contains contextual information about the source or destination.</param>
        protected LevelsUpException(SerializationInfo info, StreamingContext context)
            : base(info, context) { }
    }
}