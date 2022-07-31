using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace QRCode.DrivingPracticeCars
{
    public interface IDrivingPracticeCarRepository : IRepository<DrivingPracticeCar, Guid>
    {
        Task<long> GetCountAsync(
            string filterText = null,
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<List<DrivingPracticeCar>> GetListAsync(
            string filterText = null,
            string name = null,
            Guid? IdSubmitter = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default
        );
    }
}
