using System.Collections.Generic;
using AutoMapper;
using AutoMappers.ValueResolvers;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using Infrastructure.ExtensionMethods.Framework;
using DatabaseModels = Infrastructure.DatabaseModels;

namespace AutoMappers.Profiles
{
    /// <summary>
    /// UserCategoryProfile class
    /// </summary>
    /// <seealso cref="Profile" />
    public class UserCategoryProfile : Profile
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
                return AutoMapperProfileNames.UserCategoryProfile;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategoryProfile"/> class.
        /// </summary>
        public UserCategoryProfile()
        {
            // DatabaseModel to Response
            this.CreateMap<DatabaseModels.UserCategory, UserCategoryInformation>()
                 .ForMember(dest => dest.Category, opt => opt.MapFrom(src => src.AttributeKey.ToPascal()))
                 .ForMember(dest => dest.LevelValue, opt => opt.MapFrom(src => src.AttributeValue))
                 .ForMember(dest => dest.UserSubCategoryInformation, opt => opt.MapFrom<UserSubCategoryMemberValueResolver, List<DatabaseModels.UserSubCategory>>(s => s.UserSubCategories))
                 .ForMember(dest => dest.IsLocked, opt => opt.MapFrom<UserCategoryLockedValueResolver>());
        }
    }
}