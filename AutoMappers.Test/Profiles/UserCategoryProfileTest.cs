using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Infrastructure.ExtensionMethods.Framework;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// UserCategoryProfileTest class
    /// </summary>
    /// <seealso cref="BaseProfileTest" />
    [TestFixture]
    public class UserCategoryProfileTest : BaseProfileTest
    {
        /// <summary>
        /// Users the category user category information profile test.
        /// </summary>
        [Test]
        public void UserCategory_UserCategoryInformation_ProfileTest()
        {
            Mock<UserCategory> mockUserCategory = new Mock<UserCategory>();
            mockUserCategory.Object.AttributeKey = "Key";
            mockUserCategory.Object.AttributeValue = "Value";
            mockUserCategory.Object.CategoryId = 1;
            mockUserCategory.Object.Id = 1;
            mockUserCategory.Object.UserId = "123456789";

            UserCategoryInformation userCategoryInformation = new UserCategoryInformation()
            {
                LevelValue = mockUserCategory.Object.AttributeValue,
                IsLocked = false,
                Category = mockUserCategory.Object.AttributeKey.ToPascal()
            };

            this.mockMapper.Setup(map => map.Map<UserCategory, UserCategoryInformation>(mockUserCategory.Object)).Returns(userCategoryInformation);

            Assert.IsTrue(userCategoryInformation != null);
            Assert.AreEqual(mockUserCategory.Object.AttributeKey, userCategoryInformation.Category);
            Assert.AreEqual(mockUserCategory.Object.AttributeValue, userCategoryInformation.LevelValue);
        }
    }
}