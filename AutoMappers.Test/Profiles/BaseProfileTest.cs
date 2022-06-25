using AutoMapper;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// BaseProfileTest class
    /// </summary>
    public abstract class BaseProfileTest
    {
        /// <summary>
        /// The mock mapper
        /// </summary>
        protected Mock<IMapper> mockMapper;

        /// <summary>
        /// Setups this instance.
        /// </summary>
        [SetUp]
        public virtual void Setup()
        {
            this.mockMapper = new Mock<IMapper>();
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources.
        /// </summary>
        [TearDown]
        public virtual void Dispose()
        {
            this.mockMapper = null;
        }
    }
}