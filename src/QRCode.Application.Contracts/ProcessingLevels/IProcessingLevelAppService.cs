using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.ProcessingLevels
{
    public interface IProcessingLevelAppService: IApplicationService
    {
        Task<PagedResultDto<ProcessingLevelDto>> GetListAsync(GetProcessingInput input);
        Task<ProcessingLevelDto> CreateAsync(CreateUpdateProcessingLevel input);
        Task<ProcessingLevelDto> EditAsync(Guid Id, CreateUpdateProcessingLevel input);
        Task ChangeStatusAsync(Guid Id);
        Task<bool> Delete(Guid Id);
    }
}
