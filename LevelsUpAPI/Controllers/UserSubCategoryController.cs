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
    /// UserSubCategoryController class
    /// </summary>
    /// <seealso cref="ControllerBase" />
    [Route(Routes.ControllerRoute)]
    [ApiController]
    [AuthorizeUser]
    public class UserSubCategoryController : BaseController
    {
        /// <summary>
        /// The b o user sub category
        /// </summary>
        private readonly IBOUserSubCategory _bOUserSubCategory;

        /// <summary>
        /// The b o sub category
        /// </summary>
        private readonly IBOSubCategory _bOSubCategory;

        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategoryController" /> class.
        /// </summary>
        /// <param name="bOUserSubCategory">The b o user sub category.</param>
        /// <param name="bOSubCategory">The b o sub category.</param>
        public UserSubCategoryController(IBOUserSubCategory bOUserSubCategory, IBOSubCategory bOSubCategory) : base()
        {
            this._bOUserSubCategory = bOUserSubCategory;
            this._bOSubCategory = bOSubCategory;
        }

        /// <summary>
        /// Gets the user sub categories.
        /// </summary>
        /// <returns>
        /// the response
        /// </returns>
        [HttpGet]
        public IActionResult GetUserSubCategories()
        {
            string userId = this.httpContextAccessor.GetCurrentUserId();

            return this.OK<List<UserSubCategoryInformation>>(this._bOUserSubCategory.Get(userId));
        }

        /// <summary>
        /// Gets the user sub category detail.
        /// </summary>
        /// <returns>
        /// the response
        /// </returns>
        [HttpGet]
        public IActionResult GetUserSubCategoryDetail(int id)
        {
            return this.OK<UserSubCategoryDetailInformation>(this._bOSubCategory.Get(id));
        }
    }
}