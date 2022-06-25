using System;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// MachineConfigurationHelpers class
    /// </summary>
    public static class MachineConfigurationHelpers
    {
        /// <summary>
        /// Gets the name of the machine.
        /// </summary>
        /// <returns>
        /// Machine name
        /// </returns>
        public static string GetMachineName()
        {
            try
            {
                return Environment.MachineName;
            }
            catch (Exception)
            {
                return string.Empty;
            }
        }
    }
}