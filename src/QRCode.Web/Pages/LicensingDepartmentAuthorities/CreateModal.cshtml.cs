using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.Categories;
using QRCode.LicensingDepartmentAuthorities;
using Volo.Abp;

namespace QRCode.Web.Pages.LicensingDepartmentAuthorities
{
    public class CreateModalModel : QRCodePageModel
    {
        [BindProperty]
        public CreateUpdateLicensingDepartmentAuthority createDepartment { get; set; }

        public List<SelectListItem> CategoryListItem { get; set; }
        private readonly ICategoryRepository _categoryRepository;
        private readonly ILicensingDepartmentAuthorityAppService _licensingDepartmentAuthorityAppService;
        public CreateModalModel(ICategoryRepository categoryRepository,
            ILicensingDepartmentAuthorityAppService licensingDepartmentAuthorityAppService)
        {
            _categoryRepository = categoryRepository;
            _licensingDepartmentAuthorityAppService = licensingDepartmentAuthorityAppService;
        }
        public async Task OnGetAsync()
        {
            CategoryListItem = new List<SelectListItem>();
            var ListCategories = await _categoryRepository.GetListAsync();
            foreach (var item in ListCategories)
            {
                CategoryListItem.Add(new SelectListItem { Value = item.Id + "", Text = item.name });
            }

        }
        public async Task<IActionResult> OnPostAsync()
        {
            var rs = await _licensingDepartmentAuthorityAppService.CreateAsync(createDepartment);
            if(rs == null)
            {
                throw new UserFriendlyException(L["DepartmentAlreadyExists"]);
            }
            return NoContent();
        }
    }
}
