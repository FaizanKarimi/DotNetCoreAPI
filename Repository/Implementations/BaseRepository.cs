using System.Collections.Generic;
using System.Linq;
using DapperExtensions;
using Repository.Interfaces;
using Repository.Provider;

namespace Repository.Implementations
{
    /// <summary>
    /// BaseRepository class
    /// </summary>
    /// <typeparam name="T">the entity type</typeparam>
    /// <seealso cref="IBaseRepository{T}" />
    public class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        /// <summary>
        /// Gets or sets the unit of work.
        /// </summary>
        /// <value>
        /// The unit of work.
        /// </value>
        public IUnitOfWork UnitOfWork { get; set; }

        /// <summary>
        /// Deletes the specified identifier.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool Delete(T entity)
        {
            return UnitOfWork.Connection.Delete<T>(entity, UnitOfWork.Transaction);
        }

        /// <summary>
        /// Gets the specified identifier.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>
        /// the entity
        /// </returns>
        public T Get(int id)
        {
            return UnitOfWork.Connection.Get<T>(id);
        }

        /// <summary>
        /// Gets all.
        /// </summary>
        /// <returns>
        /// the list of entity
        /// </returns>
        public List<T> GetAll()
        {
            return UnitOfWork.Connection.GetList<T>().ToList();
        }

        /// <summary>
        /// Inserts the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// the entity
        /// </returns>
        public T Insert(T entity)
        {
            UnitOfWork.Connection.Insert<T>(entity, UnitOfWork.Transaction);
            return entity;
        }

        /// <summary>
        /// Updates the specified entity.
        /// </summary>
        /// <param name="entity">The entity.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool Update(T entity)
        {
            return UnitOfWork.Connection.Update<T>(entity, UnitOfWork.Transaction);
        }

        /// <summary>
        /// Updates the specified entities.
        /// </summary>
        /// <param name="entities">The entities.</param>
        /// <returns>
        /// true or false
        /// </returns>
        public bool Update(List<T> entities)
        {
            return UnitOfWork.Connection.Update<List<T>>(entities, UnitOfWork.Transaction);
        }
    }
}