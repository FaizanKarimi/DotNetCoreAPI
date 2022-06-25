using Hangfire.Client;
using Hangfire.Common;
using Hangfire.Server;
using Hangfire.States;
using Hangfire.Storage;
using Logging;

namespace LevelsUpAPI.Filters
{
    /// <summary>
    /// HangfireJobExecutionFilter class
    /// </summary>
    /// <seealso cref="JobFilterAttribute" />
    /// <seealso cref="IClientFilter" />
    /// <seealso cref="IServerFilter" />
    /// <seealso cref="IElectStateFilter" />
    /// <seealso cref="IApplyStateFilter" />
    public class HangfireJobExecutionFilter : JobFilterAttribute, IClientFilter, IServerFilter, IElectStateFilter, IApplyStateFilter
    {
        /// <summary>
        /// The logger
        /// </summary>
        private readonly ILogger _logger;

        /// <summary>
        /// Initializes a new instance of the <see cref="HangfireJobExecutionFilter"/> class.
        /// </summary>
        /// <param name="logger">The logger.</param>
        public HangfireJobExecutionFilter(ILogger logger)
        {
            this._logger = logger;
        }

        /// <summary>
        /// Called when [creating].
        /// </summary>
        /// <param name="filterContext">The context.</param>
        public void OnCreating(CreatingContext filterContext)
        {
            this._logger.Debug($"Creating a job based on method [{filterContext.Job.Method.Name}]");
        }

        /// <summary>
        /// Called when [created].
        /// </summary>
        /// <param name="filterContext">The context.</param>
        public void OnCreated(CreatedContext filterContext)
        {
            this._logger.Debug($"Job that is based on method [{filterContext.Job.Method.Name}] has been created with id [{filterContext.BackgroundJob?.Id}]");
        }

        /// <summary>
        /// Called when [performing].
        /// </summary>
        /// <param name="filterContext">The context.</param>
        public void OnPerforming(PerformingContext filterContext)
        {
            this._logger.Debug($"Starting to perform job [{filterContext.BackgroundJob.Id}]");
        }

        /// <summary>
        /// Called when [performed].
        /// </summary>
        /// <param name="filterContext">The context.</param>
        public void OnPerformed(PerformedContext filterContext)
        {
            this._logger.Debug($"Job [{filterContext.BackgroundJob.Id}] has been performed");
        }

        /// <summary>
        /// Called when the current state of the job is being changed to the
        /// specified candidate state.
        /// This state change could be intercepted and the final state could
        /// be changed through setting the different state in the context
        /// in an implementation of this method.
        /// </summary>
        /// <param name="context"></param>
        public void OnStateElection(ElectStateContext context)
        {
            FailedState failedState = context.CandidateState as FailedState;
            if (failedState != null)
            {
                this._logger.Debug($"Job [{context.BackgroundJob.Id}] has been failed due to an exception [{failedState.Exception}]");
            }
        }

        /// <summary>
        /// Called after the specified state was applied
        /// to the job within the given transaction.
        /// </summary>
        /// <param name="context"></param>
        /// <param name="transaction"></param>
        public void OnStateApplied(ApplyStateContext context, IWriteOnlyTransaction transaction)
        {
            this._logger.Debug($"Job [{context.BackgroundJob.Id}] state was changed from [{context.OldStateName}] to [{context.NewState.Name}]");
        }

        /// <summary>
        /// Called when the state with specified state was
        /// unapplied from the job within the given transaction.
        /// </summary>
        /// <param name="context"></param>
        /// <param name="transaction"></param>
        public void OnStateUnapplied(ApplyStateContext context, IWriteOnlyTransaction transaction)
        {
            this._logger.Debug($"Job [{context.BackgroundJob.Id}] state [{context.OldStateName}] was unapplied.");
        }
    }
}