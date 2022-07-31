using Volo.Abp.Ui.Branding;
using Volo.Abp.DependencyInjection;

namespace QRCode.Web
{

    [Dependency(ReplaceServices = true)]
    public class QRCodeBrandingProvider : DefaultBrandingProvider
    {
        public override string AppName => "QRCode";
    }
}