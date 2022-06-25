using System.Data;
using System.Data.SqlClient;
using Infrastructure.Common;
using Microsoft.Extensions.Configuration;

namespace Repository.Provider
{
    /// <summary>
    /// MSSQL class
    /// </summary>
    /// <seealso cref="IDbConnection" />
    public class MSSQL : IDbConnection
    {
        #region Propertise
        /// <summary>
        /// Gets or sets the string used to open a database.
        /// </summary>
        public string ConnectionString { get; set; }
        #endregion

        #region Private Members
        /// <summary>
        /// The connection
        /// </summary>
        private readonly SqlConnection _connection;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="MSSQL"/> class.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public MSSQL(IConfiguration configuration)
        {
            ConnectionString = configuration.GetConnectionString(Constants.ConnectionStringName);
            this._connection = new SqlConnection(ConnectionString);
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Opens a database connection with the settings specified by the ConnectionString property of the provider-specific Connection object.
        /// </summary>
        public void Open()
        {
            if (this._connection.State == ConnectionState.Closed || this._connection.State == ConnectionState.Broken)
            {
                this._connection.Open();
            }
        }

        /// <summary>
        /// Closes the connection to the database.
        /// </summary>
        public void Close()
        {
            if (this._connection != null && this._connection.State == ConnectionState.Open)
            {
                this._connection.Close();
            }
        }

        /// <summary>
        /// Changes the current database for an open Connection object.
        /// </summary>
        /// <param name="databaseName">The name of the database to use in place of the current database.</param>
        public void ChangeDatabase(string databaseName)
        {
            this._connection.ChangeDatabase(databaseName);
        }

        /// <summary>
        /// Gets the time to wait while trying to establish a connection before terminating the attempt and generating an error.
        /// </summary>
        public int ConnectionTimeout
        {
            get { return this._connection.ConnectionTimeout; }
        }

        /// <summary>
        /// Gets the name of the current database or the database to be used after a connection is opened.
        /// </summary>
        public string Database
        {
            get { return this._connection.Database; }
        }

        /// <summary>
        /// Gets the current state of the connection.
        /// </summary>
        public ConnectionState State
        {
            get { return this._connection.State; }
        }

        /// <summary>
        /// Creates and returns a Command object associated with the connection.
        /// </summary>
        /// <returns>
        /// A Command object associated with the connection.
        /// </returns>
        public IDbCommand CreateCommand()
        {
            return this._connection.CreateCommand();
        }
        #endregion

        #region Transaction Block
        /// <summary>
        /// Begins a database transaction.
        /// </summary>
        /// <returns>
        /// An object representing the new transaction.
        /// </returns>
        public IDbTransaction BeginTransaction()
        {
            return this._connection.BeginTransaction();
        }

        /// <summary>
        /// Begins a database transaction with the specified <see cref="T:System.Data.IsolationLevel"></see> value.
        /// </summary>
        /// <param name="il">One of the <see cref="T:System.Data.IsolationLevel"></see> values.</param>
        /// <returns>
        /// An object representing the new transaction.
        /// </returns>
        public IDbTransaction BeginTransaction(IsolationLevel il)
        {
            return this._connection.BeginTransaction(il);
        }
        #endregion

        #region Dispose
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
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                Close();
            }
        }
        #endregion
    }
}