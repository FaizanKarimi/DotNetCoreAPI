using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// UserSubCategoryProfileTest class
    /// </summary>
    /// <seealso cref="BaseProfileTest" />
    [TestFixture]
    public class UserSubCategoryProfileTest : BaseProfileTest
    {
        /// <summary>
        /// Users the sub category user sub category information profile test.
        /// </summary>
        [Test]
        public void UserSubCategory_UserSubCategoryInformation_ProfileTest()
        {
            Mock<UserSubCategory> mockUserSubCategory = new Mock<UserSubCategory>();
            mockUserSubCategory.Object.AttributeKey = "Key";
            mockUserSubCategory.Object.AttributeValue = "Value";
            mockUserSubCategory.Object.Id = 1;
            mockUserSubCategory.Object.Repetitions = 11;
            mockUserSubCategory.Object.SubCategoryId = 1;
            mockUserSubCategory.Object.UserId = "123456789";
            mockUserSubCategory.Object.SubCategory = new SubCategory()
            {
                IsLocked = true,
                ImagePath = "ABC"
            };

            UserSubCategoryInformation userSubCategoryInformation = new UserSubCategoryInformation()
            {
                Points = mockUserSubCategory.Object.AttributeValue,
                IsLocked = mockUserSubCategory.Object.SubCategory.IsLocked,
                ImagePath = mockUserSubCategory.Object.SubCategory.ImagePath,
                CurrentRepetitions = mockUserSubCategory.Object.Repetitions
            };

            this.mockMapper.Setup(map => map.Map<UserSubCategory, UserSubCategoryInformation>(mockUserSubCategory.Object)).Returns(userSubCategoryInformation);

            Assert.IsTrue(userSubCategoryInformation != null);
            Assert.AreEqual(mockUserSubCategory.Object.AttributeValue, userSubCategoryInformation.Points);
            Assert.AreEqual(mockUserSubCategory.Object.SubCategory.IsLocked, userSubCategoryInformation.IsLocked);
            Assert.AreEqual(mockUserSubCategory.Object.SubCategory.ImagePath, userSubCategoryInformation.ImagePath);
            Assert.AreEqual(mockUserSubCategory.Object.Repetitions, userSubCategoryInformation.CurrentRepetitions);
        }
    }
}