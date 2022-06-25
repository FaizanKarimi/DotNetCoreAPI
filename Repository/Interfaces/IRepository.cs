using Repository.Provider;

namespace Repository.Interfaces
{
    /// <summary>
    /// IBaseRepository interface
    /// </summary>
    public interface IRepository
    {
        /// <summary>
        /// Gets or sets the unit of work.
        /// </summary>
        /// <value>
        /// The unit of work.
        /// </value>
        IUnitOfWork UnitOfWork { get; set; }
    }
}