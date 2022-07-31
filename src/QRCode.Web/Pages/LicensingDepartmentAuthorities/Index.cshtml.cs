using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.Categories;

namespace QRCode.Web.Pages.LicensingDepartmentAuthorities
{
    public class IndexModel : QRCodePageModel
    {
        private readonly ICategoryRepository _categoryRepository;
        public Guid IdCategory { get; set; }
        public List<SelectListItem> CategoryListItem { get; set; }
        public IndexModel(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }
        public async Task OnGetAsync()
        {
            CategoryListItem = new List<SelectListItem>();
            var ListCategories = await _categoryRepository.GetListAsync();
            CategoryListItem.Add(new SelectListItem { Value = "", Text = L["choose"] });
            foreach (var item in ListCategories)
            {
                CategoryListItem.Add(new SelectListItem { Value = item.Id + "", Text = item.name });
            }
        }
    }
}
