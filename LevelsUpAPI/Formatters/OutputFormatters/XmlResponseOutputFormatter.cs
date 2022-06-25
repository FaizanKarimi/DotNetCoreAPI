using System;
using System.Text;
using System.Threading.Tasks;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Formatters;
using Microsoft.Net.Http.Headers;

namespace LevelsUpAPI.Formatters.OutputFormatters
{
    /// <summary>
    /// XmlResponseOutputFormatter class
    /// </summary>
    /// <seealso cref="TextOutputFormatter" />
    public class XmlResponseOutputFormatter : TextOutputFormatter
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="XmlResponseOutputFormatter" /> class.
        /// </summary>
        public XmlResponseOutputFormatter()
        {
            this.SupportedMediaTypes.Add(MediaTypeHeaderValue.Parse(ContentTypes.Xml));
            this.SupportedEncodings.Add(Encoding.UTF8);
            this.SupportedEncodings.Add(Encoding.Unicode);
        }

        /// <summary>
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        /// <inheritdoc />
        protected override bool CanWriteType(Type type)
        {
            if (typeof(IBaseResponse).IsAssignableFrom(type))
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Writes the response body.
        /// </summary>
        /// <param name="context">The formatter context associated with the call.</param>
        /// <param name="selectedEncoding">The <see cref="T:System.Text.Encoding" /> that should be used to write the response.</param>
        /// <returns>
        /// A task which can write the response body.
        /// </returns>
        public override Task WriteResponseBodyAsync(OutputFormatterWriteContext context, Encoding selectedEncoding)
        {
            HttpResponse response = context.HttpContext.Response;

            string buffer = string.Empty;

            if (context.Object is IBaseResponse)
            {
                BasicResponse basicResponse = context.Object as BasicResponse;
                buffer = XmlHelpers.Serialize(basicResponse, XmlHelpers.GetResponsesKnownTypes());
            }

            return response.WriteAsync(buffer);
        }
    }
}