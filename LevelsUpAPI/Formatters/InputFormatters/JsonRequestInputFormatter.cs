using System;
using System.IO;
using System.Threading.Tasks;
using Infrastructure.APIRequestModels;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Formatters;
using Microsoft.Extensions.Logging;

namespace LevelsUpAPI.Formatters.InputFormatters
{
    /// <summary>
    /// JsonRequestInputFormatter class
    /// </summary>
    /// <seealso cref="SystemTextJsonInputFormatter" />
    public class JsonRequestInputFormatter : SystemTextJsonInputFormatter
    {
        /// <summary>
        /// The current deserialized type
        /// </summary>
        private Type _currentDeserializedType;

        /// <summary>
        /// Initializes a new instance of the <see cref="JsonRequestInputFormatter"/> class.
        /// </summary>
        /// <param name="options">The <see cref="T:Microsoft.AspNetCore.Mvc.JsonOptions" />.</param>
        /// <param name="logger">The <see cref="T:Microsoft.Extensions.Logging.ILogger" />.</param>
        public JsonRequestInputFormatter(JsonOptions options, ILogger<SystemTextJsonInputFormatter> logger)
            : base(options, logger)
        {
        }

        /// <summary>
        /// Determines whether this <see cref="T:Microsoft.AspNetCore.Mvc.Formatters.InputFormatter" /> can deserialize an object of the given
        /// <paramref name="type" />.
        /// </summary>
        /// <param name="type">The <see cref="T:System.Type" /> of object that will be read.</param>
        /// <returns>
        /// <c>true</c> if the <paramref name="type" /> can be read, otherwise <c>false</c>.
        /// </returns>
        protected override bool CanReadType(Type type)
        {
            if (typeof(IBaseRequest).IsAssignableFrom(type))
            {
                this._currentDeserializedType = type;
                return true;
            }

            return false;
        }

        /// <summary>
        /// </summary>
        /// <param name="context"></param>
        /// <returns>task </returns>
        /// <inheritdoc />
        public override Task<InputFormatterResult> ReadRequestBodyAsync(InputFormatterContext context)
        {
            string data = string.Empty;

            HttpRequest request = context.HttpContext.Request;

            using (StreamReader streamReader = new StreamReader(request.Body))
            {
                data = streamReader.ReadToEndAsync().Result;
            }

            return InputFormatterResult.SuccessAsync(JsonSerializerHelper.Deserialize(data, this._currentDeserializedType));
        }
    }
}