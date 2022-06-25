using System.Linq;
using System.Runtime.CompilerServices;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using Microsoft.AspNetCore.Http;
using NLog.Web;

namespace Logging
{
    /// <summary>
    /// NLogLogger class
    /// </summary>
    /// <seealso cref="ILogger" />
    public class NLogLogger : ILogger
    {
        #region Private Members
        /// <summary>
        /// The logger
        /// </summary>
        private readonly NLog.Logger _logger;

        /// <summary>
        /// The HTTP context accessor
        /// </summary>
        private readonly IHttpContextAccessor _httpContextAccessor;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="NLogLogger"/> class.
        /// </summary>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        public NLogLogger(IHttpContextAccessor httpContextAccessor)
        {
            this._logger = NLogBuilder.ConfigureNLog(Constants.NLogConfig).GetCurrentClassLogger();

            this._httpContextAccessor = httpContextAccessor;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Debugs the specified message.
        /// </summary>
        /// <param name="message">The text.</param>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="memberName">Name of the member.</param>
        /// <param name="lineNumber">The line number.</param>
        /// <param name="fileName">Name of the file.</param>
        public void Debug(string message = "", string emailAddress = "", [CallerMemberName] string memberName = "", [CallerLineNumber] int lineNumber = 0, [CallerFilePath] string fileName = "")
        {
            this._logger.Debug(this._GetMessage(message, emailAddress, memberName, lineNumber, fileName));
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Gets the message.
        /// </summary>
        /// <param name="text">The text.</param>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="methodName">Name of the method.</param>
        /// <param name="lineNumber">The line number.</param>
        /// <param name="fileName">Name of the file.</param>
        /// <returns>
        /// the message
        /// </returns>
        private string _GetMessage(string text, string emailAddress, string methodName, int lineNumber, string fileName)
        {
            return ($"Message=[{text}] EmailAddress=[{this._GetEmailAddress(emailAddress)}] Method=[{methodName}] File=[{this._GetFileName(fileName)}] LineNumber=[{lineNumber}]");
        }

        /// <summary>
        /// Gets the email address.
        /// </summary>
        /// <param name="emailAddress">The email address.</param>
        /// <returns>
        /// the current logged in user email
        /// </returns>
        private string _GetEmailAddress(string emailAddress)
        {
            if (string.IsNullOrEmpty(emailAddress))
            {
                emailAddress = this._httpContextAccessor.GetCurrentUserEmail();
            }

            return emailAddress;
        }

        /// <summary>
        /// Gets the name of the file.
        /// </summary>
        /// <param name="fileName">Name of the file.</param>
        /// <returns>the file name</returns>
        private string _GetFileName(string fileName)
        {
            return fileName.Split('\\').LastOrDefault().Replace(".cs", string.Empty);
        }
        #endregion
    }
}