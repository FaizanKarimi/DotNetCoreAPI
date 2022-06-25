using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// IUserRepository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{AspNetUsers}" />
    public interface IUserRepository : IBaseRepository<AspNetUsers>
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="mobileNumber">The mobile number.</param>
        /// <returns>
        /// the user object
        /// </returns>
        AspNetUsers Get(string userId = null, string mobileNumber = null);
    }
}