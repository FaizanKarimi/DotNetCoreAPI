using System.ComponentModel;

namespace Infrastructure.Enums
{
    /// <summary>
    /// LanguageCodes enumeration
    /// </summary>
    public enum LanguageCodes
    {
        /// <summary>
        /// The english
        /// </summary>
        [Description("en-US")]
        English,

        /// <summary>
        /// The spain
        /// </summary>
        [Description("es-ES")]
        Spain,

        /// <summary>
        /// The france
        /// </summary>
        [Description("fr-FR")]
        France,

        /// <summary>
        /// The italy
        /// </summary>
        [Description("it-IT")]
        Italy,

        /// <summary>
        /// The germany
        /// </summary>
        [Description("de-DE")]
        Germany,

        /// <summary>
        /// The denmark
        /// </summary>
        [Description("da-DK")]
        Denmark,

        /// <summary>
        /// The sweden
        /// </summary>
        [Description("sv-SE")]
        Sweden
    }
}