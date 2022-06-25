using AutoMapper;
using Infrastructure.DatabaseModels;
using Infrastructure.Helpers;

namespace Infrastructure.ExtensionMethods.Framework
{
    /// <summary>
    /// AutoMapperExtensionMethods class
    /// </summary>
    public static class AutoMapperExtensionMethods
    {
        /// <summary>
        /// Maps to.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// the mapped entity
        /// </returns>
        public static TEntity MapTo<TEntity>(this IDatabaseEntity entity) where TEntity : class
        {
            IMapper automapper = ServiceHelpers.GetMapper();
            return automapper.Map<TEntity>(entity);
        }
    }
}