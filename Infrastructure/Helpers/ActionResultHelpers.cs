using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.Enums;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// ActionResultHelpers class
    /// </summary>
    public static class ActionResultHelpers
    {
        /// <summary>
        /// Gets the unauthorized json result.
        /// </summary>
        /// <returns>
        /// the unauthorized json result
        /// </returns>
        public static JsonResult GetUnauthorizedJsonResult()
        {
            BasicResponse basicResponse = new BasicResponse()
            {
                ErrorMessage = ErrorMessages.UNAUTHORIZED_ERROR.ToString(),
                Success = false
            };

            JsonResult jsonResult = new JsonResult(basicResponse);
            jsonResult.StatusCode = StatusCodes.Status401Unauthorized;
            jsonResult.ContentType = ContentTypes.Json;

            return jsonResult;
        }

        /// <summary>
        /// Gets the forbidden json result.
        /// </summary>
        /// <returns>
        /// the forbidden json result
        /// </returns>
        public static JsonResult GetForbiddenJsonResult()
        {
            BasicResponse basicResponse = new BasicResponse()
            {
                ErrorMessage = ErrorMessages.FORBIDDEN_ERROR.ToString(),
                Success = false
            };

            JsonResult jsonResult = new JsonResult(basicResponse);
            jsonResult.StatusCode = StatusCodes.Status403Forbidden;
            jsonResult.ContentType = ContentTypes.Json;

            return jsonResult;
        }

        /// <summary>
        /// Gets the bad request json result.
        /// </summary>
        /// <param name="errorMessage">Name of the property.</param>
        /// <returns>
        /// the bad request json result
        /// </returns>
        public static JsonResult GetBadRequestJsonResult(string errorMessage)
        {
            BasicResponse basicResponse = new BasicResponse()
            {
                ErrorMessage = $"{errorMessage}",
                Success = false
            };

            JsonResult jsonResult = new JsonResult(basicResponse);
            jsonResult.StatusCode = StatusCodes.Status400BadRequest;
            jsonResult.ContentType = ContentTypes.Json;

            return jsonResult;
        }
    }
}