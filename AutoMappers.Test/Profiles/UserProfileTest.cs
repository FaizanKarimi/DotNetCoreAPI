using Infrastructure.APIRequestModels;
using Infrastructure.APIResponseModels;
using Infrastructure.DatabaseModels;
using Moq;
using NUnit.Framework;

namespace AutoMappers.Test.Profiles
{
    /// <summary>
    /// UserProfileTest class
    /// </summary>
    /// <seealso cref="BaseProfileTest" />
    [TestFixture]
    public class UserProfileTest : BaseProfileTest
    {
        /// <summary>
        /// Registers the request user profile profile test.
        /// </summary>
        [Test]
        public void RegisterRequest_UserProfile_ProfileTest()
        {
            Mock<RegisterRequest> mockRegisterRequest = new Mock<RegisterRequest>();
            mockRegisterRequest.Object.Name = "Faizan Ahmad Karimi";
            mockRegisterRequest.Object.MobileNumber = "03028417241";
            mockRegisterRequest.Object.DeviceTypeId = 0;
            mockRegisterRequest.Object.Email = "karimifaizan1@gmail.com";

            UserProfile userProfile = new UserProfile()
            {
                Name = mockRegisterRequest.Object.Name,
                MobileNumber = mockRegisterRequest.Object.MobileNumber,
                EmailAddress = mockRegisterRequest.Object.Email
            };

            this.mockMapper.Setup(map => map.Map<RegisterRequest, UserProfile>(mockRegisterRequest.Object));

            Assert.IsTrue(userProfile != null);
            Assert.AreEqual(mockRegisterRequest.Object.Name, userProfile.Name);
            Assert.AreEqual(mockRegisterRequest.Object.MobileNumber, userProfile.MobileNumber);
            Assert.AreEqual(mockRegisterRequest.Object.Email, userProfile.EmailAddress);
        }

        /// <summary>
        /// Users the profile user profile information profile test.
        /// </summary>
        [Test]
        public void UserProfile_UserProfileInformation_ProfileTest()
        {
            Mock<UserProfile> mockUserProfile = new Mock<UserProfile>();
            mockUserProfile.Object.Id = 1;
            mockUserProfile.Object.Name = "Faizan Ahmad Karimi";
            mockUserProfile.Object.Country = "Pakistan";
            mockUserProfile.Object.CountryCode = "+92";
            mockUserProfile.Object.EmailAddress = "karimifaizan1@gmail.com";
            mockUserProfile.Object.MobileNumber = "03028417241";
            mockUserProfile.Object.FootballClub = "Bayern Munich";
            mockUserProfile.Object.Position = "Striker";
            mockUserProfile.Object.Age = 1;

            UserProfileInformation userProfileInformation = new UserProfileInformation()
            {
                ProfileId = mockUserProfile.Object.Id,
                Name = mockUserProfile.Object.Name,
                Country = mockUserProfile.Object.Country,
                CountryCode = mockUserProfile.Object.CountryCode,
                EmailAddress = mockUserProfile.Object.EmailAddress,
                MobileNumber = mockUserProfile.Object.MobileNumber,
                FootballClub = mockUserProfile.Object.FootballClub,
                Position = mockUserProfile.Object.Position,
                Age = mockUserProfile.Object.Age
            };

            this.mockMapper.Setup(map => map.Map<UserProfile, UserProfileInformation>(mockUserProfile.Object)).Returns(userProfileInformation);

            Assert.IsTrue(userProfileInformation != null);
            Assert.AreEqual(mockUserProfile.Object.Id, userProfileInformation.ProfileId);
            Assert.AreEqual(mockUserProfile.Object.Name, userProfileInformation.Name);
            Assert.AreEqual(mockUserProfile.Object.Country, userProfileInformation.Country);
            Assert.AreEqual(mockUserProfile.Object.CountryCode, userProfileInformation.CountryCode);
            Assert.AreEqual(mockUserProfile.Object.EmailAddress, userProfileInformation.EmailAddress);
            Assert.AreEqual(mockUserProfile.Object.MobileNumber, userProfileInformation.MobileNumber);
            Assert.AreEqual(mockUserProfile.Object.FootballClub, userProfileInformation.FootballClub);
            Assert.AreEqual(mockUserProfile.Object.Position, userProfileInformation.Position);
            Assert.AreEqual(mockUserProfile.Object.Age, userProfileInformation.Age);
        }

        /// <summary>
        /// Updates the user profile request user profile profile test.
        /// </summary>
        [Test]
        public void UpdateUserProfileRequest_UserProfile_ProfileTest()
        {
            Mock<UpdateUserProfileRequest> mockUpdateUserProfileRequest = new Mock<UpdateUserProfileRequest>();
            mockUpdateUserProfileRequest.Object.ProfileId = 1;
            mockUpdateUserProfileRequest.Object.Email = "karimifaizan1@gmail.com";
            mockUpdateUserProfileRequest.Object.Country = "Pakistan";
            mockUpdateUserProfileRequest.Object.Position = "Striker";
            mockUpdateUserProfileRequest.Object.Age = 1;
            mockUpdateUserProfileRequest.Object.FootballClub = "Bayern Munich";
            mockUpdateUserProfileRequest.Object.Name = "Faizan Ahmad Karimi";

            UserProfile userProfile = new UserProfile()
            {
                Id = (int)mockUpdateUserProfileRequest.Object.ProfileId,
                EmailAddress = mockUpdateUserProfileRequest.Object.Email,
                Country = mockUpdateUserProfileRequest.Object.Country,
                Position = mockUpdateUserProfileRequest.Object.Position,
                Age = mockUpdateUserProfileRequest.Object.Age,
                FootballClub = mockUpdateUserProfileRequest.Object.FootballClub,
                Name = mockUpdateUserProfileRequest.Object.Name
            };

            this.mockMapper.Setup(map => map.Map<UpdateUserProfileRequest, UserProfile>(mockUpdateUserProfileRequest.Object)).Returns(userProfile);

            Assert.IsTrue(userProfile != null);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.ProfileId, userProfile.Id);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.Email, userProfile.EmailAddress);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.Country, userProfile.Country);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.Position, userProfile.Position);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.Age, userProfile.Age);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.FootballClub, userProfile.FootballClub);
            Assert.AreEqual(mockUpdateUserProfileRequest.Object.Name, userProfile.Name);
        }
    }
}