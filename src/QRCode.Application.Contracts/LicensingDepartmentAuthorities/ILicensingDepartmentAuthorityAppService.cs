using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.LicensingDepartmentAuthorities
{
    public interface ILicensingDepartmentAuthorityAppService : IApplicationService
    {
        Task<PagedResultDto<LicensingDepartmentAuthorityDto>> GetListAsync(GetLicensingDepartmentAuthorityInput input);
        Task<LicensingDepartmentAuthorityDto> CreateAsync(CreateUpdateLicensingDepartmentAuthority input);
        Task<LicensingDepartmentAuthorityDto> UpdateAsync(Guid Id, CreateUpdateLicensingDepartmentAuthority input);
        Task<bool> DeleteAsync(Guid Id);
        Task ChangeStatus(Guid Id);


    }
}
