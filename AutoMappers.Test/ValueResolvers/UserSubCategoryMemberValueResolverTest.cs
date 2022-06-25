using System.Collections.Generic;
using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using NUnit.Framework;

namespace AutoMappers.Test.ValueResolvers
{
    /// <summary>
    /// UserSubCategoryMemberValueResolverTest class
    /// </summary>
    /// <seealso cref="BaseValueResolverTest" />
    [TestFixture]
    public class UserSubCategoryMemberValueResolverTest : BaseValueResolverTest
    {
        /// <summary>
        /// Setups this instance.
        /// </summary>
        public override void Setup()
        {
            base.Setup();
        }

        /// <summary>
        /// Users the sub category member value resolver test.
        /// </summary>
        [Test]
        public void UserSubCategoryMemberValueResolver_Test()
        {
            UserCategory userCategory = new UserCategory()
            {
                AttributeKey = "ABC",
                AttributeValue = "True",
                CategoryId = 1,
                UserId = "123456789",
                UserSubCategories = new List<UserSubCategory>()
                {
                    new UserSubCategory()
                    {
                        Id = 1,
                        AttributeKey = "ABC",
                        AttributeValue = "123",
                        UserId = "123456789",
                    }
                },
                SubCategories = new List<SubCategory>()
                {
                    new SubCategory()
                    {
                        Id = 1,
                        IsLocked = true,
                        ImagePath = "ABC"
                    }
                }
            };

            List<UserSubCategory> userSubCategories = new List<UserSubCategory>()
            {
                new UserSubCategory()
                {
                    Id = 1,
                    AttributeKey = "ABC",
                    AttributeValue = "123",
                    UserId = "123456789",
                    SubCategoryId = 1
                }
            };

            UserSubCategoryMemberValueResolver userSubCategoryMemberValueResolver = new UserSubCategoryMemberValueResolver();
            List<UserSubCategoryInformation> userSubCategoryInformation = userSubCategoryMemberValueResolver.Resolve(userCategory, null, userSubCategories, null, null);

            Assert.IsNotNull(userSubCategoryInformation);
            Assert.True(userSubCategoryInformation.Count > 0);
        }
    }
}