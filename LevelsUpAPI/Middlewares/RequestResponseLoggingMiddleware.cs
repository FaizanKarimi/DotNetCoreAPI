using System;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using Infrastructure.ExtensionMethods.Framework;
using Logging;
using Microsoft.AspNetCore.Http;
using Microsoft.IO;

namespace LevelsUpAPI.Middlewares
{
    /// <summary>
    /// RequestResponseLoggingMiddleware class
    /// </summary>
    public class RequestResponseLoggingMiddleware
    {
        /// <summary>
        /// The next
        /// </summary>
        private readonly RequestDelegate _next;

        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// The recyclable memory stream manager
        /// </summary>
        private readonly RecyclableMemoryStreamManager _recyclableMemoryStreamManager;

        /// <summary>
        /// Initializes a new instance of the <see cref="RequestResponseLoggingMiddleware" /> class.
        /// </summary>
        /// <param name="next">The next.</param>
        /// <param name="logger">The logger.</param>
        public RequestResponseLoggingMiddleware(RequestDelegate next, ILogger logger)
        {
            this._next = next;
            this._logger = logger;
            this._recyclableMemoryStreamManager = new RecyclableMemoryStreamManager();
        }

        /// <summary>
        /// Invokes the specified HTTP context.
        /// </summary>
        /// <param name="httpContext">The HTTP context.</param>
        public async Task Invoke(HttpContext httpContext)
        {
            // logging the request
            await this._LogRequest(httpContext);

            // logging the response
            await this._LogResponse(httpContext);
        }

        /// <summary>
        /// Logs the request.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <returns>
        /// the task
        /// </returns>
        private async Task _LogRequest(HttpContext context)
        {
            context.Request.EnableBuffering();
            await using MemoryStream requestStream = this._recyclableMemoryStreamManager.GetStream();
            await context.Request.Body.CopyToAsync(requestStream);
            string message = this.GetFormattedStringRequestMessage(context, requestStream);
            this._logger.Debug(message);
            context.Request.Body.Position = 0;
        }

        /// <summary>
        /// Logs the response.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <returns>
        /// the task
        /// </returns>
        private async Task _LogResponse(HttpContext context)
        {
            Stream originalBodyStream = context.Response.Body;
            await using MemoryStream responseBody = this._recyclableMemoryStreamManager.GetStream();
            context.Response.Body = responseBody;

            // invoke the next middleware
            await this._next(context);

            context.Response.Body.Seek(0, SeekOrigin.Begin);
            string text = await new StreamReader(context.Response.Body).ReadToEndAsync();
            context.Response.Body.Seek(0, SeekOrigin.Begin);
            string message = this.GetFormattedStringResponseMessage(context, text);
            this._logger.Debug(message);
            await responseBody.CopyToAsync(originalBodyStream);
        }

        /// <summary>
        /// Gets the formatted string request message.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="requestStream">The request stream.</param>
        /// <returns>
        /// the formatted request message
        /// </returns>
        private string GetFormattedStringRequestMessage(HttpContext context, MemoryStream requestStream)
        {
            StringBuilder stringBuilder = new StringBuilder();

            stringBuilder.Append($"Http Request Information: {Environment.NewLine}");

            if (!string.IsNullOrEmpty(context.Request.Scheme))
            {
                stringBuilder.Append($"Schema:{context.Request.Scheme} ");
            }

            if (context.Request.Host.HasValue)
            {
                stringBuilder.Append($"Host: {context.Request.Host} ");
            }

            if (context.Request.Path.HasValue)
            {
                stringBuilder.Append($"Path: {context.Request.Path} ");
            }

            if (context.Request.QueryString.HasValue)
            {
                stringBuilder.Append($"Path: {context.Request.Path} ");
            }

            string requestBody = this._ReadStreamInChunks(requestStream);
            if (requestBody.IsNotNullOrEmpty())
            {
                stringBuilder.Append($"RequestBody: {requestBody}");
            }

            return stringBuilder.ToString();
        }

        /// <summary>
        /// Gets the formatted string response message.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <param name="text">The text.</param>
        /// <returns>
        /// the formatted response message
        /// </returns>
        private string GetFormattedStringResponseMessage(HttpContext context, string text)
        {
            StringBuilder stringBuilder = new StringBuilder();

            stringBuilder.Append($"Http Response Information: {Environment.NewLine}");

            if (!string.IsNullOrEmpty(context.Request.Scheme))
            {
                stringBuilder.Append($"Schema:{context.Request.Scheme} ");
            }

            if (context.Request.Host.HasValue)
            {
                stringBuilder.Append($"Host: {context.Request.Host} ");
            }

            if (context.Request.Path.HasValue)
            {
                stringBuilder.Append($"Path: {context.Request.Path} ");
            }

            if (context.Request.QueryString.HasValue)
            {
                stringBuilder.Append($"Path: {context.Request.Path} ");
            }

            if (text.IsNotNullOrEmpty())
            {
                stringBuilder.Append($"ResponseBody: {text}");
            }

            return stringBuilder.ToString();
        }

        /// <summary>
        /// Reads the stream in chunks.
        /// </summary>
        /// <param name="stream">The stream.</param>
        /// <returns>
        /// the request body
        /// </returns>
        private string _ReadStreamInChunks(Stream stream)
        {
            const int readChunkBufferLength = 4096;
            stream.Seek(0, SeekOrigin.Begin);
            using StringWriter textWriter = new StringWriter();
            using StreamReader reader = new StreamReader(stream);
            char[] readChunk = new char[readChunkBufferLength];
            int readChunkLength;
            do
            {
                readChunkLength = reader.ReadBlock(readChunk, 0, readChunkBufferLength);
                textWriter.Write(readChunk, 0, readChunkLength);
            }
            while (readChunkLength > 0);

            return textWriter.ToString().Trim();
        }
    }
}