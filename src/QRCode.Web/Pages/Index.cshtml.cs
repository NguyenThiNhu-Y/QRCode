using Indo.Abp.AspNetCore.Mvc.UI.Theme.AdminLTE;
using Microsoft.AspNetCore.Mvc;
using QRCode.Licenses;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace QRCode.Web.Pages
{

    public class IndexModel : QRCodePageModel
    {
        private readonly ILicenseAppService _licenseAppService;
        public IndexModel(ILicenseAppService licenseAppService)
        {
            _licenseAppService = licenseAppService;
        }
        public int CountLicenseWaiting { get; set; }
        public int CountLicenseApproved { get; set; }
        public int CountLicenseRejected { get; set; }
        public int CountLicenseTakeBacked { get; set; }
        public async Task<IActionResult> OnGetAsync()
        {
            var currentUser = CurrentUser.Id;
            if(currentUser == null)
            {
                //RedirectToAction("Login", "Account");
                return Redirect("/Account/Login");
            }
            else
            {
                //số giấy phép đang chờ duyệt
                GetLicenseInput inputWaiting = new GetLicenseInput();
                inputWaiting.Status = Status.Waiting;
                var ListLicensesWaiting = await _licenseAppService.GetListLicensByStatus(inputWaiting);
                CountLicenseWaiting = ListLicensesWaiting.Count;

                //số giấy phép đã duyệt
                GetLicenseInput inputApproved = new GetLicenseInput();
                inputApproved.Status = Status.Approved1;
                var ListLicenseApproved = await _licenseAppService.GetListLicensByStatus(inputApproved);
                CountLicenseApproved = ListLicenseApproved.Count;

                //số giấy phép đã từ chối
                GetLicenseInput inputRejected = new GetLicenseInput();
                inputRejected.Status = Status.Rejected;
                var ListLicenseRejected = await _licenseAppService.GetListLicensByStatus(inputRejected);
                CountLicenseRejected = ListLicenseRejected.Count;

                //số giấy phép đã thu hồi
                GetLicenseInput inputTakeBacked = new GetLicenseInput();
                inputTakeBacked.Status = Status.TakeBack;
                var ListLicenseTakeBacked = await _licenseAppService.GetListLicensByStatus(inputTakeBacked);
                CountLicenseTakeBacked = ListLicenseTakeBacked.Count;
            }

            return Page();
        }
    }
}