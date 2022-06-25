using System.Collections.Generic;
using System.Globalization;
using System.Text;
using Infrastructure.Common;
using Infrastructure.Enums;
using Infrastructure.Helpers;
using Microsoft.IdentityModel.Tokens;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// StringExtensions
    /// </summary>
    public static class StringExtensionMethods
    {
        /// <summary>
        /// Converts to pascal.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the converted pascal case string
        /// </returns>
        public static string ToPascal(this string value)
        {
            StringBuilder resultBuilder = new StringBuilder();

            foreach (char character in value)
            {
                if (!char.IsLetterOrDigit(character))
                {
                    resultBuilder.Append(Constants.EmptySpace);
                }
                else
                {
                    resultBuilder.Append(character);
                }
            }

            string result = resultBuilder.ToString();

            result = result.ToLower();

            TextInfo textInfo = new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.English), false).TextInfo;

            result = textInfo.ToTitleCase(result).Replace(Constants.EmptySpace, string.Empty);

            return result;
        }

        /// <summary>
        /// Gets the comma seperated string.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the comma seperated string
        /// </returns>
        public static string GetCommaSeperatedString<T>(this List<T> value)
        {
            StringBuilder stringBuilder = new StringBuilder();

            for (int i = 0; i < value.Count; i++)
            {
                if (i < value.Count - 1)
                {
                    stringBuilder.Append(value[i].ToString() + ",");
                }
                else
                {
                    stringBuilder.Append(value[i].ToString());
                }
            }

            return stringBuilder.ToString();
        }

        /// <summary>
        /// Determines whether [is null or empty].
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// <c>true</c> if [is null or empty] [the specified value]; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsNotNullOrEmpty(this string value)
        {
            return !string.IsNullOrEmpty(value) && !value.Equals(Constants.Null);
        }

        /// <summary>
        /// Converts to symmetric security key.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the symmetric security key
        /// </returns>
        public static SymmetricSecurityKey ConvertToSymmetricSecurityKey(this string value)
        {
            return new SymmetricSecurityKey(value.GetEncodedBytes());
        }

        /// <summary>
        /// Gets the encoded bytes.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the encoded bytes
        /// </returns>
        public static byte[] GetEncodedBytes(this string value)
        {
            return Encoding.ASCII.GetBytes(value);
        }
    }
}