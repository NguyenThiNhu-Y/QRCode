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
    public class EditModalModel : QRCodePageModel
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly ILicensingDepartmentAuthorityRepository _licensingDepartmentAuthorityRepository;
        private readonly ILicensingDepartmentAuthorityAppService _licensingDepartmentAuthorityAppService;

        [BindProperty(SupportsGet =true)]
        [HiddenInput]
        public Guid Id { get; set; }
        [BindProperty]
        public CreateUpdateLicensingDepartmentAuthority updateDepartment { get; set; }
        public List<SelectListItem> CategoryListItem { get; set; }
        public EditModalModel(ICategoryRepository categoryRepository,
            ILicensingDepartmentAuthorityRepository licensingDepartmentAuthorityRepository,
            ILicensingDepartmentAuthorityAppService licensingDepartmentAuthorityAppService)
        {
            _categoryRepository = categoryRepository;
            _licensingDepartmentAuthorityRepository = licensingDepartmentAuthorityRepository;
            _licensingDepartmentAuthorityAppService = licensingDepartmentAuthorityAppService;
        }
        public async Task OnGetAsync()
        {
            var department = await _licensingDepartmentAuthorityRepository.FindAsync(Id);
            updateDepartment = ObjectMapper.Map<LicensingDepartmentAuthority, CreateUpdateLicensingDepartmentAuthority>(department);

            CategoryListItem = new List<SelectListItem>();
            var ListCategories = await _categoryRepository.GetListAsync();
            foreach (var item in ListCategories)
            {
                CategoryListItem.Add(new SelectListItem { Value = item.Id + "", Text = item.name });
            }
        }
        public async Task<IActionResult> OnPostAsync()
        {
            var rs = await _licensingDepartmentAuthorityAppService.UpdateAsync(Id, updateDepartment);
            if (rs == null)
            {
                throw new UserFriendlyException(L["DepartmentAlreadyExists"]);
            }
            return NoContent();
        }
    }
}
