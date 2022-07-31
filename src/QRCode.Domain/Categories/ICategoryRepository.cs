using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace QRCode.Categories
{
    public interface ICategoryRepository: IRepository<Category, Guid>
    {
        Task<long> GetCountAsync(
            string filterText = null,
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<List<Category>> GetListAsync(
            string filterText = null,
            string name = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default
        );

        Task<List<Category>> GetListCategoryLookupAsync(
            Guid? Id,
            string filterText = null,
            string name = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default);

        Task<List<CategoryNavigation>> GetListCategoryNavigation(
            string filterText = null,
            string name = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default);
    }
}
