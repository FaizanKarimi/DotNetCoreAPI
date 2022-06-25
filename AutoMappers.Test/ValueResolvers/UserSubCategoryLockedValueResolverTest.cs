using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;
using Repository.Interfaces;

namespace AutoMappers.Test.ValueResolvers
{
    /// <summary>
    /// UserSubCategoryLockedValueResolverTest class
    /// </summary>
    /// <seealso cref="BaseValueResolverTest" />
    [TestFixture]
    public class UserSubCategoryLockedValueResolverTest : BaseValueResolverTest
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
                IsLocked = true
            };

            this.mockSubCategoryRepository = new Mock<ISubCategoryRepository>();
            this.mockSubCategoryRepository.Setup(x => x.Get(It.IsAny<int>())).Returns(subCategory);

            base.Setup();
        }

        /// <summary>
        /// Users the sub category locked value resolver test.
        /// </summary>
        [Test]
        public void UserSubCategoryLockedValueResolver_Test()
        {
            UserSubCategory userSubCategory = new UserSubCategory()
            {
                SubCategoryId = 1
            };

            UserSubCategoryInformation userSubCategoryInformation = new UserSubCategoryInformation();

            UserSubCategoryLockedValueResolver userSubCategoryLockedValueResolver = new UserSubCategoryLockedValueResolver(this.mockSubCategoryRepository.Object, this.mockUnitOfWork.Object, this.mockLogger.Object);
            bool? IsLocked = userSubCategoryLockedValueResolver.Resolve(userSubCategory, userSubCategoryInformation, false, null);

            Assert.IsNotNull(IsLocked);
            Assert.IsTrue(IsLocked);
        }
    }
}