using System;
using Identity;
using Infrastructure.APIRequestModels;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// LevelsUpUserProfileTest class
    /// </summary>
    /// <seealso cref="BaseProfileTest" />
    [TestFixture]
    public class LevelsUpUserProfileTest : BaseProfileTest
    {
        /// <summary>
        /// Registers the request levels up user profile test.
        /// </summary>
        [Test]
        public void RegisterRequest_LevelsUpUser_ProfileTest()
        {
            Mock<RegisterRequest> mockRegisterRequest = new Mock<RegisterRequest>();
            mockRegisterRequest.Object.Country = "Pakistan";
            mockRegisterRequest.Object.CountryCode = "+92";
            mockRegisterRequest.Object.DeviceToken = "123456789";
            mockRegisterRequest.Object.DeviceTypeId = 0;
            mockRegisterRequest.Object.Language = "English";
            mockRegisterRequest.Object.Email = "karimifaizan1@gmail.com";
            mockRegisterRequest.Object.MobileNumber = "03028417241";
            mockRegisterRequest.Object.Name = "Faizan Ahmad Karimi";
            mockRegisterRequest.Object.Password = "123456";
            mockRegisterRequest.Object.RegistrationToken = "123456789";

            LevelsUpUser levelsUpUser = new LevelsUpUser()
            {
                Email = mockRegisterRequest.Object.Email,
                UserName = mockRegisterRequest.Object.Email,
                PhoneNumber = mockRegisterRequest.Object.MobileNumber,
                DateRegistration = DateTime.UtcNow
            };

            this.mockMapper.Setup(map => map.Map<RegisterRequest, LevelsUpUser>(mockRegisterRequest.Object)).Returns(levelsUpUser);

            Assert.IsTrue(levelsUpUser != null);
            Assert.AreEqual(mockRegisterRequest.Object.Email, levelsUpUser.Email);
            Assert.AreEqual(mockRegisterRequest.Object.Email, levelsUpUser.UserName);
            Assert.AreEqual(mockRegisterRequest.Object.MobileNumber, levelsUpUser.PhoneNumber);
        }
    }
}