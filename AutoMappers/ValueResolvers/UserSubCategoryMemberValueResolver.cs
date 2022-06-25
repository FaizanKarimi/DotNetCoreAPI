using System.Collections.Generic;
using System.Linq;
using AutoMapper;
using Infrastructure.APIResponseModels;
using Infrastructure.ExtensionMethods.Framework;
using DatabaseModels = Infrastructure.DatabaseModels;

namespace AutoMappers.ValueResolvers
{
    /// <summary>
    /// UserSubCategoryMemberValueResolver class
    /// </summary>
    /// <seealso cref="IMemberValueResolver{DatabaseModels.UserCategory, UserCategoryInformation, List{DatabaseModels.UserSubCategory}, List{UserSubCategoryInformation}}" />
    public class UserSubCategoryMemberValueResolver : IMemberValueResolver<DatabaseModels.UserCategory, UserCategoryInformation, List<DatabaseModels.UserSubCategory>, List<UserSubCategoryInformation>>
    {
        /// <summary>
        /// Implementors use source object to provide a destination object.
        /// </summary>
        /// <param name="source">Source object</param>
        /// <param name="destination">Destination object, if exists</param>
        /// <param name="sourceMember">Source member</param>
        /// <param name="destMember">Destination member</param>
        /// <param name="context">The context of the mapping</param>
        /// <returns>
        /// Result, typically build from the source resolution result
        /// </returns>
        public List<UserSubCategoryInformation> Resolve(DatabaseModels.UserCategory source, UserCategoryInformation destination, List<DatabaseModels.UserSubCategory> sourceMember, List<UserSubCategoryInformation> destMember, ResolutionContext context)
        {
            List<UserSubCategoryInformation> userSubCategoryInformations = new List<UserSubCategoryInformation>();

            if (sourceMember == null || sourceMember.IsNotAny())
            {
                return userSubCategoryInformations;
            }

            foreach (DatabaseModels.UserSubCategory userSubCategory in sourceMember)
            {
                DatabaseModels.SubCategory subCategory = source.SubCategories.FirstOrDefault(x => x.Id == userSubCategory.SubCategoryId);

                UserSubCategoryInformation userSubCategoryInformation = new UserSubCategoryInformation()
                {
                    CurrentRepetitions = userSubCategory.Repetitions,
                    Points = userSubCategory.AttributeValue,
                    IsLocked = subCategory?.IsLocked,
                    ImagePath = subCategory?.ImagePath,
                    Category = userSubCategory.AttributeKey
                };
                userSubCategoryInformations.Add(userSubCategoryInformation);
            }

            return userSubCategoryInformations;
        }
    }
}