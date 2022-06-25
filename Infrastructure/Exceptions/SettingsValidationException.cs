using System;
using Infrastructure.Helpers;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure.Exceptions
{
    /// <summary>
    /// A utility <see cref="Exception"/> that indicates a strong typed configuration model was not configured correctly
    /// </summary>
    [Serializable]
    public class SettingsValidationException : Exception
    {
        /// <summary>
        /// Creates a new instance of the <see cref="SettingsValidationException" />
        /// </summary>
        /// <param name="className">The name of the class being validated</param>
        /// <param name="propertyName">The property of the instance that was invalid</param>
        /// <param name="error">A description of the configuration error</param>
        public SettingsValidationException(string className, string propertyName, string error) : this(GetMessage(className, propertyName, error))
        {
        }

        /// <summary>
        /// Gets the message.
        /// </summary>
        /// <param name="className">Name of the class.</param>
        /// <param name="propertyName">Name of the property.</param>
        /// <param name="message">The message.</param>
        /// <returns>
        /// the message
        /// </returns>
        private static string GetMessage(string className, string propertyName, string message)
        {
            return $@"Settings were invalid: {className}.{propertyName}. {message}. 
                    Check that your configuration has been loaded correctly, and all necessary values are set in the configuration files.";
        }

        /// <summary>
        /// Creates a new instance of the <see cref="SettingsValidationException" />
        /// </summary>
        /// <param name="errorMessage">A description of the configuration error</param>
        public SettingsValidationException(string errorMessage) : base(errorMessage)
        {
           
        }
    }
}