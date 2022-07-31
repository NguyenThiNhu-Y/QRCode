using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace QRCode.Licenses
{
    public interface ILicenseRepository : IRepository<License, Guid>
    {
        Task<long> GetCountAsync(
            string filterText = null,
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<List<License>> GetListAsync(
            string filterText = null,
            string name = null,
            Status? status = null,
            int time = 0,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default
        );
    }
}
