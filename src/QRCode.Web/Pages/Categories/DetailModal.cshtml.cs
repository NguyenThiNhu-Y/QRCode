using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using QRCode.Categories;

namespace QRCode.Web.Pages.Categories
{
    public class DetailModalModel : QRCodePageModel
    {
        public readonly ICategoryAppService _categoryAppService;
        public DetailModalModel(ICategoryAppService categoryAppService)
        {
            _categoryAppService = categoryAppService;
        }
        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid Id { get; set; }

        [BindProperty]
        public CreateUpdateCategory Category { get; set; }
        public CategoryDto CategoryParent { get; set; }
        public async Task OnGet()
        {
            Category = ObjectMapper.Map<CategoryDto, CreateUpdateCategory>(await _categoryAppService.GetCategoryAsync(Id));
            CategoryParent = new CategoryDto();
            if (Category.IdParent!=null)
            {
                CategoryParent = await _categoryAppService.GetCategoryAsync((Guid)Category.IdParent);
            }

        }
    }
}
