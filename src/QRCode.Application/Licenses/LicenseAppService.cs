using QRCode.LicensingDepartmentAuthorities;
using QRCode.ProcessingLevels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.Identity;

namespace QRCode.Licenses
{
    public class LicenseAppService : ApplicationService, ILicenseAppService
    {
        private readonly ILicenseRepository _licenseRepository;
        private readonly IProcessingLevelRepository _processingLevelRepository;
        private readonly IIdentityUserRepository _identityUserRepository;
        private readonly ILicensingDepartmentAuthorityRepository _departmentAuthorityRepository;

        public LicenseAppService(ILicenseRepository licenseRepository,
            IProcessingLevelRepository processingLevelRepository,
            IIdentityUserRepository identityUserRepository,
            ILicensingDepartmentAuthorityRepository departmentAuthorityRepository)
        {
            _licenseRepository = licenseRepository;
            _processingLevelRepository = processingLevelRepository;
            _identityUserRepository = identityUserRepository;
            _departmentAuthorityRepository = departmentAuthorityRepository;

        }
        public async Task<bool> CheckPermissionApproved(Guid IdLicense, int level)
        {
            var IdUserCurrent = (Guid)CurrentUser.Id;
            //lấy cấp xử lý của user
            var Processing = (await _processingLevelRepository.GetByIdUserAndLevelAsync(IdUserCurrent));
            var ProcessingLevel = Processing.Level;

            //lấy phòng ban của cấp xử lý
            var IdDepartment = Processing.IdDepartment; //get id phòng ban
            var Department = await _departmentAuthorityRepository.FindAsync(IdDepartment);

            //lấy idCategory phòng đó được duyệt
            var listIdCategor = Department.IdCategory;

            //lấy giấy phép
            var license = await _licenseRepository.FindAsync(IdLicense);
            //lấy loại giấy phép
            var idCategory = license.IdCategory;
            if (ProcessingLevel.Contains(level) && listIdCategor.Contains(idCategory))
            {
                return true;
            }
            return false;
        }
        public async Task ApprovLevel1(Guid Id)
        {
            var License = await _licenseRepository.FindAsync(Id);
            if (License.Status != Status.Approved1)
            {
                License.Status = Status.Approved1;
                License.IdUserLevel1 = (Guid)CurrentUser.Id;
                License.Level = 1;
            }
            else
            {
                License.Status = Status.Waiting;
                License.IdUserLevel1 = Guid.Empty;
                License.Level = 0;
            }
            await _licenseRepository.UpdateAsync(License);
        }
        public async Task<bool> ApprovLevel2(Guid Id)
        {
            var License = await _licenseRepository.FindAsync(Id);
            
           
            //phê duyệt cấp 2
            if (License.Status != Status.Approved2)
            {
                if (License.Level != 1)
                {
                    return false;
                }
                License.Status = Status.Approved2;
                License.IdUserLevel2 = (Guid)CurrentUser.Id;
                License.Level = 2;
            }
            else
            {
                License.Status = Status.Approved1;
                License.IdUserLevel2 = Guid.Empty;
                License.Level = 1;
            }
            await _licenseRepository.UpdateAsync(License);
            return true;
        }

        public async Task<LicenseDto> CreateAsync(CreateUpdateLicense input)
        {
            var license = ObjectMapper.Map<CreateUpdateLicense, License>(input);
            license.Status = Status.Waiting;
            license.Level = 0;
            await _licenseRepository.InsertAsync(license);

            var licenseDto = ObjectMapper.Map<License, LicenseDto>(license);
            license.DateRegister = licenseDto.CreationTime;
            await _licenseRepository.UpdateAsync(license);
            return ObjectMapper.Map<License, LicenseDto>(license);
        }

        public async Task DeleteAsync(Guid Id)
        {
            var License = await _licenseRepository.FindAsync(Id);
            await _licenseRepository.DeleteAsync(License);
        }

        public async Task<LicenseDto> GetLicensAsync(Guid Id)
        {
            var license = await _licenseRepository.FindAsync(Id);
            return ObjectMapper.Map<License, LicenseDto>(license);
        }

        public async Task<PagedResultDto<LicenseDto>> GetListAsync(GetLicenseInput input)
        {
            var count = await _licenseRepository.GetCountAsync();

            var items = await _licenseRepository.GetListAsync(input.FilterText, input.Name, input.Status, input.Time, input.Sorting);
            var itemsDto = ObjectMapper.Map<List<License>, List<LicenseDto>>(items);
            var index = input.SkipCount + 1;
            foreach (var item in itemsDto)
            {
                item.STT = index++;
                if (item.IdUserLevel1.HasValue)
                {
                    var user1 = await _identityUserRepository.FindAsync((Guid)item.IdUserLevel1);
                    if(user1 != null)
                    {
                        item.NameUserLevel1 = user1.Surname + " " + user1.Name;
                    }
                }
                if (item.IdUserLevel2.HasValue)
                {
                    var user2 = await _identityUserRepository.FindAsync((Guid)item.IdUserLevel2);
                    if (user2 != null)
                    {
                        item.NameUserLevel2 = user2.Surname + " " + user2.Name;
                    }
                }
            }
            return new PagedResultDto<LicenseDto>
            {
                TotalCount = count,
                Items = itemsDto
            };
        }

        public async Task<List<LicenseDto>> GetListLicensByStatus(GetLicenseInput input)
        {
            var items = await _licenseRepository.GetListAsync(input.FilterText, input.Name, input.Status, input.Time);
            var itemsDto = ObjectMapper.Map<List<License>, List<LicenseDto>>(items);
            return itemsDto;
        }

        public async Task<LicenseDto> UpdateAsync(Guid Id, CreateUpdateLicense input)
        {
            var License = await _licenseRepository.FindAsync(Id);

            License.ProfileOwner = input.ProfileOwner;
            License.DateRegister = License.CreationTime;
            License.DateStart = input.DateStart;
            License.DateEnd = input.DateEnd;
            License.ProcessingExpirationDate = input.ProcessingExpirationDate;
            License.NumberOfSymbol = input.NumberOfSymbol;
            License.Status = input.Status;
            License.PhoneNumber = input.PhoneNumber;
            License.Address = input.Address;
            License.Astract = input.Astract;

            License.Level = input.Level;
            License.IdUserLevel1 = input.IdUserLevel1;
            License.IdUserLevel2 = input.IdUserLevel2;

            await _licenseRepository.UpdateAsync(License);
            return ObjectMapper.Map<License, LicenseDto>(License);

        }

        public async Task Reject(Guid Id)
        {
            var License = await _licenseRepository.FindAsync(Id);
            License.Status = Status.Rejected;
            await _licenseRepository.UpdateAsync(License);
        }

        public async Task TakeBack(Guid Id)
        {
            var License = await _licenseRepository.FindAsync(Id);
            License.Status = Status.TakeBack;
            await _licenseRepository.UpdateAsync(License);

        }
    }
}
