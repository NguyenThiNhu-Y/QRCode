using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace QRCode.ProcessingLevels
{
    public interface IProcessingLevelRepository : IRepository<ProcessingLevel, Guid>
    {
        Task<long> GetCountAsync(
            string filterText = null,
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<List<ProcessingLevel>> GetListAsync(
            string filterText = null,
            string name = null,
            int level = 0,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default
        );

        Task<ProcessingLevel> GetByIdUserAndLevelAsync(
            Guid? idUser = null,
            int level = 0,
            CancellationToken cancellationToken = default);
    }
}
