using System.Data;

namespace Repository.Provider
{
    /// <summary>
    /// UnitOfWork class
    /// </summary>
    /// <seealso cref="IUnitOfWork" />
    public class UnitOfWork : IUnitOfWork
    {
        #region Public Propertise
        /// <summary>
        /// Gets or sets the connection.
        /// </summary>
        /// <value>
        /// The connection.
        /// </value>
        public IDbConnection Connection { get; set; }

        /// <summary>
        /// Gets or sets the transaction.
        /// </summary>
        /// <value>
        /// The transaction.
        /// </value>
        public IDbTransaction Transaction { get; set; }
        #endregion

        #region Public Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="UnitOfWork"/> class.
        /// </summary>
        /// <param name="connection">The connection.</param>
        public UnitOfWork(IDbConnection connection)
        {
            Connection = connection;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Open up the database connection
        /// </summary>
        public void Open()
        {
            this.Connection.Open();
        }

        /// <summary>
        /// Closes the database connection
        /// </summary>
        public void Close()
        {
            if (Connection.State == ConnectionState.Open || Connection.State == ConnectionState.Broken)
            {
                this.Connection.Close();
            }
        }

        #region Transaction Block
        /// <summary>
        /// Begin the transaction
        /// </summary>
        /// <returns>
        /// the transaction
        /// </returns>
        public IDbTransaction BeginTransaction()
        {
            return this.Transaction = Connection.BeginTransaction();
        }

        /// <summary>
        /// Roll back the transaction
        /// </summary>
        public void RollBackTransaction()
        {
            if (this.Transaction != null)
            {
                this.Transaction.Rollback();
            }
        }

        /// <summary>
        /// Commit the transaction into database
        /// </summary>
        public void CommitTransaction()
        {
            this.Transaction.Commit();
        }
        #endregion

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources.
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        public void Dispose(bool disposing)
        {
            if (disposing)
            {
                this.Close();
            }
        }
        #endregion
    }
}