using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;
using Repository.Interfaces;

namespace AutoMappers.Test.ValueResolvers
{
    /// <summary>
    /// UserSubCategoryImagePathValueResolverTest class
    /// </summary>
    /// <seealso cref="BaseValueResolverTest" />
    [TestFixture]
    public class UserSubCategoryImagePathValueResolverTest : BaseValueResolverTest
    {
        /// <summary>
        /// The mock sub category repository
        /// </summary>
        private Mock<ISubCategoryRepository> mockSubCategoryRepository;

        /// <summary>
        /// Setups this instance.
        /// </summary>
        public override void Setup()
        {
            SubCategory subCategory = new SubCategory()
            {
                ImagePath = "ABC"
            };

            mockSubCategoryRepository = new Mock<ISubCategoryRepository>();
            this.mockSubCategoryRepository.Setup(x => x.Get(It.IsAny<int>())).Returns(subCategory);

            base.Setup();
        }

        /// <summary>
        /// Users the sub category image path value resolver test.
        /// </summary>
        [Test]
        public void UserSubCategoryImagePathValueResolver_Test()
        {
            UserSubCategory userSubCategory = new UserSubCategory()
            {
                SubCategoryId = 1
            };

            UserSubCategoryInformation userSubCategoryInformation = new UserSubCategoryInformation();

            UserSubCategoryImagePathValueResolver userSubCategoryImagePathValueResolver = new UserSubCategoryImagePathValueResolver(this.mockUnitOfWork.Object, this.mockLogger.Object, this.mockSubCategoryRepository.Object);
            string imagePath = userSubCategoryImagePathValueResolver.Resolve(userSubCategory, userSubCategoryInformation, string.Empty, null);

            Assert.IsTrue(!string.IsNullOrEmpty(imagePath));
        }
    }
}
