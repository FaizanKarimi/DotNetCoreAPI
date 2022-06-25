using System.IO;
using Infrastructure.Common;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Identity
{
    /// Add-Migration MyMigration -Project Identity -StartupProject LevelsUpAPI for adding the migration
    /// Update-Database for simple update the migrations

    /// <summary>
    /// LevelsUpDbContext class
    /// </summary>
    /// <seealso cref="IdentityDbContext{LevelsUpUser}" />
    public class LevelsUpDbContext : IdentityDbContext<LevelsUpUser>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpDbContext"/> class.
        /// </summary>
        public LevelsUpDbContext() { }

        /// <summary>
        /// Initializes a new instance of the <see cref="LevelsUpDbContext"/> class.
        /// </summary>
        /// <param name="options">The options.</param>
        public LevelsUpDbContext(DbContextOptions<LevelsUpDbContext> options) : base(options) { }

        /// <summary>
        /// <para>
        /// Override this method to configure the database (and other options) to be used for this context.
        /// This method is called for each instance of the context that is created.
        /// The base implementation does nothing.
        /// </para>
        /// <para>
        /// In situations where an instance of <see cref="T:Microsoft.EntityFrameworkCore.DbContextOptions" /> may or may not have been passed
        /// to the constructor, you can use <see cref="P:Microsoft.EntityFrameworkCore.DbContextOptionsBuilder.IsConfigured" /> to determine if
        /// the options have already been set, and skip some or all of the logic in
        /// <see cref="M:Microsoft.EntityFrameworkCore.DbContext.OnConfiguring(Microsoft.EntityFrameworkCore.DbContextOptionsBuilder)" />.
        /// </para>
        /// </summary>
        /// <param name="optionsBuilder">A builder used to create or modify options for this context. Databases (and other extensions)
        /// typically define extension methods on this object that allow you to configure the context.</param>
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                IConfigurationRoot configuration = new ConfigurationBuilder()
                                                       .SetBasePath(Directory.GetCurrentDirectory())
                                                       .AddJsonFile(Constants.AppSettingJsonFile)
                                                       .Build();

                string connectionString = configuration.GetConnectionString(Constants.ConnectionStringName);
                optionsBuilder.UseSqlServer(connectionString);
            }
        }
    }
}