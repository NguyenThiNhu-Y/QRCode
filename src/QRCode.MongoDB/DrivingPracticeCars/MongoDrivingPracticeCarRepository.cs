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


namespace QRCode.DrivingPracticeCars
{
    public class MongoDrivingPracticeCarRepository : MongoDbRepository<QRCodeMongoDbContext, DrivingPracticeCar, Guid>, IDrivingPracticeCarRepository
    {
        public MongoDrivingPracticeCarRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext): base(dbContext)
        {

        }
        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<DrivingPracticeCar>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<DrivingPracticeCar>> GetListAsync(string filterText = null, string name = null, Guid? IdSubmitter = null, string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, IdSubmitter, sorting);
            return await query.As<IMongoQueryable<DrivingPracticeCar>>()
                .PageBy<DrivingPracticeCar, IMongoQueryable<DrivingPracticeCar>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
        }

        protected virtual IQueryable<DrivingPracticeCar> ApplyFilter(
            IQueryable<DrivingPracticeCar> query, 
            string filterText = null,
            string name = null,
            Guid? IdSubmitter = null,
            string sorting = null)
        {
            var dbContext = GetDbContextAsync();
            var getDashBoard = query
                                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.RegisterLicensePlates.Contains(name))
                                .WhereIf(IdSubmitter.HasValue, e=>e.IdSubmitter == IdSubmitter)
                                .OrderBy(sorting != null ? sorting : "CreationTime"); 

            return getDashBoard;
        }
    }
}
