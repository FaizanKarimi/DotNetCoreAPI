using AutoMapper;
using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using DatabaseModels = Infrastructure.DatabaseModels;

namespace AutoMappers.Profiles
{
    /// <summary>
    /// UserSubCategoryProfile class
    /// </summary>
    /// <seealso cref="Profile" />
    public class UserSubCategoryProfile : Profile
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
                return AutoMapperProfileNames.UserSubCategoryProfile;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="UserSubCategoryProfile" /> class.
        /// </summary>
        public UserSubCategoryProfile()
        {
            // DatabaseModel to Response
            this.CreateMap<DatabaseModels.UserSubCategory, UserSubCategoryInformation>()
                    .ForMember(dest => dest.Category, opt => opt.MapFrom(src => src.AttributeKey))
                    .ForMember(dest => dest.CurrentRepetitions, opt => opt.MapFrom(src => src.Repetitions))
                    .ForMember(dest => dest.Points, opt => opt.MapFrom(src => src.AttributeValue))
                    .ForMember(dest => dest.IsLocked, opt => opt.MapFrom<UserSubCategoryLockedValueResolver>())
                    .ForMember(dest => dest.ImagePath, opt => opt.MapFrom<UserSubCategoryImagePathValueResolver>());
        }
    }
}