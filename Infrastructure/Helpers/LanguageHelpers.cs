using System.Collections.Generic;
using System.Globalization;
using Infrastructure.Enums;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Localization;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// LanguageHelpers class
    /// </summary>
    public static class LanguageHelpers
    {
        /// <summary>
        /// Gets the supported localizations.
        /// </summary>
        /// <returns>
        /// the Request Localization Options
        /// </returns>
        public static RequestLocalizationOptions GetSupportedLocalizations()
        {
            List<CultureInfo> supportedCultures = new List<CultureInfo>()
            {
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.English)),
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.France))
            };

            RequestLocalizationOptions requestLocalizationOptions = new RequestLocalizationOptions()
            {
                DefaultRequestCulture = new RequestCulture(EnumHelpers.GetDescription(LanguageCodes.English)),
                SupportedCultures = supportedCultures,
                SupportedUICultures = supportedCultures
            };

            return requestLocalizationOptions;
        }

        /// <summary>
        /// Gets the supported culture infos.
        /// </summary>
        /// <returns>
        /// the supported culture infos
        /// </returns>
        public static List<CultureInfo> GetSupportedCultureInfos()
        {
            List<CultureInfo> supportedCultures = new List<CultureInfo>()
            {
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.English)),
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.France))
            };

            return supportedCultures;
        }

        /// <summary>
        /// Gets the supported UI culture infos.
        /// </summary>
        /// <returns>
        /// the supported UI culture infos
        /// </returns>
        public static List<CultureInfo> GetSupportedUICultureInfos()
        {
            List<CultureInfo> supportedUICultures = new List<CultureInfo>()
            {
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.English)),
                new CultureInfo(EnumHelpers.GetDescription(LanguageCodes.France))
            };

            return supportedUICultures;
        }

        /// <summary>
        /// Gets the default request culture.
        /// </summary>
        /// <returns>
        /// the default request culture
        /// </returns>
        public static RequestCulture GetDefaultRequestCulture()
        {
            return new RequestCulture(culture: EnumHelpers.GetDescription(LanguageCodes.English), uiCulture: EnumHelpers.GetDescription(LanguageCodes.English));
        }
    }
}