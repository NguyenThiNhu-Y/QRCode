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


namespace QRCode.Licenses
{
    public class MongoLicenseRepository : MongoDbRepository<QRCodeMongoDbContext, License, Guid>, ILicenseRepository
    {
        public MongoLicenseRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext) : base(dbContext)
        {

        }

        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<License>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<License>> GetListAsync(
            string filterText = null, 
            string name = null, 
            Status? status = null, 
            int time = 0,
            string sorting = null, 
            int maxResultCount = int.MaxValue, 
            int skipCount = 0, 
            CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, status, time, sorting);
            return  await query.As<IMongoQueryable<License>>()
                //.Where(e=>(e.DateRegister.Date - DateTime.Now.Date).Days<=time)
                .PageBy<License, IMongoQueryable<License>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
            
        }

        protected virtual IQueryable<License> ApplyFilter(
            IQueryable<License> query,
            string filterText, 
            string name = null, 
            Status? status = null,
            int time = 0,
            string sorting = null
            )
        {
            var dbContext = GetDbContextAsync();
            var getDashboards = query
                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.ProfileOwner.ToLower().Contains(filterText.ToLower()))
                .WhereIf(status.HasValue & status != Status.All, e => e.Status == status)
                .WhereIf(status == Status.All, e=>e.Status != Status.Rejected && e.Status != Status.TakeBack)
                .WhereIf(time > 0, e => e.DateRegister >= DateTime.Now.Date.AddDays((double)(time * (-1))))
                .OrderBy(sorting != null ? sorting : "CreationTime"); ;
            return getDashboards;
        }
    }
}
