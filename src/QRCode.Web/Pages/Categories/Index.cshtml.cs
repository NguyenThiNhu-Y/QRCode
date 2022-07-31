using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form;
using QRCode.Categories;

namespace QRCode.Web.Pages.Categories
{
    public class IndexModel : QRCodePageModel
    {
        public readonly ICategoryAppService _categoryAppService;
        public IndexModel(ICategoryAppService categoryAppService)
        {
            _categoryAppService = categoryAppService;
        }
        [SelectItems(nameof(CategoryIdFilterItems))]
        public Guid? CategoryIdFilter { get; set; }

        public List<SelectListItem> CategoryIdFilterItems { get; set; }
        public async Task OnGet()
        {
            CategoryIdFilterItems = new List<SelectListItem>
            {
                new SelectListItem(L["choose"], "")
            };
            var CategorySelectListItem = await _categoryAppService.GetListCategoryLookupAsync();
            foreach (var item in CategorySelectListItem)
            {
                CategoryIdFilterItems.Add(new SelectListItem(item.DisplayName, item.Id.ToString()));
            }
        }
    }
}
