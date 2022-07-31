using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace QRCode.LicensingDepartmentAuthorities
{
    public interface ILicensingDepartmentAuthorityRepository : IRepository<LicensingDepartmentAuthority, Guid>
    {
        Task<long> GetCountAsync(
            string filterText = null,
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<LicensingDepartmentAuthority> GetByNametAsync(
            string name = null,
            CancellationToken cancellationToken = default
        );

        Task<List<LicensingDepartmentAuthority>> GetListAsync(
            string filterText = null,
            string name = null,
            Guid? idCategory = null,
            string sorting = null,
            int maxResultCount = int.MaxValue,
            int skipCount = 0,
            CancellationToken cancellationToken = default
        );
    }
}
