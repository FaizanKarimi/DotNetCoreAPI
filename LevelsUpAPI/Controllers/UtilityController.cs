using System.Diagnostics;
using Infrastructure.Common;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace LevelsUpAPI.Controllers
{
    /// <summary>
    /// UtilityController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    [Route(Routes.ControllerRoute)]
    [ApiController]
    [AllowAnonymous]
    public class UtilityController : BaseController
    {
        /// <summary>
        /// The configuration
        /// </summary>
        private readonly IConfiguration _configuration;

        /// <summary>
        /// Initializes a new instance of the <see cref="UtilityController"/> class.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public UtilityController(IConfiguration configuration)
        {
            this._configuration = configuration;
        }

        /// <summary>
        /// Gets the process details.
        /// </summary>
        /// <returns>
        /// the response
        /// </returns>
        [HttpGet]
        public IActionResult GetProcessDetails()
        {
            return this.OK(new
            {
                ProcessId = Process.GetCurrentProcess().Id,
                ProcessName = Process.GetCurrentProcess().ProcessName,
                DatabaseName = this._configuration.GetConnectionString(Constants.ConnectionStringName)
            });
        }
    }
}