namespace Infrastructure.Configurations.ValidationServices
{
    /// <summary>
    /// ISettingValidationStartupFilter interface
    /// </summary>
    public interface ISettingValidationStartupFilter
    {
        /// <summary>
        /// Validates this instance.
        /// </summary>
        void Validate();
    }
}