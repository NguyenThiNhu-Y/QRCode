using QRCode.Licenses;
using QRCode.ProcessingLevels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.DrivingPracticeCars
{
    public class DrivingPracticeCarAppService : ApplicationService, IDrivingPracticeCarAppService
    {
        private readonly IDrivingPracticeCarRepository _drivingPracticeCarRepository;
     

        public DrivingPracticeCarAppService(
            IDrivingPracticeCarRepository drivingPracticeCarRepository)
        {
            _drivingPracticeCarRepository = drivingPracticeCarRepository;
        }

        public async Task<DrivingPracticeCarDto> CreateAsync(CreateUpdateDrivingPracticeCar input)
        {
            var drivingPracticeCar = ObjectMapper.Map<CreateUpdateDrivingPracticeCar, DrivingPracticeCar>(input);
            await _drivingPracticeCarRepository.InsertAsync(drivingPracticeCar);
            return ObjectMapper.Map<DrivingPracticeCar, DrivingPracticeCarDto>(drivingPracticeCar);
        }

        public async Task<List<DrivingPracticeCarDto>> CreateManyAsync(List<CreateUpdateDrivingPracticeCar> listInput)
        {
            var listDrivingPracticeCar = ObjectMapper.Map<List<CreateUpdateDrivingPracticeCar>, List<DrivingPracticeCar>>(listInput);
            await _drivingPracticeCarRepository.InsertManyAsync(listDrivingPracticeCar);
            return ObjectMapper.Map<List<DrivingPracticeCar>, List<DrivingPracticeCarDto>>(listDrivingPracticeCar);
        }

        public async Task DeleteAsync(Guid Id)
        {
            var drivingPracticeCar = await _drivingPracticeCarRepository.FindAsync(Id);
            await _drivingPracticeCarRepository.DeleteAsync(drivingPracticeCar);
        }

        public async Task<PagedResultDto<DrivingPracticeCarDto>> GetListAsync(GetDrivingPracticeCarInput input)
        {
            var count = await _drivingPracticeCarRepository.GetCountAsync();
            var items = await _drivingPracticeCarRepository.GetListAsync(input.FilterText, input.Name,null, input.Sorting);
            var itemsDto = ObjectMapper.Map<List<DrivingPracticeCar>, List<DrivingPracticeCarDto>>(items);
            var index = 1;
            foreach(var item in itemsDto)
            {
                item.STT = index++;
            }
            return new PagedResultDto<DrivingPracticeCarDto>
            {
                TotalCount = count,
                Items = itemsDto
            };
        }

        public async Task<List<DrivingPracticeCarDto>> GetListDrivingPracticeCarByIdSubmitter(GetDrivingPracticeCarInput input)
        {
            List<DrivingPracticeCar> ListDrivingPracticeCar = await _drivingPracticeCarRepository.GetListAsync(input.FilterText, input.Name, input.IdSubmitter);
            return ObjectMapper.Map<List<DrivingPracticeCar>, List<DrivingPracticeCarDto>>(ListDrivingPracticeCar);
        }

        public async Task<DrivingPracticeCarDto> UpdateAsync(Guid Id, CreateUpdateDrivingPracticeCar input)
        {
            var DrivingPracticeCar = await _drivingPracticeCarRepository.FindAsync(Id);

            DrivingPracticeCar.TrainingPlaces = input.TrainingPlaces;
            DrivingPracticeCar.RegisterLicensePlates = input.RegisterLicensePlates;
            DrivingPracticeCar.VehicleOfTheTrainingInstitution = input.VehicleOfTheTrainingInstitution;
            DrivingPracticeCar.CategoryCar = input.CategoryCar;
            DrivingPracticeCar.ContractCar = input.ContractCar;
            DrivingPracticeCar.Brand = input.Brand;
            DrivingPracticeCar.EngineNumber = input.EngineNumber;
            DrivingPracticeCar.FrameNumber = input.FrameNumber;
            DrivingPracticeCar.StartDate = input.StartDate;
            DrivingPracticeCar.EndDate = input.EndDate;
            DrivingPracticeCar.Note = input.Note;

            await _drivingPracticeCarRepository.UpdateAsync(DrivingPracticeCar);
            return ObjectMapper.Map<DrivingPracticeCar, DrivingPracticeCarDto>(DrivingPracticeCar);
        }
    }
}
