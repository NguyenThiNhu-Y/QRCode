using QRCode.Localization;
using Volo.Abp.AspNetCore.Mvc;

namespace QRCode.Controllers
{

    /* Inherit your controllers from this class.
     */
    public abstract class QRCodeController : AbpControllerBase
    {
        protected QRCodeController()
        {
            LocalizationResource = typeof(QRCodeResource);
        }
    }
}