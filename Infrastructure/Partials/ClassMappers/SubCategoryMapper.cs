using DapperExtensions.Mapper;
using Infrastructure.Common;
using Infrastructure.DatabaseModels;

namespace Infrastructure.Partials.ClassMappers
{
    /// <summary>
    /// SubCategoryMapper class
    /// </summary>
    /// <seealso cref="ClassMapper{SubCategory}" />
    public class SubCategoryMapper : ClassMapper<SubCategory>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SubCategoryMapper"/> class.
        /// </summary>
        public SubCategoryMapper()
        {
            this.Table(TableNames.SubCategory);
            this.Map(x => x.Category).Ignore();
            this.AutoMap();
        }
    }
}