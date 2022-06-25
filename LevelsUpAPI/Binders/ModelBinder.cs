using System;
using System.IO;
using System.Threading.Tasks;
using Infrastructure.Enums;
using Infrastructure.Exceptions;
using Infrastructure.Helpers;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace LevelsUpAPI.Binders
{
    /// <summary>
    /// ModelBinder class
    /// </summary>
    /// <seealso cref="IModelBinder" />
    public class ModelBinder : IModelBinder
    {
        /// <summary>
        /// The model type
        /// </summary>
        private readonly Type _modelType;

        /// <summary>
        /// Initializes a new instance of the <see cref="ModelBinder"/> class.
        /// </summary>
        /// <param name="type">The type.</param>
        public ModelBinder(Type type)
        {
            this._modelType = type;
        }

        /// <summary>
        /// Attempts to bind a model.
        /// </summary>
        /// <param name="bindingContext">The <see cref="T:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBindingContext" />.</param>
        /// <returns>
        /// <para>
        /// A <see cref="T:System.Threading.Tasks.Task" /> which will complete when the model binding process completes.
        /// </para>
        /// <para>
        /// If model binding was successful, the <see cref="P:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBindingContext.Result" /> should have
        /// <see cref="P:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBindingResult.IsModelSet" /> set to <c>true</c>.
        /// </para>
        /// <para>
        /// A model binder that completes successfully should set <see cref="P:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBindingContext.Result" /> to
        /// a value returned from <see cref="M:Microsoft.AspNetCore.Mvc.ModelBinding.ModelBindingResult.Success(System.Object)" />.
        /// </para>
        /// </returns>
        public Task BindModelAsync(ModelBindingContext bindingContext)
        {
            if (bindingContext == null)
            {
                throw new LevelsUpException(ErrorMessages.MODEL_BINDING_CONTEXT_ERROR, ErrorCodes.BadRequest);
            }

            string valueFromBody = string.Empty;

            // For GET request read the id value from the query
            if (bindingContext.HttpContext.Request.Method.ToUpper() == HttpMethods.Get.ToString().ToUpper())
            {
                string id = bindingContext.ActionContext.RouteData.Values[nameof(id)] as string;
                if (!string.IsNullOrEmpty(id))
                {
                    valueFromBody = id;
                }
                else
                {
                    return Task.CompletedTask;
                }
            }
            else
            {
                using (StreamReader streamReader = new StreamReader(bindingContext.HttpContext.Request.Body))
                {
                    valueFromBody = streamReader.ReadToEnd();
                }

                if (string.IsNullOrEmpty(valueFromBody))
                {
                    return Task.CompletedTask;
                }
            }

            try
            {
                object request = JsonSerializerHelper.Deserialize(valueFromBody, this._modelType);
                if (request != null)
                {
                    bindingContext.Result = ModelBindingResult.Success(request);
                }
            }
            catch (Exception)
            {
                throw new LevelsUpException(ErrorMessages.MODEL_BINDER_DESERIALIZATION_ERROR, ErrorCodes.BadRequest, this._modelType.Name);
            }

            return Task.CompletedTask;
        }
    }
}