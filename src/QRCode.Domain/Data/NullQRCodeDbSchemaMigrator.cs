using System.Threading.Tasks;
using Volo.Abp.DependencyInjection;

namespace QRCode.Data
{

    /* This is used if database provider does't define
     * IQRCodeDbSchemaMigrator implementation.
     */
    public class NullQRCodeDbSchemaMigrator : IQRCodeDbSchemaMigrator, ITransientDependency
    {
        public Task MigrateAsync()
        {
            return Task.CompletedTask;
        }
    }
}