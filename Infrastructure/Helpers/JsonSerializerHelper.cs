using System;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// JsonSerializerHelper class
    /// </summary>
    public static class JsonSerializerHelper
    {
        /// <summary>
        /// Serializes the specified request.
        /// </summary>
        /// <typeparam name="T">the object</typeparam>
        /// <param name="request">The request.</param>
        /// <returns>
        /// json string
        /// </returns>
        public static string Serialize<T>(T request)
        {
            return JsonConvert.SerializeObject(request, DefaultJsonSerializerSettings(out _));
        }

        /// <summary>
        /// Serializes the specified request.
        /// </summary>
        /// <typeparam name="T">the object</typeparam>
        /// <param name="request">The request.</param>
        /// <param name="errorMessage">The error message.</param>
        /// <returns>
        /// json string
        /// </returns>
        public static string Serialize<T>(T request, out string errorMessage)
        {
            return JsonConvert.SerializeObject(request, DefaultJsonSerializerSettings(out errorMessage));
        }

        /// <summary>
        /// Deserializes the specified json string.
        /// </summary>
        /// <typeparam name="T">the object</typeparam>
        /// <param name="jsonString">The json string.</param>
        /// <returns>
        /// return response
        /// </returns>
        public static T Deserialize<T>(string jsonString)
        {
            return JsonConvert.DeserializeObject<T>(jsonString, DefaultJsonSerializerSettings(out _));
        }

        /// <summary>
        /// Deserializes the specified json string.
        /// </summary>
        /// <param name="jsonString">The json string.</param>
        /// <param name="type">The type.</param>
        /// <returns>
        /// the object
        /// </returns>
        public static object Deserialize(string jsonString, Type type)
        {
            return JsonConvert.DeserializeObject(jsonString, type);
        }

        /// <summary>
        /// Deserializes the specified json string.
        /// </summary>
        /// <typeparam name="T">the object</typeparam>
        /// <param name="jsonString">The json string.</param>
        /// <param name="errorMessage">The error message.</param>
        /// <returns>
        /// return response
        /// </returns>
        public static T Deserialize<T>(string jsonString, out string errorMessage)
        {
            return JsonConvert.DeserializeObject<T>(jsonString, DefaultJsonSerializerSettings(out errorMessage));
        }

        /// <summary>
        /// Deserializes the specified json string.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="jsonString">The json string.</param>
        /// <param name="jsonConverters">The json converters.</param>
        /// <returns>
        /// returns deserialize object
        /// </returns>
        public static T Deserialize<T>(string jsonString, params JsonConverter[] jsonConverters)
        {
            string errorMessge;
            JsonSerializerSettings settings = DefaultJsonSerializerSettings(out errorMessge);
            settings.Converters = jsonConverters;
            return JsonConvert.DeserializeObject<T>(jsonString, settings);
        }

        /// <summary>
        /// Defaults the json serializer settings.
        /// </summary>
        /// <param name="errorMessage">The error message.</param>
        /// <returns>
        /// the JsonSerializerSettings
        /// </returns>
        private static JsonSerializerSettings DefaultJsonSerializerSettings(out string errorMessage)
        {
            string errorMessageInternal = string.Empty;

            JsonSerializerSettings defaultJsonSerializerSettings = new JsonSerializerSettings()
            {
                Formatting = Formatting.Indented,
                NullValueHandling = NullValueHandling.Include,
                ContractResolver = new CamelCasePropertyNamesContractResolver(),
                Error = delegate (object sender, ErrorEventArgs errorArgs)
                {
                    errorMessageInternal = string.Concat("Error occured during serialization ", errorArgs.ErrorContext.Error.Message);
                    errorArgs.ErrorContext.Handled = true;
                }
            };

            errorMessage = errorMessageInternal;

            return defaultJsonSerializerSettings;
        }
    }
}