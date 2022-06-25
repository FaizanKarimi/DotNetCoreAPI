using AutoMapper;
using Infrastructure.APIResponseModels;
using Infrastructure.Common;
using DatabaseModel = Infrastructure.DatabaseModels;

namespace AutoMappers.Profiles
{
    /// <summary>
    /// SubCategoryProfile class
    /// </summary>
    /// <seealso cref="Profile" />
    public class SubCategoryProfile : Profile
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
                return AutoMapperProfileNames.SubCategoryProfile;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SubCategoryProfile"/> class.
        /// </summary>
        public SubCategoryProfile()
        {
            // DatabaseModel to Response
            this.CreateMap<DatabaseModel.SubCategory, UserSubCategoryDetailInformation>()
                .ForMember(dest => dest.Points, opt => opt.MapFrom(src => src.TotalPoints))
                .ForMember(dest => dest.Reps, opt => opt.MapFrom(src => src.Repetitions))
                .ForMember(dest => dest.TotalNumberOfPlay, opt => opt.MapFrom(src => src.PlaysPerDay))
                .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description));
        }
    }
}