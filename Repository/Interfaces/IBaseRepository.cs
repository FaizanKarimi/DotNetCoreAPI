using System.Collections.Generic;

namespace Repository.Interfaces
{
    /// <summary>
    /// IBaseRepository interface
    /// </summary>
    /// <typeparam name="T">the entity type</typeparam>
    /// <seealso cref="IRepository" />
    public interface IBaseRepository<T> : IRepository
    {
        /// <summary>
        /// Inserts the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// the entity
        /// </returns>
        T Insert(T entity);

        /// <summary>
        /// Deletes the specified identifier.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool Delete(T entity);

        /// <summary>
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool Update(T entity);

        /// <summary>
        /// Updates the specified entities.
        /// </summary>
        /// <param name="entities">The entities.</param>
        /// <returns>
        /// true or false
        /// </returns>
        bool Update(List<T> entities);

        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// the entity
        /// </returns>
        T Get(int id);

        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns>
        /// the list of entity
        /// </returns>
        List<T> GetAll();
    }
}