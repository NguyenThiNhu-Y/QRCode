using QRCode.Localization;
using Volo.Abp.AspNetCore.Mvc.UI.RazorPages;

namespace QRCode.Web.Pages
{

    /* Inherit your PageModel classes from this class.
     */
    public abstract class QRCodePageModel : AbpPageModel
    {
        protected QRCodePageModel()
        {
            LocalizationResourceType = typeof(QRCodeResource);
        }
    }
}