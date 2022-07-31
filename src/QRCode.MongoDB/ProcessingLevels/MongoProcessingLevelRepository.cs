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


namespace QRCode.ProcessingLevels
{
    public class MongoProcessingLevelRepository : MongoDbRepository<QRCodeMongoDbContext, ProcessingLevel, Guid>, IProcessingLevelRepository
    {
        public MongoProcessingLevelRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext) : base(dbContext)
        {

        }

        public async Task<ProcessingLevel> GetByIdUserAndLevelAsync(Guid? idUser = null, int level = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), "", "", level, idUser);
            return  query
                .WhereIf(idUser.HasValue, e => e.IdUser == idUser).FirstOrDefault();
        }

        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<ProcessingLevel>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<ProcessingLevel>> GetListAsync(string filterText = null, string name = null, int level = 0, string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, level,null, sorting);
            return await query.As<IMongoQueryable<ProcessingLevel>>()
                .PageBy<ProcessingLevel, IMongoQueryable<ProcessingLevel>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
        }

        protected virtual IQueryable<ProcessingLevel> ApplyFilter(
            IQueryable<ProcessingLevel> query,
            string filterText = null, string name = null, int level = 0, Guid? IdUser = null, string sorting = null)
        {
            var dbContext = GetDbContextAsync();
            var getDashboards = query
                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.FullName.ToLower().Contains(filterText.ToLower()))
                .WhereIf(level>0, e=>e.Level.Contains(level))
                .OrderBy(sorting!=null? sorting : "CreationTime");
                
            return getDashboards;
        }

    }
}
