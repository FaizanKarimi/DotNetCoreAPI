using System;
using System.IO;
using System.Reflection;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// CommonHelpers class
    /// </summary>
    public static class CommonHelpers
    {
        /// <summary>
        /// Get the domain name of the application.
        /// </summary>
        /// <returns>the domain name</returns>
        public static string GetDomainName()
        {
            return Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
        }

        /// <summary>
        /// Generate the random number and return's in string format.
        /// </summary>
        /// <returns>the verification code number</returns>
        public static string GenrateRandomNumber()
        {
            Random random = new Random();
            int number = random.Next(10000, 90000);
            int finalnumber = 0;
            for (int i = 0; i < Convert.ToString(number).Length; i++)
            {
                finalnumber = random.Next(number, 99999);
            }

            return finalnumber.ToString();
        }
    }
}