using System.Threading.Tasks;

namespace QRCode.Data
{

    public interface IQRCodeDbSchemaMigrator
    {
        Task MigrateAsync();
    }
}