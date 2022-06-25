using System;
using AutoMapper;
using Infrastructure.APIRequestModels;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using DatabaseModel = Infrastructure.DatabaseModels;

namespace AutoMappers.Profiles
{
    /// <summary>
    /// UserProfile class
    /// </summary>
    /// <seealso cref="Profile" />
    public class UserProfile : Profile
    {
        /// <summary>
        /// Gets the name of the profile.
        /// </summary>
        /// <value>
        /// The name of the profile.
        /// </value>
        public override string ProfileName
        {
            get
            {
                return AutoMapperProfileNames.UserProfile;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="UserProfile"/> class.
        /// </summary>
        public UserProfile()
        {
            // register request to database model
            this.CreateMap<RegisterRequest, DatabaseModel.UserProfile>()
                .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.Name))
                .ForMember(dest => dest.CreatedOn, opt => opt.MapFrom(src => DateTime.UtcNow))
                .ForMember(dest => dest.UpdatedOn, opt => opt.MapFrom(src => DateTime.UtcNow))
                .ForMember(dest => dest.MobileNumber, opt => opt.MapFrom(src => src.MobileNumber))
                .ForMember(dest => dest.IsDeleted, opt => opt.MapFrom(src => src.DeviceTypeId))
                .ForMember(dest => dest.EmailAddress, opt => opt.MapFrom(src => src.Email))
                .ForMember(dest => dest.VerificationCode, opt => opt.Ignore());

            // database model to user profile api response
            this.CreateMap<DatabaseModel.UserProfile, UserProfileInformation>()
                .ForMember(dest => dest.ProfileId, opt => opt.MapFrom(src => src.Id))
                .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.Name))
                .ForMember(dest => dest.Country, opt => opt.MapFrom(src => src.Country))
                .ForMember(dest => dest.CountryCode, opt => opt.MapFrom(src => src.CountryCode))
                .ForMember(dest => dest.EmailAddress, opt => opt.MapFrom(src => src.EmailAddress))
                .ForMember(dest => dest.MobileNumber, opt => opt.MapFrom(src => src.MobileNumber))
                .ForMember(dest => dest.FootballClub, opt => opt.MapFrom(src => src.FootballClub))
                .ForMember(dest => dest.Age, opt => opt.MapFrom(src => src.Age))
                .ForMember(dest => dest.Position, opt => opt.MapFrom(src => src.Position));

            // updated user profile information to database model
            this.CreateMap<UpdateUserProfileRequest, DatabaseModel.UserProfile>()
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.ProfileId))
                .ForMember(dest => dest.EmailAddress, opt => opt.MapFrom(src => src.Email))
                .ForMember(dest => dest.Country, opt => opt.MapFrom(src => src.Country))
                .ForMember(dest => dest.Position, opt => opt.MapFrom(src => src.Position))
                .ForMember(dest => dest.Age, opt => opt.MapFrom(src => src.Age))
                .ForMember(dest => dest.FootballClub, opt => opt.MapFrom(src => src.FootballClub))
                .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.Name))
                .ForMember(dest => dest.UserId, opt => opt.Ignore())
                .ForMember(dest => dest.MobileNumber, opt => opt.Ignore())
                .ForMember(dest => dest.CountryCode, opt => opt.Ignore())
                .ForMember(dest => dest.IsDeleted, opt => opt.Ignore())
                .ForMember(dest => dest.VerificationCode, opt => opt.Ignore())
                .ForMember(dest => dest.CreatedOn, opt => opt.Ignore());
        }
    }
}