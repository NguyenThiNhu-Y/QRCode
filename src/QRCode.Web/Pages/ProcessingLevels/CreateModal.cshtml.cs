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
    public class CreateModalModel : QRCodePageModel
    {
        private readonly IIdentityUserAppService _identityUserAppService;
        private readonly IProcessingLevelAppService _processingLevelAppService;
        private readonly ILicensingDepartmentAuthorityRepository _licensingDepartmentAuthorityRepository;
        [BindProperty]
        public CreateUpdateProcessingLevel createUpdateProcessingLevel { get; set; }

 

        public CreateModalModel(
            IIdentityUserAppService identityUserAppService,
            IProcessingLevelAppService processingLevelAppService,
            ILicensingDepartmentAuthorityRepository licensingDepartmentAuthorityRepository)
        {
            _identityUserAppService = identityUserAppService;
            _processingLevelAppService = processingLevelAppService;
            _licensingDepartmentAuthorityRepository = licensingDepartmentAuthorityRepository;
        }
        public List<SelectListItem> LevelList { get; set; }
        public List<SelectListItem> IdentitySelectListItem { get; set; }
        public List<SelectListItem> DepartmentSelectListItem { get; set; }

        public async Task OnGetAsync()
        {
            //chọn cấp
            LevelList = new List<SelectListItem>
            {
                new SelectListItem { Value = "1", Text = L["Level1"]},
                new SelectListItem { Value = "2", Text = L["Level2"]}
               
            };

            //danh sách tài khoản
            GetIdentityUsersInput input = new GetIdentityUsersInput
            {
                Filter = ""
            };
            var identityUsers = await _identityUserAppService.GetListAsync(input);
            var listIdentity = identityUsers.Items;
            IdentitySelectListItem = new List<SelectListItem>();
            foreach(var item in listIdentity)
            {
                if (item.Surname == null && item.Name == null)
                {
                    IdentitySelectListItem.Add(
                    new SelectListItem { Value = item.Id + "", Text = item.UserName }
                    );
                }
                else
                {
                    IdentitySelectListItem.Add(
                    new SelectListItem { Value = item.Id + "", Text = item.Surname + " " + item.Name }
                    );
                }
                
            }

            //danh sách phòng ban
            DepartmentSelectListItem = new List<SelectListItem>();
            var listDepartMent = await _licensingDepartmentAuthorityRepository.GetListAsync();
            foreach(var item in listDepartMent)
            {
                DepartmentSelectListItem.Add(new SelectListItem { Value = item.Id + "", Text = item.NameDepartment });
            }

        }
        public async Task<IActionResult> OnPostAsync()
        {
            var rs =await _processingLevelAppService.CreateAsync(createUpdateProcessingLevel);
            if (rs == null)
            {
                throw new UserFriendlyException(L["ProcessingLevelAlreadyExists"]);
            }
            return NoContent();
        }
    }
}
