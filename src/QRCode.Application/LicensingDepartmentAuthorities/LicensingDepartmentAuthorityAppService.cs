using QRCode.Categories;
using QRCode.ProcessingLevels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.LicensingDepartmentAuthorities
{
    public class LicensingDepartmentAuthorityAppService : ApplicationService, ILicensingDepartmentAuthorityAppService
    {
        private readonly ILicensingDepartmentAuthorityRepository _licensingDepartmentAuthorityRepository;
        private readonly ICategoryRepository _categoryRepository;
        private readonly IProcessingLevelRepository _processingLevelRepository;
        public LicensingDepartmentAuthorityAppService(
            ILicensingDepartmentAuthorityRepository licensingDepartmentAuthorityRepository,
            ICategoryRepository categoryRepository,
            IProcessingLevelRepository processingLevelRepository
            )
        {
            _licensingDepartmentAuthorityRepository = licensingDepartmentAuthorityRepository;
            _categoryRepository = categoryRepository;
            _processingLevelRepository = processingLevelRepository;
        }

        public async Task ChangeStatus(Guid Id)
        {
            var department = await _licensingDepartmentAuthorityRepository.FindAsync(Id);
            department.Status = !department.Status;
            await _licensingDepartmentAuthorityRepository.UpdateAsync(department);
        }

        public async Task<LicensingDepartmentAuthorityDto> CreateAsync(CreateUpdateLicensingDepartmentAuthority input)
        {
            //kiểm tra tên phòng ban đã có chưa
            var departmentExist = await _licensingDepartmentAuthorityRepository.GetByNametAsync(input.NameDepartment);
            if(departmentExist == null)
            {
                var department = ObjectMapper.Map<CreateUpdateLicensingDepartmentAuthority, LicensingDepartmentAuthority>(input);
                department.Status = true;
                await _licensingDepartmentAuthorityRepository.InsertAsync(department);
                return ObjectMapper.Map<LicensingDepartmentAuthority, LicensingDepartmentAuthorityDto>(department);
            }
            return null;
            
        }

        public async Task<bool> DeleteAsync(Guid Id)
        {
            //lấy phòng ban
            var department = await _licensingDepartmentAuthorityRepository.FindAsync(Id);
            //lấy Id phòng ban
            var IdDepartment = department.Id;
            //tìm xem trong cấp xử lý có Id Phòng ban ko
            //nếu có thì ko xóa
            var ListProcessingLevel = await _processingLevelRepository.GetListAsync();
            foreach(var item in ListProcessingLevel)
            {
                if(item.IdDepartment == IdDepartment)
                {
                    return false;
                }
            }
            await _licensingDepartmentAuthorityRepository.DeleteAsync(department);
            return true;
        }

        public async Task<PagedResultDto<LicensingDepartmentAuthorityDto>> GetListAsync(GetLicensingDepartmentAuthorityInput input)
        {
            var count = await _licensingDepartmentAuthorityRepository.GetCountAsync();
            var items = await _licensingDepartmentAuthorityRepository.GetListAsync(input.FilterText, input.Name, input.IdCategory, input.Sorting);
            var itemsDto = ObjectMapper.Map<List<LicensingDepartmentAuthority>, List<LicensingDepartmentAuthorityDto>>(items);
            var index = 1;
            foreach(var item in itemsDto)
            {
                item.STT = index++;
                //lấy tên loại giấy phép
                List<string> NameCategories = new List<string>();
                foreach(var idCate in item.IdCategory)
                {
                    NameCategories.Add((await _categoryRepository.FindAsync(idCate)).name);
                }
                item.NameCategory = NameCategories.ToArray();
            }
            return new PagedResultDto<LicensingDepartmentAuthorityDto>
            {
                TotalCount = count,
                Items = itemsDto
            };
        }

        public async Task<LicensingDepartmentAuthorityDto> UpdateAsync(Guid Id, CreateUpdateLicensingDepartmentAuthority input)
        {
            //kiểm tra tên phòng ban đã có chưa
            var departmentExist = await _licensingDepartmentAuthorityRepository.GetByNametAsync(input.NameDepartment);
            if (departmentExist == null || departmentExist.Id == Id)
            {
                var department = await _licensingDepartmentAuthorityRepository.FindAsync(Id);
                department.NameDepartment = input.NameDepartment;
                department.IdCategory = input.IdCategory;
                await _licensingDepartmentAuthorityRepository.UpdateAsync(department);
                return ObjectMapper.Map<LicensingDepartmentAuthority, LicensingDepartmentAuthorityDto>(department);
            }
            return null;    
        }
    }
}
