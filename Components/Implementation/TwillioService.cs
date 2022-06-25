using System;
using Components.Interfaces;
using Hangfire;
using Infrastructure.Configurations;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace Components.Implementation
{
    /// <summary>
    /// TwillioService class
    /// </summary>
    /// <seealso cref="BaseComponent" />
    /// <seealso cref="ITwillioService" />
    public class TwillioService : BaseComponent, ITwillioService
    {
        #region Private Members
        /// <summary>
        /// The twillio settings
        /// </summary>
        private readonly TwillioSettings _twillioSettings;

        /// <summary>
        /// The background job client
        /// </summary>
        private readonly IBackgroundJobClient _backgroundJobClient;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="TwillioService" /> class.
        /// </summary>
        /// <param name="twillioSettings">The application settings.</param>
        /// <param name="backgroundJobClient">The background job client.</param>
        public TwillioService(TwillioSettings twillioSettings, IBackgroundJobClient backgroundJobClient)
        {
            this._twillioSettings = twillioSettings;
            this._backgroundJobClient = backgroundJobClient;
        }
        #endregion

        #region Public Methods
        /// <summary>
        /// Sends the message.
        /// </summary>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <param name="verificationCode">The verification code.</param>
        /// <returns>
        /// true or false
        /// </returns>
        /// <exception cref="LevelsUpException"></exception>
        public bool SendAccountVerificationMessage(string mobileNumber, string verificationCode)
        {
            bool IsSend = true;

            try
            {
                this._backgroundJobClient.Enqueue(() => this.SendAccountVerificationMessageInternal(mobileNumber, verificationCode));
            }
            catch (Exception)
            {
                throw new LevelsUpException(ErrorMessages.ERROR_OCCURED_WHILE_SENDING_MESSAGE_USING_TWILLIO, ErrorCodes.BadRequest);
            }
            finally
            {
                TwilioClient.Invalidate();
            }

            return IsSend;
        }

        /// <summary>
        /// Sends the account verification message internal.
        /// </summary>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <param name="verificationCode">The verification code.</param>
        public void SendAccountVerificationMessageInternal(string mobileNumber, string verificationCode)
        {
            string body = string.Concat(verificationCode, ": LevelsUp Verification Code.");
            this.SendSms(body, mobileNumber);
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Sends the SMS.
        /// </summary>
        /// <param name="body">The body.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        private void SendSms(string body, string mobileNumber)
        {
            TwilioClient.Init(this._twillioSettings.UserName, this._twillioSettings.AuthToken);
            MessageResource messageResource = MessageResource.Create(to: new PhoneNumber(mobileNumber), from: new PhoneNumber(this._twillioSettings.PhoneNumber), body: body);
            this.logger.Debug($"Message status is: {messageResource.Status}");
            bool IsSend = this._IsMessageSend(messageResource);
        }

        /// <summary>
        /// Determines whether [is message send] [the specified message resource].
        /// </summary>
        /// <param name="messageResource">The message resource.</param>
        /// <returns>
        /// <c>true</c> if [is message send] [the specified message resource]; otherwise, <c>false</c>.
        /// </returns>
        private bool _IsMessageSend(MessageResource messageResource)
        {
            return messageResource.Status == MessageResource.StatusEnum.Queued || messageResource.Status == MessageResource.StatusEnum.Sent;
        }
        #endregion
    }
}