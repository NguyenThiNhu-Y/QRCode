using QRCode.MongoDB;
using Volo.Abp.Modularity;

namespace QRCode
{

    [DependsOn(
        typeof(QRCodeMongoDbTestModule)
        )]
    public class QRCodeDomainTestModule : AbpModule
    {

    }
}