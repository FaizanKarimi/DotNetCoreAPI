using Infrastructure.DatabaseModels;
using Repository.Interfaces;

namespace Repository.Implementations
{
    /// <summary>
    /// CategoryRepository class
    /// </summary>
    /// <seealso cref="BaseRepository{Category}" />
    /// <seealso cref="ICategoryRepository" />
    public class CategoryRepository : BaseRepository<Category>, ICategoryRepository
    {
        
    }
}