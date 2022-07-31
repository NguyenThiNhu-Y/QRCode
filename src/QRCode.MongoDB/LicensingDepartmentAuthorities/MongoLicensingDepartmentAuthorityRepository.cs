using MongoDB.Driver;
using MongoDB.Driver.Linq;
using QRCode.MongoDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories.MongoDB;
using Volo.Abp.MongoDB;
using System.Linq.Dynamic.Core;


namespace QRCode.LicensingDepartmentAuthorities
{
    public class MongoLicensingDepartmentAuthorityRepository : MongoDbRepository<QRCodeMongoDbContext, LicensingDepartmentAuthority, Guid>, ILicensingDepartmentAuthorityRepository
    {
        public MongoLicensingDepartmentAuthorityRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext) : base(dbContext)
        {

        }

        public async Task<LicensingDepartmentAuthority> GetByNametAsync(string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), "", name);
            return  query.Where(e => e.NameDepartment.ToLower()==name.ToLower()).FirstOrDefault();

        }

        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<LicensingDepartmentAuthority>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<LicensingDepartmentAuthority>> GetListAsync(string filterText = null, string name = null,Guid? idCategory = null,string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, idCategory, sorting);
            var listDepartment = await query.As<IMongoQueryable<LicensingDepartmentAuthority>>()
                .PageBy<LicensingDepartmentAuthority, IMongoQueryable<LicensingDepartmentAuthority>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));

            //if (idCategory.HasValue)
            //{
            //    List<LicensingDepartmentAuthority> rs = new List<LicensingDepartmentAuthority>();
            //    foreach (var item in listDepartment)
            //    {

            //    }
            //}
            
            return listDepartment;
        }
        protected virtual IQueryable<LicensingDepartmentAuthority> ApplyFilter(
            IQueryable<LicensingDepartmentAuthority> query,
            string filterText, string name = null, Guid? idCategory = null, string sorting=null)
        {
            var dbContext = GetDbContextAsync();
            var getDashboards = query
                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.NameDepartment.ToLower().Contains(filterText.ToLower()))
                .WhereIf(idCategory.HasValue, e=>e.IdCategory.Contains((Guid)idCategory))
                .OrderBy(sorting != null ? sorting : "CreationTime");
            return getDashboards;
        }


    }
}
