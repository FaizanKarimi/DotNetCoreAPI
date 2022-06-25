using System.IO;
using System.Net;
using System.Threading.Tasks;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.Exceptions;
using Infrastructure.ExtensionMethods.Framework;
using Infrastructure.Helpers;
using Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Localization;

namespace LevelsUpAPI.Middlewares
{
    /// <summary>
    /// ExceptionMiddleware class
    /// </summary>
    public class ExceptionMiddleware
    {
        #region Private Members
        /// <summary>
        /// The next
        /// </summary>
        private readonly RequestDelegate _next;

        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// The localizer
        /// </summary>
        private readonly IStringLocalizer<SharedResources> _localizer;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="ExceptionMiddleware" /> class.
        /// </summary>
        /// <param name="next">The next.</param>
        /// <param name="logging">The logging.</param>
        /// <param name="localizer">The localizer.</param>
        public ExceptionMiddleware(RequestDelegate next, ILogger logging, IStringLocalizer<SharedResources> localizer)
        {
            this._next = next;
            this._logger = logging;
            this._localizer = localizer;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Invokes the specified context.
        /// </summary>
        /// <param name="context">The context.</param>
        public async Task Invoke(HttpContext context)
        {
            try
            {
                Stream originalBody = context.Response.Body;
                try
                {
                    string responseBody = null;

                    using (MemoryStream memStream = new MemoryStream())
                    {
                        context.Response.Body = memStream;
                        await this._next.Invoke(context);
                        memStream.Position = 0;
                        responseBody = new StreamReader(memStream).ReadToEnd();
                    }

                    byte[] buffer = responseBody.GetEncodedBytes();
                    using (MemoryStream output = new MemoryStream(buffer))
                    {
                        await output.CopyToAsync(originalBody, int.MaxValue);
                    }
                }
                finally
                {
                    context.Response.Body = originalBody;
                }
            }
            catch (LevelsUpException ex)
            {
                await this.HandleExceptionAsync(context, ex);
            }
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Handles the exception asynchronous.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="exception">The exception.</param>
        private async Task HandleExceptionAsync(HttpContext context, LevelsUpException exception)
        {
            this._logger.Debug($"Exception is: {exception}");
            HttpStatusCode httpStatusCode = (HttpStatusCode)exception.ErrorCode;
            BasicResponse basicResponse = new BasicResponse()
            {
                Data = null,
                Success = false,
                ErrorMessage = this._localizer.GetString(exception.Message, exception.arguments == null ? new object[0] : exception.arguments)
            };

            string result;
            if (context.Request.ContentType.Contains(ContentTypes.Json))
            {
                result = JsonSerializerHelper.Serialize(basicResponse);
            }
            else
            {
                result = XmlHelpers.Serialize(basicResponse, XmlHelpers.GetResponsesKnownTypes());
            }

            context.Response.ContentType = context.Request.ContentType;
            context.Response.StatusCode = (int)httpStatusCode;
            await context.Response.WriteAsync(result);
        }
        #endregion
    }
}