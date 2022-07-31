using QRCode.Licenses;
using QRCode.LicensingDepartmentAuthorities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.Identity;

namespace QRCode.ProcessingLevels
{
    public class ProcessingLevelAppService : ApplicationService, IProcessingLevelAppService
    {
        private readonly IProcessingLevelRepository _processingLevelRepository;
        private readonly IIdentityUserRepository _identityUserRepository;
        private readonly ILicensingDepartmentAuthorityRepository _licensingDepartmentAuthorityRepository;
        private readonly ILicenseRepository _licenseRepository;
        public ProcessingLevelAppService(
            IProcessingLevelRepository processingLevelRepository,
            IIdentityUserRepository identityUserRepository,
            ILicensingDepartmentAuthorityRepository licensingDepartmentAuthorityRepository,
            ILicenseRepository licenseRepository)
        {
            _processingLevelRepository = processingLevelRepository;
            _identityUserRepository = identityUserRepository;
            _licensingDepartmentAuthorityRepository = licensingDepartmentAuthorityRepository;
            _licenseRepository = licenseRepository;
        }

        public async Task ChangeStatusAsync(Guid Id)
        {
            var ProcessingLevel = await _processingLevelRepository.FindAsync(Id);
            ProcessingLevel.Status = !ProcessingLevel.Status;
            await _processingLevelRepository.UpdateAsync(ProcessingLevel);
        }

        public async Task<ProcessingLevelDto> CreateAsync(CreateUpdateProcessingLevel input)
        {
            //kiểm tra idUser and Level đã có chưa
            var processingLevelCheck = _processingLevelRepository.GetByIdUserAndLevelAsync(input.IdUser);
            if(processingLevelCheck.Result == null)
            {
                var ProcessingLevel = ObjectMapper.Map<CreateUpdateProcessingLevel, ProcessingLevel>(input);
                ProcessingLevel.Status = true;

                //lấy fullname, username
                var identityUser = await _identityUserRepository.FindAsync(ProcessingLevel.IdUser);
                ProcessingLevel.FullName = identityUser.Surname + " " + identityUser.Name;
                ProcessingLevel.UserName = identityUser.UserName;
                await _processingLevelRepository.InsertAsync(ProcessingLevel);
                return ObjectMapper.Map<ProcessingLevel, ProcessingLevelDto>(ProcessingLevel);
            }
            return null;
        }

        public async Task<bool> Delete(Guid Id)
        {
            //lấy cấp xử lý
            var processingLevel = await _processingLevelRepository.FindAsync(Id);
            //lấy idUser trong cấp xử lý
            var IdUser = processingLevel.IdUser;
            //tìm trong ds giấy phép có IdUser duyệt không
            //nếu có thì ko đc xóa
            var listLicense = await _licenseRepository.GetListAsync();
            foreach(var item in listLicense)
            {
                if(item.IdUserLevel1 == IdUser || item.IdUserLevel2 == IdUser)
                {
                    return false;
                }
            }
            await _processingLevelRepository.DeleteAsync(processingLevel);
            return true;
        }

        public async Task<ProcessingLevelDto> EditAsync(Guid Id, CreateUpdateProcessingLevel input)
        {
            //kiểm tra idUser and Level đã có chưa
            var processingLevelCheck = _processingLevelRepository.GetByIdUserAndLevelAsync(input.IdUser);
            if(processingLevelCheck.Result == null || processingLevelCheck.Result.Id == Id )
            {
                var ProcessingLevelOld = await _processingLevelRepository.FindAsync(Id);
                ProcessingLevelOld.IdUser = input.IdUser;
                ProcessingLevelOld.Level = input.Level;
                ProcessingLevelOld.IdDepartment = input.IdDepartment;
                await _processingLevelRepository.UpdateAsync(ProcessingLevelOld);
                return ObjectMapper.Map<ProcessingLevel, ProcessingLevelDto>(ProcessingLevelOld);
            }
            return null;
        }

        public async Task<PagedResultDto<ProcessingLevelDto>> GetListAsync(GetProcessingInput input)
        {
            var count = await _processingLevelRepository.GetCountAsync();
            var items = await _processingLevelRepository.GetListAsync(input.FilterText, input.Name, input.Level, input.Sorting);
            var itemsDto = ObjectMapper.Map<List<ProcessingLevel>, List<ProcessingLevelDto>>(items);

            int stt = input.SkipCount + 1;
            foreach(var item in itemsDto)
            {
                item.STT = stt++;
                var department = await _licensingDepartmentAuthorityRepository.FindAsync(item.IdDepartment);
                if(department != null)
                {
                    item.NameDepartment = department.NameDepartment;
                }
            }
            return new PagedResultDto<ProcessingLevelDto>
            {
                TotalCount = count,
                Items = itemsDto
            };
        }
    }
}
