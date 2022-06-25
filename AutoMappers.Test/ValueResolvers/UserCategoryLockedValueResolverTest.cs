using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;
using Repository.Interfaces;

namespace AutoMappers.Test.ValueResolvers
{
    /// <summary>
    /// UserCategoryLockedValueResolverTest class
    /// </summary>
    /// <seealso cref="BaseValueResolverTest" />
    [TestFixture]
    public class UserCategoryLockedValueResolverTest : BaseValueResolverTest
    {
        /// <summary>
        /// The mock category repository
        /// </summary>
        private Mock<ICategoryRepository> mockCategoryRepository;

        /// <summary>
        /// Setups this instance.
        /// </summary>
        public override void Setup()
        {
            Mock<Category> mockCategory = new Mock<Category>();
            mockCategory.Object.IsLocked = true;

            this.mockCategoryRepository = new Mock<ICategoryRepository>();
            this.mockCategoryRepository.Setup(x => x.Get(It.IsAny<int>())).Returns(mockCategory.Object);

            base.Setup();
        }

        /// <summary>
        /// Users the category locked value resolver test.
        /// </summary>
        [Test]
        public void UserCategoryLockedValueResolver_Test()
        {
            UserCategory userCategory = new UserCategory()
            {
                CategoryId = 1
            };

            UserCategoryInformation userCategoryInformation = new UserCategoryInformation();

            UserCategoryLockedValueResolver userCategoryLockedValueResolver = new UserCategoryLockedValueResolver(this.mockCategoryRepository.Object, this.mockUnitOfWork.Object, this.mockLogger.Object);
            bool IsLocked = userCategoryLockedValueResolver.Resolve(userCategory, userCategoryInformation, false, null);

            Assert.IsTrue(IsLocked);
        }
    }
}