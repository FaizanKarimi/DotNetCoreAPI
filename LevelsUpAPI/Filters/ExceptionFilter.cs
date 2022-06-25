using System.Data.SqlClient;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Microsoft.AspNetCore.Mvc.Filters;

namespace LevelsUpAPI.Filters
{
    /// <summary>
    /// ExceptionFilter class
    /// </summary>
    /// <seealso cref="IExceptionFilter" />
    public class ExceptionFilter : IExceptionFilter
    {
        /// <summary>
        /// Called after an action has thrown an <see cref="T:System.Exception" />.
        /// </summary>
        /// <param name="context">The <see cref="T:Microsoft.AspNetCore.Mvc.Filters.ExceptionContext" />.</param>
        public void OnException(ExceptionContext context)
        {
            if (!context.ExceptionHandled)
            {
                context.ExceptionHandled = true;
            }

            string exception = context.Exception.GetType().Name;
            switch (exception)
            {
                case nameof(LevelsUpException):
                    throw context.Exception;
                case nameof(SqlException):
                    throw new LevelsUpException(ErrorMessages.SQL_EXCEPTION, ErrorCodes.NotFound);
                default:
                    throw new LevelsUpException(ErrorMessages.INTERNAL_SERVER_ERROR, ErrorCodes.InternalServerError);
            }

        }
    }
}