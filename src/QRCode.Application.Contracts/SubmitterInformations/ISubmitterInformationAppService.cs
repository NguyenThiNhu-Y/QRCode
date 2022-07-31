using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.SubmitterInformations
{
    public interface ISubmitterInformationAppService : IApplicationService
    {
        Task<PagedResultDto<SubmitterInformationDto>> GetListAsync(GetSubmitterInformationInput input);

        Task<SubmitterInformationDto> CreateAsync(CreateUpdateSubmitterInformation input);
        Task<SubmitterInformationDto> UpdateAsync(Guid Id, CreateUpdateSubmitterInformation input);
        Task<SubmitterInformationDto> GetSubmitter(Guid Id);
    }
}
