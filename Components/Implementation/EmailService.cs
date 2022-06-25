using System.Net;
using System.Threading.Tasks;
using Components.Interfaces;
using Hangfire;
using Infrastructure.Configurations;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace Components.Implementation
{
    /// <summary>
    /// EmailService class
    /// </summary>
    /// <seealso cref="IEmailService" />
    public class EmailService : BaseComponent, IEmailService
    {
        /// <summary>
        /// The send grid setting
        /// </summary>
        private readonly SendGridSettings _sendGridSetting;

        /// <summary>
        /// The background job client
        /// </summary>
        private readonly IBackgroundJobClient _backgroundJobClient;

        /// <summary>
        /// The application settings
        /// </summary>
        private readonly AppSettings _appSettings;

        /// <summary>
        /// Initializes a new instance of the <see cref="EmailService" /> class.
        /// </summary>
        /// <param name="appSetting">The application setting.</param>
        /// <param name="sendGridSetting">The send grid setting.</param>
        /// <param name="recurringJobManager">The recurring job manager.</param>
        public EmailService(AppSettings appSetting, SendGridSettings sendGridSetting, IBackgroundJobClient backgroundJobClient)
        {
            this._sendGridSetting = sendGridSetting;
            this._backgroundJobClient = backgroundJobClient;
            this._appSettings = appSetting;
        }

        /// <summary>
        /// Sends the account verification email.
        /// </summary>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="username">The username.</param>
        /// <param name="verificationCode">The verification code.</param>
        public void SendAccountVerificationEmail(string emailAddress, string username, string verificationCode)
        {
            this._backgroundJobClient.Enqueue(() => this.SendAccountVerificationEmailInternal(emailAddress, username, verificationCode));
        }

        /// <summary>
        /// Sends the account verification email internal.
        /// </summary>
        /// <param name="emailAddress">The email address.</param>
        /// <param name="username">The username.</param>
        /// <param name="verificationCode">The verification code.</param>
        public async Task SendAccountVerificationEmailInternal(string emailAddress, string username, string verificationCode)
        {
            string subject = "LevelsUp verification code";
            EmailAddress to = new EmailAddress(emailAddress, username);
            string htmlContent = $"<strong>Your verification code is: {verificationCode}</strong>";
            await this.SendEmailAsync(to, subject, htmlContent);
        }

        /// <summary>
        /// Sends the email.
        /// </summary>
        /// <param name="to">To.</param>
        /// <param name="subject">The subject.</param>
        /// <param name="htmlContent">Content of the HTML.</param>
        private async Task SendEmailAsync(EmailAddress to, string subject, string htmlContent)
        {
            SendGridClient sendGridClient = new SendGridClient(this._sendGridSetting.Key);
            EmailAddress from = new EmailAddress(this._appSettings.SupportEmail, this._appSettings.SupportUsername);
            SendGridMessage message = MailHelper.CreateSingleEmail(from, to, subject, string.Empty, htmlContent);
            Response response = await sendGridClient.SendEmailAsync(message).ConfigureAwait(false);
            HttpStatusCode statusCode = response.StatusCode;
            this.logger.Debug($"Email sent status code is: {statusCode}");
        }
    }
}