using QRCode.MongoDB;
using Volo.Abp.Autofac;
using Volo.Abp.BackgroundJobs;
using Volo.Abp.Modularity;

namespace QRCode.DbMigrator
{

    [DependsOn(
        typeof(AbpAutofacModule),
        typeof(QRCodeMongoDbModule),
        typeof(QRCodeApplicationContractsModule)
        )]
    public class QRCodeDbMigratorModule : AbpModule
    {
        public override void ConfigureServices(ServiceConfigurationContext context)
        {
            Configure<AbpBackgroundJobOptions>(options => options.IsJobExecutionEnabled = false);
        }
    }
}