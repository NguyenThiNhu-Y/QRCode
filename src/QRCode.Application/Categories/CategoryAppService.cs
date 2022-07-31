using QRCode.Share;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.Categories
{
    public class CategoryAppService : ApplicationService, ICategoryAppService
    {
        public readonly ICategoryRepository _categoryRepository;
        public static int skipCountPre { get; set; }
        public static int maxResultPre { get; set; }
        public static List<CategoryDto> resultPre { get; set; }
        public static string filterTextPre { get; set; }
        public CategoryAppService(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }

        public async Task ChangeStatus(Guid Id)
        {
            var category = await _categoryRepository.FindAsync(Id);
            category.Status = !category.Status;
            await _categoryRepository.UpdateAsync(category);
        }

        public async Task<CategoryDto> CreateAsync(CreateUpdateCategory input)
        {
            var item = ObjectMapper.Map<CreateUpdateCategory, Category>(input);
            item.Status = true;
            await _categoryRepository.InsertAsync(item);
            return ObjectMapper.Map<Category, CategoryDto>(item);
        }

        public async Task<bool> DeleteAsync(Guid Id)
        {
            var category = await _categoryRepository.FindAsync(Id);
            await _categoryRepository.DeleteAsync(category);
            return true;
        }

        public async Task<CategoryDto> GetCategoryAsync(Guid? Id=null)
        {
            if (!Id.HasValue)
            {
                return null;
            }
            var category = await _categoryRepository.FindAsync((Guid)Id);
            var categoryDto = ObjectMapper.Map<Category, CategoryDto>(category);
            List<CategoryNavigation> categoryNavigations = new List<CategoryNavigation>();
            categoryNavigations = await _categoryRepository.GetListCategoryNavigation();
            if(category.idParent != null)
            {
                foreach (var item in categoryNavigations)
                {
                    if (item.Category.Id == category.Id)
                    {
                        categoryDto.IdParent = item.CategoryParent.Id;
                        categoryDto.ParentName = item.CategoryParent.name;
                        break;
                    }
                }
            }
            return categoryDto;
        }

        public async Task<PagedResultDto<CategoryDto>> GetListAsync(GetCategoryInput input)
        {
            

            var count = await _categoryRepository.GetCountAsync(input.FilterText, input.Name);
            List<CategoryNavigation> categoryNavigations = new List<CategoryNavigation>();
            List<CategoryDto> result = new List<CategoryDto>();

            categoryNavigations = await _categoryRepository.GetListCategoryNavigation(input.FilterText, input.Name, input.Sorting, input.MaxResultCount, input.SkipCount);
            int stt = input.SkipCount + 1;
            foreach (var item in categoryNavigations)
            {
                var itemDto = ObjectMapper.Map<Category, CategoryDto>(item.Category);
                itemDto.STT = stt++;
                if (item.CategoryParent != null)
                {
                    itemDto.ParentName = item.CategoryParent.name;
                }
                result.Add(itemDto);
            }
            return new PagedResultDto<CategoryDto>
            {
                TotalCount = count,
                Items = result
            };
        }

        public async Task<List<SelectListItems<Guid?>>> GetListCategoryLookupAsync(Guid? Id = null)
        {
            var items = await _categoryRepository.GetListCategoryLookupAsync(Id);
            List<SelectListItems<Guid?>> ListLookupDto = new List<SelectListItems<Guid?>>();
            foreach(var item in items)
            {
                var lookupDto = new SelectListItems<Guid?>();
                lookupDto.Id = item.Id;
                lookupDto.DisplayName = item.name;
                ListLookupDto.Add(lookupDto);
            }
            return ListLookupDto;
        }

        public async Task<CategoryDto> UpdateAsync(Guid Id, CreateUpdateCategory input)
        {
            var categoryOld = await _categoryRepository.FindAsync(Id);
            categoryOld.name = input.Name;
            categoryOld.idParent = input.IdParent;
            categoryOld.deadline = input.Deadline;
            categoryOld.description = input.Description;
            await _categoryRepository.UpdateAsync(categoryOld);
            return ObjectMapper.Map<Category, CategoryDto>(categoryOld);
            //var categorInput = ObjectMapper.Map<CreateUpdateCategory, CategoryDto>(input);
            //if (categoryOld != null)
            //{
            //    categorInput.Id = categoryOld.Id;
            //}
            //var categoryUpdate = ObjectMapper.Map<CategoryDto, Category>(categorInput);

            //await _categoryRepository.UpdateAsync(categoryUpdate);
            //return categorInput;
        }

        //public async Task<List<CategoryDto>> GetListCategory(GetCategoryInput input = null)
        //{
        //    var items = await _categoryRepository.GetListAsync(input.FilterText, input.Name);
        //    return ObjectMapper.Map<List<Category>, List<CategoryDto>>(items);
        //}
    }
}
