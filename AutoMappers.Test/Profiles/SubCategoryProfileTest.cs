using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// SubCategoryProfileTest class
    /// </summary>
    /// <seealso cref="BaseProfileTest" />
    [TestFixture]
    public class SubCategoryProfileTest : BaseProfileTest
    {
        /// <summary>
        /// Subs the category user sub category detail information profile test.
        /// </summary>
        [Test]
        public void SubCategory_UserSubCategoryDetailInformation_ProfileTest()
        {
            Mock<SubCategory> mockSubCategory = new Mock<SubCategory>();
            mockSubCategory.Object.TotalPoints = 100;
            mockSubCategory.Object.Description = "Description";
            mockSubCategory.Object.Repetitions = 10;
            mockSubCategory.Object.PlaysPerDay = 5;

            UserSubCategoryDetailInformation userSubCategoryDetailInformation = new UserSubCategoryDetailInformation()
            {
                Points = mockSubCategory.Object.TotalPoints,
                Description = mockSubCategory.Object.Description,
                Reps = mockSubCategory.Object.Repetitions,
                TotalNumberOfPlay = mockSubCategory.Object.PlaysPerDay
            };

            this.mockMapper.Setup(map => map.Map<SubCategory, UserSubCategoryDetailInformation>(mockSubCategory.Object)).Returns(userSubCategoryDetailInformation);

            Assert.True(userSubCategoryDetailInformation != null);
            Assert.AreEqual(mockSubCategory.Object.TotalPoints, userSubCategoryDetailInformation.Points);
            Assert.AreEqual(mockSubCategory.Object.Description, userSubCategoryDetailInformation.Description);
            Assert.AreEqual(mockSubCategory.Object.Repetitions, userSubCategoryDetailInformation.Reps);
            Assert.AreEqual(mockSubCategory.Object.PlaysPerDay, userSubCategoryDetailInformation.TotalNumberOfPlay);
        }
    }
}