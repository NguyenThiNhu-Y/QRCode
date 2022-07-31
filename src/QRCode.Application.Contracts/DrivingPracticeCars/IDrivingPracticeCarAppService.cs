using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.DrivingPracticeCars
{
    public interface IDrivingPracticeCarAppService : IApplicationService
    {
        Task<PagedResultDto<DrivingPracticeCarDto>> GetListAsync(GetDrivingPracticeCarInput input);
        Task<List<DrivingPracticeCarDto>> GetListDrivingPracticeCarByIdSubmitter(GetDrivingPracticeCarInput input);
        Task<List<DrivingPracticeCarDto>> CreateManyAsync(List<CreateUpdateDrivingPracticeCar> listInput);
        Task<DrivingPracticeCarDto> CreateAsync(CreateUpdateDrivingPracticeCar input);
        Task<DrivingPracticeCarDto> UpdateAsync(Guid Id, CreateUpdateDrivingPracticeCar input);
        Task DeleteAsync(Guid Id);
        
    }
}
