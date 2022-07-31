using MongoDB.Driver;
using QRCode.Categories;
using QRCode.DrivingPracticeCars;
using QRCode.Licenses;
using QRCode.LicensingDepartmentAuthorities;
using QRCode.ProcessingLevels;
using QRCode.SubmitterInformations;
using Volo.Abp.Data;
using Volo.Abp.MongoDB;

namespace QRCode.MongoDB
{

    [ConnectionStringName("Default")]
    public class QRCodeMongoDbContext : AbpMongoDbContext
    {
        /* Add mongo collections here. Example:
         * public IMongoCollection<Question> Questions => Collection<Question>();
         */

        protected override void CreateModel(IMongoModelBuilder modelBuilder)
        {
            base.CreateModel(modelBuilder);

            //builder.Entity<YourEntity>(b =>
            //{
            //    //...
            //});

            
        }
        public IMongoCollection<Category> Categories => Collection<Category>();
        public IMongoCollection<DrivingPracticeCar> DrivingPracticeCars => Collection<DrivingPracticeCar>();
        public IMongoCollection<SubmitterInformation> SubmitterInformations => Collection<SubmitterInformation>();
        public IMongoCollection<License> Licenses => Collection<License>();
        public IMongoCollection<ProcessingLevel> ProcessingLevels => Collection<ProcessingLevel>();
        public IMongoCollection<LicensingDepartmentAuthority> LicensingDepartmentAuthorities => Collection<LicensingDepartmentAuthority>();
    }
}