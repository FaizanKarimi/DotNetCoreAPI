using Infrastructure.DatabaseModels;

namespace Repository.Interfaces
{
    /// <summary>
    /// IRefreshTokenRespository interface
    /// </summary>
    /// <seealso cref="IBaseRepository{RefreshToken}" />
    public interface IRefreshTokenRespository : IBaseRepository<RefreshToken>
    {
        /// <summary>
        /// Gets the specified user identifier.
        /// </summary>
        /// <param name="userId">The user identifier.</param>
        /// <param name="refreshToken">The refresh token.</param>
        /// <returns>
        /// the refresh token object
        /// </returns>
        RefreshToken Get(string userId, string refreshToken);
    }
}