using Volo.Abp.Modularity;

namespace QRCode
{

    [DependsOn(
        typeof(QRCodeApplicationModule),
        typeof(QRCodeDomainTestModule)
        )]
    public class QRCodeApplicationTestModule : AbpModule
    {

    }
}