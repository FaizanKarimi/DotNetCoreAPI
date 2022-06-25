using System;
using System.Data;
namespace Repository.Provider
{
    /// <summary>
    /// IUnitOfWork
    /// </summary>
    /// <seealso cref="IDisposable" />
    public interface IUnitOfWork : IDisposable
    {
        /// <summary>
        /// Gets or sets the connection.
        /// </summary>
        /// <value>
        /// The connection.
        /// </value>
        IDbConnection Connection { get; set; }

        /// <summary>
        /// Gets or sets the transaction.
        /// </summary>
        /// <value>
        /// The transaction.
        /// </value>
        IDbTransaction Transaction { get; set; }

        /// <summary>
        /// Opens this instance.
        /// </summary>
        void Open();

        /// <summary>
        /// Closes this instance.
        /// </summary>
        void Close();

        /// <summary>
        /// Begins the transaction.
        /// </summary>
        /// <returns></returns>
        IDbTransaction BeginTransaction();

        /// <summary>
        /// Rolls the back transaction.
        /// </summary>
        void RollBackTransaction();

        /// <summary>
        /// Commits the transaction.
        /// </summary>
        void CommitTransaction();
    }
}