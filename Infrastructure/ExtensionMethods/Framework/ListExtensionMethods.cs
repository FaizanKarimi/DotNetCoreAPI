using System.Collections.Generic;
using System.Linq;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// ListExtension class
    /// </summary>
    public static class ListExtensionMethods
    {
        /// <summary>
        /// Determines whether this instance is any.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source">The source.</param>
        /// <returns>
        /// <c>true</c> if the specified source is any; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsAny<T>(this IList<T> source)
        {
            return source != null && source.Any();
        }

        /// <summary>
        /// Determines whether [is not any].
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source">The source.</param>
        /// <returns>
        /// <c>true</c> if [is not any] [the specified source]; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsNotAny<T>(this IList<T> source)
        {
            return source == null || !source.Any();
        }
    }
}