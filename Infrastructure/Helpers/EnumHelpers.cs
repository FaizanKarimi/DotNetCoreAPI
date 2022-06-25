using System;
using System.ComponentModel;
using System.Linq;
using System.Reflection;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// EnumHelpers class
    /// </summary>
    public static class EnumHelpers
    {
        /// <summary>
        /// Determines whether the specified value is enum.
        /// </summary>
        /// <typeparam name="TEnum">The type of the enum.</typeparam>
        /// <param name="value">The value.</param>
        /// <returns>
        /// <c>true</c> if the specified value is enum; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsEnum<TEnum>(string value) where TEnum : struct
        {
            bool IsParsed = false;

            if (Enum.TryParse<TEnum>(value, out _))
            {
                IsParsed = true;
            }

            return IsParsed;
        }

        /// <summary>
        /// Converts to enum.
        /// </summary>
        /// <typeparam name="TEnum">The type of the enum.</typeparam>
        /// <param name="value">The value.</param>
        /// <returns>
        /// the enum
        /// </returns>
        public static TEnum ToEnum<TEnum>(string value) where TEnum : struct
        {
            Enum.TryParse<TEnum>(value, out TEnum val);

            return val;
        }

        /// <summary>
        /// Gets the enum value from description.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="description">The description.</param>
        /// <returns>the enum</returns>
        /// <exception cref="InvalidOperationException"></exception>
        public static T GetEnumValueFromDescription<T>(string description) where T : struct
        {
            Type type = typeof(T);

            if (!type.IsEnum)
            {
                throw new InvalidOperationException();
            }

            foreach (FieldInfo fieldInfo in type.GetFields())
            {
                DescriptionAttribute attribute = Attribute.GetCustomAttribute(fieldInfo, typeof(DescriptionAttribute)) as DescriptionAttribute;
                if (attribute != null)
                {
                    if (attribute.Description.Equals(description))
                    {
                        return (T)fieldInfo.GetValue(null);
                    }
                }
                else
                {
                    if (fieldInfo.Name.Equals(description))
                    {
                        return (T)fieldInfo.GetValue(null);
                    }
                }
            }

            return default;
        }

        /// <summary>
        /// Gets the description.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>the enum description</returns>
        public static string GetDescription(Enum value)
        {
            Type type = value.GetType();

            FieldInfo fieldInfo = type.GetField(value.ToString());

            DescriptionAttribute[] attributes = fieldInfo.GetCustomAttributes(typeof(DescriptionAttribute), false) as DescriptionAttribute[];

            if (attributes != null && attributes.Any())
            {
                return attributes.FirstOrDefault()?.Description;
            }

            return value.ToString();
        }
    }
}