using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.Licenses
{
    public interface ILicenseAppService : IApplicationService
    {
        Task<PagedResultDto<LicenseDto>> GetListAsync(GetLicenseInput input);

        Task<LicenseDto> CreateAsync(CreateUpdateLicense input);
        Task<LicenseDto> GetLicensAsync(Guid Id);
        Task DeleteAsync(Guid Id);
        Task<LicenseDto> UpdateAsync(Guid Id, CreateUpdateLicense input);
        Task<bool> ApprovLevel2(Guid Id);
        Task ApprovLevel1(Guid Id);
        Task Reject(Guid Id);
        Task TakeBack(Guid Id);

        Task<List<LicenseDto>> GetListLicensByStatus(GetLicenseInput input);
        Task<bool> CheckPermissionApproved(Guid IdLicense, int level);

    }
}
