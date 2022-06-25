using System;
using AutoMapper;
using Identity;
using Infrastructure.APIRequestModels;
using Infrastructure.Common;
using Infrastructure.Configurations;

namespace AutoMappers.Profiles
{
    /// <summary>
    /// LevelsUpUserProfile class
    /// </summary>
    /// <seealso cref="Profile" />
    public class LevelsUpUserProfile : Profile
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
                return AutoMapperProfileNames.LevelsUpUserProfile;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpUserProfile"/> class.
        /// </summary>
        public LevelsUpUserProfile()
        {
            // Request to DatabaseModel
            this.CreateMap<RegisterRequest, LevelsUpUser>()
                .ForMember(dest => dest.UserName, opt => opt.MapFrom(src => src.Email))
                .ForMember(dest => dest.Email, opt => opt.MapFrom(src => src.Email))
                .ForMember(dest => dest.PhoneNumber, opt => opt.MapFrom(src => src.MobileNumber))
                .ForMember(dest => dest.DateRegistration, opt => opt.MapFrom(src => DateTime.UtcNow));

            // Configuration setting to Request
            this.CreateMap<AppSettings, RegisterRequest>()
                .ForMember(dest => dest.Email, opt => opt.MapFrom(src => src.AdminUsername))
                .ForMember(dest => dest.Password, opt => opt.MapFrom(src => src.AdminPassword))
                .ForMember(dest => dest.Country, opt => opt.MapFrom(src => src.AdminCountry))
                .ForMember(dest => dest.CountryCode, opt => opt.MapFrom(src => src.AdminCountryCode))
                .ForMember(dest => dest.MobileNumber, opt => opt.MapFrom(src => src.AdminMobileNumber))
                .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.AdminName));
        }
    }
}