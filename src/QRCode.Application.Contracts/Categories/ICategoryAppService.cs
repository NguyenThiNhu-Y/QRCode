using QRCode.Share;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.Categories
{
    public interface ICategoryAppService: IApplicationService
    {
        Task<PagedResultDto<CategoryDto>> GetListAsync(GetCategoryInput input);
        //Task<List<CategoryDto>> GetListCategory(GetCategoryInput input = null);
        Task<CategoryDto> CreateAsync(CreateUpdateCategory input);
        Task<CategoryDto> UpdateAsync(Guid Id, CreateUpdateCategory input);
        Task<bool> DeleteAsync(Guid Id);
        Task ChangeStatus(Guid Id);
        Task<List<SelectListItems<Guid?>>> GetListCategoryLookupAsync(Guid? Id = null);
        Task<CategoryDto> GetCategoryAsync(Guid? Id=null);
    }
}
