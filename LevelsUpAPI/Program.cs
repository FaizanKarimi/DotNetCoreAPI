using System;
using System.Diagnostics;
using System.IO;
using Infrastructure.Common;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Serilog;

namespace LevelsUpAPI
{
    /// <summary>
    /// Program class
    /// </summary>
    public static class Program
    {
        /// <summary>
        /// Defines the entry point of the application.
        /// </summary>
        /// <param name="args">The arguments.</param>
        public static void Main(string[] args)
        {
            IConfigurationRoot configurationRoot = new ConfigurationBuilder()
                                        .SetBasePath(Directory.GetCurrentDirectory())
                                        .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                                        .Build();

            Log.Logger = new LoggerConfiguration()
                             .ReadFrom.Configuration(configurationRoot) // for reading the logging configuration from the json file
                             .Enrich.FromLogContext() // for pushing the new properties in the log context
                             .CreateLogger();

            Serilog.Debugging.SelfLog.Enable(msg =>
            {
                Debug.Print(msg);
                Debugger.Break();
            });

            try
            {
                Log.Information("Application Starting");
                CreateHostBuilder(args).UseSerilog().Build().Run();
            }
            catch (Exception ex)
            {
                Log.Fatal(ex, "Exception caught while starting the application");
                throw;
            }
            finally
            {
                Log.CloseAndFlush();
            }
        }

        /// <summary>
        /// Creates the host builder.
        /// </summary>
        /// <param name="args">The arguments.</param>
        /// <returns>
        /// the host builder
        /// </returns>
        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    // Configure the json files
                    webBuilder.ConfigureAppConfiguration(builder =>
                    {
                        builder.SetBasePath(Directory.GetCurrentDirectory())
                               .AddJsonFile("appsettings.json")
                               .AddJsonFile("appsettings.Development.json")
                               .AddEnvironmentVariables();
                    });

                    webBuilder.UseStartup<Startup>();
                });
    }
}