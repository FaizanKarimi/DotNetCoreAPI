using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace LevelsUpAPI.Binders
{
    /// <summary>
    /// ModelBinderProvider class
    /// </summary>
    /// <seealso cref="IModelBinderProvider" />
    public class ModelBinderProvider : IModelBinderProvider
    {
        /// <summary>
        /// Creates a <see cref="T:Microsoft.AspNetCore.Mvc.ModelBinding.IModelBinder" /> based on <see cref="T:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBinderProviderContext" />.
        /// </summary>
        /// <param name="context">The <see cref="T:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBinderProviderContext" />.</param>
        /// <returns>
        /// An <see cref="T:Microsoft.AspNetCore.Mvc.ModelBinding.IModelBinder" />.
        /// </returns>
        public IModelBinder GetBinder(ModelBinderProviderContext context)
        {
            return new ModelBinder(context.Metadata.ModelType);    
        }
    }
}