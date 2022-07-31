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

namespace QRCode.Categories
{
    public class MongoCategoryRepository: MongoDbRepository<QRCodeMongoDbContext, Category, Guid>, ICategoryRepository
    {
        public MongoCategoryRepository(IMongoDbContextProvider<QRCodeMongoDbContext> dbContext) : base(dbContext)
        {

        }

        public async Task<long> GetCountAsync(string filterText = null, string name = null, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name);
            return await query.As<IMongoQueryable<Category>>().LongCountAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<Category>> GetListAsync(string filterText = null, string name = null, string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, null, sorting);
            return await query.As<IMongoQueryable<Category>>()
                //.Skip(skipCount)
                //.Take(maxResultCount)
                .PageBy<Category, IMongoQueryable<Category>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
        }

        public async Task<List<Category>> GetListCategoryLookupAsync(Guid? Id, string filterText = null, string name = null, string sorting = null, int maxResultCount = int.MaxValue, int skipCount = 0, CancellationToken cancellationToken = default)
        {
            var query = ApplyFilter((await GetMongoQueryableAsync(cancellationToken)), filterText, name, Id);
            var rs = await query.As<IMongoQueryable<Category>>()
                .OrderByDescending(x => x.CreationTime)
                .PageBy<Category, IMongoQueryable<Category>>(skipCount, maxResultCount)
                .ToListAsync(GetCancellationToken(cancellationToken));
            return rs;
        }

        
        
        protected virtual IQueryable<Category> ApplyFilter(
            IQueryable<Category> query,
            string filterText, string name = null, Guid? Id = null,string sorting = null)
        {
            var dbContext = GetDbContextAsync();
            var getDashboards = query
                .WhereIf(!string.IsNullOrWhiteSpace(filterText), e => e.name.ToLower().Contains(filterText.ToLower()))
                .WhereIf(Id.HasValue, e => e.Id != Id)
                .OrderBy(sorting!=null?sorting: "CreationTime");
            return getDashboards;
        }

        public Category GetCategoryParent(IQueryable<Category> query, Guid? Id = null)
        {
            var dbContext = GetDbContextAsync();
            if (Id.HasValue)
            {
                var count = query
                    .WhereIf(Id.HasValue,e => e.Id == Id).Count();
                if (count != 0)
                    return query
                    .WhereIf(Id.HasValue, e => e.Id == Id).Single();
                return null;
            }
            return null;
        }

        public async Task<List<CategoryNavigation>> GetListCategoryNavigation(string filterText = null,
            string name = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0, 
            CancellationToken cancellationToken = default)
        {
            var listCategory = await GetListAsync(filterText, name, sorting, maxResultCount, skipCount, cancellationToken);
            List<CategoryNavigation> listCategoryNavigation = new List<CategoryNavigation>();
            foreach(var item in listCategory)
            {
                Category rs = new Category();
                if (item.idParent != null)
                {
                   rs = GetCategoryParent((await GetMongoQueryableAsync(cancellationToken)), item.idParent);
                    
                }

                Category rsCategoryParent = null;
                if (rs != null)
                {
                    rsCategoryParent = rs;
                }
                listCategoryNavigation.Add(new CategoryNavigation
                {
                    Category = item,
                    CategoryParent = rsCategoryParent
                }) ;
            }
            return listCategoryNavigation;
        }

        
    }

}
