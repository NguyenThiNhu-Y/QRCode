using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.Categories;
using QRCode.DrivingPracticeCars;
using QRCode.Licenses;
using QRCode.SubmitterInformations;

namespace QRCode.Web.Pages.DrivingPracticeCars
{
    public class DetailModalModel : QRCodePageModel
    {
        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid Id { get; set; } //Id Giấy phép

        [BindProperty]
        public CreateUpdateDrivingPracticeCar DrivingPracticeCar { get; set; }



        [BindProperty]
        public SubmitterInformationDto SubmitterInformation { get; set; }

        [BindProperty]
        public LicenseDto License { get; set; }
        [BindProperty]
        public CategoryDto Category { get; set; }

        [BindProperty]
        public List<DrivingPracticeCarDto> ListDrvingPracticeCar { get; set; }



        private readonly ICategoryAppService _categoryAppService;
        private readonly ISubmitterInformationAppService _submitterInformationAppService;
        private readonly IDrivingPracticeCarAppService _drivingPracticeCarAppService;
        private readonly ILicenseAppService _licenseAppService;
        public DetailModalModel(ICategoryAppService categoryAppService,
            ISubmitterInformationAppService submitterInformationAppService,
            IDrivingPracticeCarAppService drivingPracticeCarAppService,
            ILicenseAppService licenseAppService)
        {
            _categoryAppService = categoryAppService;
            _submitterInformationAppService = submitterInformationAppService;
            _drivingPracticeCarAppService = drivingPracticeCarAppService;
            _licenseAppService = licenseAppService;
        }

        public string TrainingPlaces { get; set; }
        public string Gender { get; set; }

        public List<SelectListItem> GenderList { get; set; } = new List<SelectListItem>
        {
            new SelectListItem { Value = "Male", Text = "Male"},
            new SelectListItem { Value = "FeMale", Text = "FeMale"}
        };


        public string status { get; set; }
        public async Task OnGetAsync()
        {
            License = await _licenseAppService.GetLicensAsync(Id); //get license
            SubmitterInformation = await _submitterInformationAppService.GetSubmitter(License.IdSubmitter); //lấy thông tin người nộp
            if (SubmitterInformation.Gender)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "FeMale";
            }
            //category
            Category = await _categoryAppService.GetCategoryAsync(License.IdCategory);
            //danh sách xe đăng ký cấp giấy phép
            GetDrivingPracticeCarInput input = new GetDrivingPracticeCarInput
            {
                Name = null,
                FilterText = null,
                IdSubmitter = SubmitterInformation.Id
            };
            ListDrvingPracticeCar = await _drivingPracticeCarAppService.GetListDrivingPracticeCarByIdSubmitter(input);

            //nơi đào tạo
            TrainingPlaces = ListDrvingPracticeCar.ToArray()[0].TrainingPlaces;

            //trạng thái
            status = L[""+License.Status];
        }
    }
}
