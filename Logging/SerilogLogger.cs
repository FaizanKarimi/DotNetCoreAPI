using System;
using System.Linq;
using System.Runtime.CompilerServices;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using Microsoft.AspNetCore.Http;
using Serilog.Context;
using Serilog.Events;

namespace Logging
{
    /// <summary>
    /// SerilogLogger class
    /// </summary>
    /// <seealso cref="ILogger" />
    public class SerilogLogger : ILogger
    {
        #region Private Members
        /// <summary>
        /// The logger
        /// </summary>
        private readonly Serilog.ILogger _logger;

        /// <summary>
        /// The HTTP context accessor
        /// </summary>
        private readonly IHttpContextAccessor _httpContextAccessor;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="SerilogLogger" /> class.
        /// </summary>
        /// <param name="logger">The logger.</param>
        /// <param name="httpContextAccessor">The HTTP context accessor.</param>
        public SerilogLogger(Serilog.ILogger logger, IHttpContextAccessor httpContextAccessor)
        {
            this._logger = logger;
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
            this.LogMessge(message, memberName, this._GetFileName(fileName), lineNumber, LogEventLevel.Information);
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Logs the messge.
        /// </summary>
        /// <param name="message">The message.</param>
        private void LogMessge(string message, string memberName, string className, int lineNumber, LogEventLevel logEventLevel)
        {
            using (LogContext.PushProperty(Constants.MethodProperty, memberName))
            {
                using (LogContext.PushProperty(Constants.ClassProperty, className))
                {
                    using (LogContext.PushProperty(Constants.LineProperty, lineNumber))
                    {
                        using (LogContext.PushProperty(Constants.UserId, this._httpContextAccessor.GetCurrentUserId()))
                        {
                            using (LogContext.PushProperty(Constants.Email, this._httpContextAccessor.GetCurrentUserEmail()))
                            {
                                switch (logEventLevel)
                                {
                                    case LogEventLevel.Debug:
                                        Serilog.Log.Debug(message);
                                        break;
                                    case LogEventLevel.Information:
                                        Serilog.Log.Information(message);
                                        break;
                                    case LogEventLevel.Warning:
                                        this._logger.Warning(message);
                                        break;
                                    case LogEventLevel.Error:
                                        this._logger.Error(message);
                                        break;
                                    case LogEventLevel.Fatal:
                                        this._logger.Fatal(message);
                                        break;
                                    default:
                                        this._logger.Debug(message);
                                        break;
                                }
                            }
                        }
                    }
                }
            }
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