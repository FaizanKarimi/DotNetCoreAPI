using DapperExtensions.Mapper;
using Infrastructure.Common;
using Infrastructure.DatabaseModels;

namespace Infrastructure.Partials.ClassMappers
{
    /// <summary>
    /// UserCategoryMapper class
    /// </summary>
    /// <seealso cref="ClassMapper{UserCategory}" />
    public class UserCategoryMapper : ClassMapper<UserCategory>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserCategoryMapper"/> class.
        /// </summary>
        public UserCategoryMapper()
        {
            this.Table(TableNames.UserCategory);
            this.Map(x => x.Category).Ignore();
            this.Map(x => x.SubCategories).Ignore();
            this.Map(x => x.UserSubCategories).Ignore();
            this.AutoMap();
        }
    }
}