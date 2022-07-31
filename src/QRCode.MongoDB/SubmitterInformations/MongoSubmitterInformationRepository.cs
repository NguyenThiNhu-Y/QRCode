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

namespace QRCode.SubmitterInformations
{
    public class MongoSubmitterInformationRepository : MongoDbRepository<QRCodeMongoDbContext, SubmitterInformation, Guid>, ISubmitterInformationRepository
    {
        public MongoSubmitterInformationRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext) : base(dbContext)
        {

        }
        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<SubmitterInformation>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<SubmitterInformation>> GetListAsync(string filterText = null, string name = null, string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<SubmitterInformation>>()
                .PageBy<SubmitterInformation, IMongoQueryable<SubmitterInformation>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
        }

        protected virtual IQueryable<SubmitterInformation> ApplyFilter(
            IQueryable<SubmitterInformation> query,
            string filterText = null,
            string name = null)
        {
            var dbContext = GetDbContextAsync();
            var getDashBoard = query
                                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.FullName.Contains(name))
                                .OrderByDescending(e => e.CreationTime);
            return getDashBoard;
        }
    }
}
