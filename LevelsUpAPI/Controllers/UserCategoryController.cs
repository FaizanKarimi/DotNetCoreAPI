using System.Collections.Generic;
using BusinessOperations.Interfaces;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using LevelsUpAPI.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace LevelsUpAPI.Controllers
{
    /// <summary>
    /// UserCategoryController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    [Route(Routes.ControllerRoute)]
    [ApiController]
    [AuthorizeUser]
    public class UserCategoryController : BaseController
    {
        /// <summary>
        /// The b o user category
        /// </summary>
        private readonly IBOUserCategory _bOUserCategory;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategoryController" /> class.
        /// </summary>
        /// <param name="bOUserCategory">The b o user category.</param>
        public UserCategoryController(IBOUserCategory bOUserCategory) : base()
        {
            this._bOUserCategory = bOUserCategory;
        }

        /// <summary>
        /// Gets the user categories.
        /// </summary>
        /// <returns>the response</returns>
        [HttpGet]
        public IActionResult GetUserCategories()
        {
            string userId = this.httpContextAccessor.GetCurrentUserId();

            return this.OK<List<UserCategoryInformation>>(this._bOUserCategory.Get(userId));
        }
    }
}