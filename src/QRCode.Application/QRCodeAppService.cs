using System;
using System.Collections.Generic;
using System.Text;
using QRCode.Localization;
using Volo.Abp.Application.Services;

namespace QRCode
{

    /* Inherit your application services from this class.
     */
    public abstract class QRCodeAppService : ApplicationService
    {
        protected QRCodeAppService()
        {
            LocalizationResource = typeof(QRCodeResource);
        }
    }
}