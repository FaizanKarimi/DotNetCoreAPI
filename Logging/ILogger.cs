using System.Runtime.CompilerServices;

namespace Logging
{
    /// <summary>
    /// ILogger interface
    /// </summary>
    public interface ILogger
    {
        /// <summary>
        /// Debugs the specified message.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="memberName">Name of the member.</param>
        /// <param name="lineNumber">The line number.</param>
        /// <param name="fileName">Name of the file.</param>
        void Debug(string message = "", string emailAddress = "", [CallerMemberName] string memberName = "", [CallerLineNumber] int lineNumber = 0, [CallerFilePath] string fileName = "");
    }
}