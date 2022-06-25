using Castle.DynamicProxy;

namespace Logging
{
    /// <summary>
    /// LoggingInterceptor class
    /// </summary>
    public class LoggingInterceptor : IInterceptor
    {
        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// Initializes a new instance of the <see cref="LoggingInterceptor"/> class.
        /// </summary>
        /// <param name="logger">The logger.</param>
        public LoggingInterceptor(ILogger logger)
        {
            this._logger = logger;
        }

        /// <summary>
        /// Intercepts the specified invocation.
        /// </summary>
        /// <param name="invocation">The invocation.</param>
        public void Intercept(IInvocation invocation)
        {
            this.BeforeSend(invocation);

            invocation.Proceed();

            this.AfterSend(invocation);
        }

        /// <summary>
        /// Befores the send.
        /// </summary>
        /// <param name="invocation">The invocation.</param>
        private void BeforeSend(IInvocation invocation)
        {
            this._logger.Debug($"Method execution started: {invocation.Method.Name}, FileName: {invocation.TargetType.Name}");
        }

        /// <summary>
        /// Afters the send.
        /// </summary>
        /// <param name="invocation">The invocation.</param>
        private void AfterSend(IInvocation invocation)
        {
            this._logger.Debug($"Method execution ended: {invocation.Method.Name}, FileName: {invocation.TargetType.Name}");
        }
    }
}