using System;
using System.Text.RegularExpressions;
using Microsoft.AspNetCore.Routing;

namespace LevelsUpAPI.Formatters
{
    /// <summary>
    /// UrlFormatter class
    /// </summary>
    /// <seealso cref="IOutboundParameterTransformer" />
    public class UrlFormatter : IOutboundParameterTransformer
    {
        /// <summary>
        /// Transforms the specified route value to a string for inclusion in a URI.
        /// </summary>
        /// <param name="value">The route value to transform.</param>
        /// <returns>
        /// The transformed value.
        /// </returns>
        public string TransformOutbound(object value)
        {
            if (value is null)
            {
                return null;
            }

            return Regex.Replace(value.ToString()!, "([a-z])([A-Z])", "$1-$2", RegexOptions.CultureInvariant,
                TimeSpan.FromMilliseconds(100)).ToLowerInvariant();
        }
    }
}