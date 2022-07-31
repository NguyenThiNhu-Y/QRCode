using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.LicensingDepartmentAuthorities;
using QRCode.ProcessingLevels;
using Volo.Abp;
using Volo.Abp.Identity;

namespace QRCode.Web.Pages.ProcessingLevels
{
    public class EditModalModel : QRCodePageModel
    {
        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid Id { get; set; }

        [BindProperty]
        public string FullName { get; set; }

        [BindProperty]
        public CreateUpdateProcessingLevel updateProcessingLevel { get; set; }

        private readonly IProcessingLevelRepository _processingLevelRepository;
        private readonly IProcessingLevelAppService _processingLevelAppService;
        private readonly IIdentityUserRepository _identityUserRepository;
        private readonly ILicensingDepartmentAuthorityRepository _licensingDepartmentAuthorityRepository;


        public List<SelectListItem> LevelList { get; set; }
        public List<SelectListItem> IdentitySelectListItem { get; set; }
        public List<SelectListItem> DepartmentSelectListItem { get; set; }

        public EditModalModel(
            IProcessingLevelRepository processingLevelRepository,
            IProcessingLevelAppService processingLevelAppService,
            IIdentityUserRepository identityUserRepository,
            ILicensingDepartmentAuthorityRepository licensingDepartmentAuthorityRepository)
        {
            _processingLevelRepository = processingLevelRepository;
            _processingLevelAppService = processingLevelAppService;
            _identityUserRepository = identityUserRepository;
            _licensingDepartmentAuthorityRepository = licensingDepartmentAuthorityRepository;
        }
        public async Task OnGetAsync()
        {
            var ProcessingLevel = await _processingLevelRepository.FindAsync(Id);
            updateProcessingLevel = ObjectMapper.Map<ProcessingLevel, CreateUpdateProcessingLevel>(ProcessingLevel);

            LevelList = new List<SelectListItem>
            {
                new SelectListItem { Value = "1", Text = L["Level1"]},
                new SelectListItem { Value = "2", Text = L["Level2"]}

            };

            //danh sách phòng ban
            DepartmentSelectListItem = new List<SelectListItem>();
            var listDepartMent = await _licensingDepartmentAuthorityRepository.GetListAsync();
            foreach (var item in listDepartMent)
            {
                DepartmentSelectListItem.Add(new SelectListItem { Value = item.Id + "", Text = item.NameDepartment });
            }

            //FullName 
            var identityUser = await _identityUserRepository.FindAsync(ProcessingLevel.IdUser);
            FullName = identityUser.Surname + " " + identityUser.Name;
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var rs = await _processingLevelAppService.EditAsync(Id, updateProcessingLevel);
            if (rs == null)
            {
                throw new UserFriendlyException(L["ProcessingLevelAlreadyExists"]);
            }
            return NoContent();
        }
    }
}
