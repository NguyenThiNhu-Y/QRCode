using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.Categories;
using Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form;

namespace QRCode.Web.Pages.Categories
{
    public class EditModalModel : QRCodePageModel
    {
        public readonly ICategoryAppService _categoryAppService;
        public EditModalModel(ICategoryAppService categoryAppService)
        {
            _categoryAppService = categoryAppService;
        }
        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid Id { get; set; }

        [BindProperty]
        public CreateUpdateCategory Category { get; set; }

        [SelectItems(nameof(CategoryIdFilterItems))]
        public Guid? CategoryIdFilter { get; set; }

        public List<SelectListItem> CategoryIdFilterItems { get; set; }
        public async Task OnGetAsync()
        {
            CategoryIdFilterItems = new List<SelectListItem>
            {
                new SelectListItem(L["choose"], "")
            };
            var CategorySelectListItem = await _categoryAppService.GetListCategoryLookupAsync(Id);
            foreach (var item in CategorySelectListItem)
            {
                CategoryIdFilterItems.Add(new SelectListItem(item.DisplayName, item.Id.ToString()));
            }

            Category =  ObjectMapper.Map<CategoryDto, CreateUpdateCategory>(await _categoryAppService.GetCategoryAsync(Id));
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await _categoryAppService.UpdateAsync(Id, Category);
            return RedirectToAction("Index","Categories");
        }
    }
}
