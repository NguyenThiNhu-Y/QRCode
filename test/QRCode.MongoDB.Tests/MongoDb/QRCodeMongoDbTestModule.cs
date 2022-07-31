using System;
using Volo.Abp.Data;
using Volo.Abp.Modularity;

namespace QRCode.MongoDB
{

    [DependsOn(
        typeof(QRCodeTestBaseModule),
        typeof(QRCodeMongoDbModule)
        )]
    public class QRCodeMongoDbTestModule : AbpModule
    {
        public override void ConfigureServices(ServiceConfigurationContext context)
        {
            var stringArray = QRCodeMongoDbFixture.ConnectionString.Split('?');
            var connectionString = stringArray[0].EnsureEndsWith('/') +
                                       "Db_" +
                                   Guid.NewGuid().ToString("N") + "/?" + stringArray[1];

            Configure<AbpDbConnectionOptions>(options =>
            {
                options.ConnectionStrings.Default = connectionString;
            });
        }
    }
}