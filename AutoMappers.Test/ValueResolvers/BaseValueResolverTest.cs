using Logging;
using Moq;
using NUnit.Framework;
using Repository.Provider;

namespace AutoMappers.Test.ValueResolvers
{
    /// <summary>
    /// BaseValueResolverTest class
    /// </summary>
    public abstract class BaseValueResolverTest
    {
        /// <summary>
        /// The mock unit of work
        /// </summary>
        protected Mock<IUnitOfWork> mockUnitOfWork;

        /// <summary>
        /// The mock logger
        /// </summary>
        protected Mock<ILogger> mockLogger;

        /// <summary>
        /// Setups this instance.
        /// </summary>
        [SetUp]
        public virtual void Setup()
        {
            this.mockUnitOfWork = new Mock<IUnitOfWork>();
            this.mockUnitOfWork.Setup(x => x.Open());

            this.mockLogger = new Mock<ILogger>();
            this.mockLogger.Setup(x => x.Debug(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<int>(), It.IsAny<string>()));
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources.
        /// </summary>
        [TearDown]
        public virtual void Dispose()
        {
            this.mockUnitOfWork.Setup(x => x.Close());
        }
    }
}