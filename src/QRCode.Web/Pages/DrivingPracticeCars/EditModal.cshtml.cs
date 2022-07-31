using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using QRCode.Categories;
using QRCode.DrivingPracticeCars;
using QRCode.Licenses;
using QRCode.ProcessingLevels;
using QRCode.SubmitterInformations;
using Volo.Abp;
using Volo.Abp.AspNetCore.Mvc.UI.Alerts;

namespace QRCode.Web.Pages.DrivingPracticeCars
{
    public class EditModalModel : QRCodePageModel
    {
        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid Id { get; set; } //Id Giấy phép

        [BindProperty]
        public Guid IdCurrentUser { get; set; }
        
        [BindProperty(SupportsGet =true)]
        public Guid IdCater { get; set; }

        [BindProperty]
        public List<int> LevelUser { get; set; } //cấp phê duyệt

        public bool PermissionApprove { get; set; } //quyền phê duyệt 
        public bool PermissionTakeBack { get; set; } //quyền thu hồi


        [BindProperty]
        public CreateUpdateDrivingPracticeCar DrivingPracticeCar { get; set; }


        [BindProperty(SupportsGet = true)]
        [HiddenInput]
        public Guid IdSubmitter { get; set; }

        [BindProperty]
        public CreateUpdateSubmitterInformation UpdateSubmitterInformation { get; set; }

        [BindProperty]
        public LicenseDto License { get; set; }
        
        [BindProperty]
        public CreateUpdateLicense UpdateLicense { get; set; }

        [BindProperty]
        public CategoryDto Category { get; set; }

        [BindProperty]
        public string TrainingPlaces { get; set; }

        public CreateUpdateSubmitterInformation SubmitterInformationCreate { get; set; }

        public CreateUpdateLicense LicenseCreate { get; set; }
        
        [BindProperty]
        public List<DrivingPracticeCarDto> ListDrvingPracticeCar { get; set; }

        [BindProperty]
        public bool StatusApprove { get; set; }
        public List<Brand> brands { get; set; }




        private readonly ICategoryAppService _categoryAppService;
        private readonly ISubmitterInformationAppService _submitterInformationAppService;
        private readonly IDrivingPracticeCarAppService _drivingPracticeCarAppService;
        private readonly ILicenseAppService _licenseAppService;
        private readonly IProcessingLevelRepository _processingLevelRepository;

        public EditModalModel(ICategoryAppService categoryAppService,
            ISubmitterInformationAppService submitterInformationAppService,
            IDrivingPracticeCarAppService drivingPracticeCarAppService,
            ILicenseAppService licenseAppService,
            IProcessingLevelRepository processingLevelRepository)
        {
            _categoryAppService = categoryAppService;
            _submitterInformationAppService = submitterInformationAppService;
            _drivingPracticeCarAppService = drivingPracticeCarAppService;
            _licenseAppService = licenseAppService;
            _processingLevelRepository = processingLevelRepository;
        }

        public string Gender { get; set; }
        public string status { get; set; }

        public List<SelectListItem> GenderList { get; set; } = new List<SelectListItem>
        {
            new SelectListItem { Value = "Male", Text = "Male"},
            new SelectListItem { Value = "FeMale", Text = "FeMale"}
        };
        public List<SelectListItem> StatusList { get; set; } 


        public class SampleModel
        {
            public string GenderRadio { get; set; }


        }
        public async Task OnGetAsync()
        {
            IdCurrentUser = (Guid)CurrentUser.Id; //lấy id tài khoản hiện tại
            LevelUser = new List<int>();
            LevelUser = (await _processingLevelRepository.GetByIdUserAndLevelAsync(IdCurrentUser)).Level; //level của user hiện tại

            
            //get license
            License = await _licenseAppService.GetLicensAsync(Id); 
            UpdateLicense = ObjectMapper.Map<LicenseDto, CreateUpdateLicense>(License);

            //quyền duyệt //khi giấy phép có level 0, thì user có quyền duyệt cấp 0+1=1 ko, câp 1+1=2 ko
            PermissionApprove = await _licenseAppService.CheckPermissionApproved(Id, License.Level+1);
            PermissionTakeBack = await _licenseAppService.CheckPermissionApproved(Id, License.Level);

            //lấy thông tin người nộp
            var SubmitterInformationDto = await _submitterInformationAppService.GetSubmitter(License.IdSubmitter); 
            IdSubmitter = SubmitterInformationDto.Id;
            UpdateSubmitterInformation = ObjectMapper.Map<SubmitterInformationDto, CreateUpdateSubmitterInformation>(SubmitterInformationDto);
            if (UpdateSubmitterInformation.Gender)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "FeMale";
            }

            //category
            Category = await _categoryAppService.GetCategoryAsync(License.IdCategory);
            IdCater = Category.Id;
            //danh sách xe đăng ký cấp giấy phép
            GetDrivingPracticeCarInput input = new GetDrivingPracticeCarInput
            {
                Name = null,
                FilterText = null,
                IdSubmitter = SubmitterInformationDto.Id
            };
            ListDrvingPracticeCar = await _drivingPracticeCarAppService.GetListDrivingPracticeCarByIdSubmitter(input);

            //nơi đào tạo
            TrainingPlaces = ListDrvingPracticeCar.ToArray()[0].TrainingPlaces;

            //trạng thái
            StatusList = new List<SelectListItem>
            {
                new SelectListItem { Value = ""+Status.Waiting, Text = L["Waiting"]},
                new SelectListItem { Value = ""+Status.Approved1, Text = L["Approve1"]},
                new SelectListItem { Value = ""+Status.Approved2, Text = L["Approve2"]},
                new SelectListItem { Value = ""+Status.TakeBack, Text = L["TakeBack"]},
                new SelectListItem { Value = ""+Status.Rejected, Text = L["Reject"]}
            };
            status = License.Status+"";

            //trạng thái của người duyệt hồ sơ
            StatusApprove = (await _processingLevelRepository.GetByIdUserAndLevelAsync(CurrentUser.Id)).Status;

            //brand
            brands = new List<Brand>();
            using (StreamReader r = new StreamReader((@"Pages\DrivingPracticeCars\Brand.json")))
            {
                string json = r.ReadToEnd();
                brands = JsonConvert.DeserializeObject<List<Brand>>(json);
            }
        }

        public async Task<IActionResult> OnPostAsync(Guid Id, IFormCollection formCollection)
        {
            //Lưu chủ hồ sơ
            var Gender = formCollection["Gender"];
            if (Gender[0] == "Male")
            {
                UpdateSubmitterInformation.Gender = true;
            }
            else
            {
                UpdateSubmitterInformation.Gender = false;
            }

            //SubmitterInformationCreate = ObjectMapper.Map<SubmitterInformationDto, CreateUpdateSubmitterInformation>(SubmitterInformation);
            var SubmitterInformationDto = await _submitterInformationAppService.UpdateAsync(IdSubmitter, UpdateSubmitterInformation);

            //get thông tin từ form
            var RegisterLicensePlates = formCollection["DrivingPracticeCar.RegisterLicensePlates"];
            var VehicleOfTheTrainingInstitution = formCollection["DrivingPracticeCar.VehicleOfTheTrainingInstitution"];
            var CategoryCar = formCollection["DrivingPracticeCar.CategoryCar"];
            var ContractCar = formCollection["DrivingPracticeCar.ContractCar"];
            var Brand = formCollection["DrivingPracticeCar.Brand"];
            var EngineNumber = formCollection["DrivingPracticeCar.EngineNumber"];
            var FrameNumber = formCollection["DrivingPracticeCar.FrameNumber"];
            var StartDate = formCollection["DrivingPracticeCar.StartDate"];
            var EndDate = formCollection["DrivingPracticeCar.EndDate"];
            var Note = formCollection["DrivingPracticeCar.Note"];
            var ListIdLicenseDrivingPracticeCar = formCollection["item.Id"];

            //lấy ds  idLicenseDrivingPracticeCar đã có
            GetDrivingPracticeCarInput input = new GetDrivingPracticeCarInput
            {
                Name = null,
                FilterText = null,
                IdSubmitter = SubmitterInformationDto.Id
            };
            ListDrvingPracticeCar = await _drivingPracticeCarAppService.GetListDrivingPracticeCarByIdSubmitter(input);
            List<Guid> ListIdOld = new List<Guid>();
            foreach (var item in ListDrvingPracticeCar)
            {
                ListIdOld.Add(item.Id);
            }
            //gán thông tin vào DrivingPracticeCar
            for (int i = 0; i < RegisterLicensePlates.Count; i++)
            {
                
                CreateUpdateDrivingPracticeCar createUpdateDrivingPracticeCar = new CreateUpdateDrivingPracticeCar();
                createUpdateDrivingPracticeCar.TrainingPlaces = formCollection["DrivingPracticeCar.TrainingPlaces"];
                createUpdateDrivingPracticeCar.RegisterLicensePlates = RegisterLicensePlates[i];
                createUpdateDrivingPracticeCar.VehicleOfTheTrainingInstitution = VehicleOfTheTrainingInstitution[i];
                createUpdateDrivingPracticeCar.CategoryCar = CategoryCar[i];
                createUpdateDrivingPracticeCar.ContractCar = ContractCar[i];
                createUpdateDrivingPracticeCar.Brand = Brand[i];
                createUpdateDrivingPracticeCar.EngineNumber = int.Parse(EngineNumber[i]);
                createUpdateDrivingPracticeCar.FrameNumber = int.Parse(FrameNumber[i]);
                createUpdateDrivingPracticeCar.StartDate = DateTime.Parse(StartDate[i]);
                createUpdateDrivingPracticeCar.EndDate = DateTime.Parse(EndDate[i]);
                createUpdateDrivingPracticeCar.Note = Note[i];
                createUpdateDrivingPracticeCar.IdSubmitter = SubmitterInformationDto.Id;

                

                //nếu idLicense có trong ds id đã có thì cập nhật
                string IdLicense = ListIdLicenseDrivingPracticeCar[i];
                if (IdLicense!="" && ListIdOld.Contains(Guid.Parse(IdLicense)))
                {
                    await _drivingPracticeCarAppService.UpdateAsync(Guid.Parse(IdLicense), createUpdateDrivingPracticeCar);
                }
                //nếu chưa có thì thêm mới
                if(IdLicense == "")
                {
                    await _drivingPracticeCarAppService.CreateAsync(createUpdateDrivingPracticeCar);
                }
            }

            //nếu id trong ds cũ không có trong ds id mới thì xóa
            foreach(var item in ListIdOld)
            {
                if (!ListIdLicenseDrivingPracticeCar.Contains("" + item))
                {
                    await _drivingPracticeCarAppService.DeleteAsync(item);
                }
            }


            //Cập nhật giấy phép
            UpdateLicense.IdSubmitter = IdSubmitter;
            UpdateLicense.IdCategory = Guid.Parse(formCollection["Category.Id"]);
            UpdateLicense.Astract = formCollection["UpdateLicense.Astract"];

            //trạng thái giấy phép
            Status LicenseStatus = (Status)Enum.Parse(typeof(Status), formCollection["status"], true);
            UpdateLicense.Status = LicenseStatus;
            await _licenseAppService.UpdateAsync(Id, UpdateLicense);

            return RedirectToAction("Index", "DrivingPracticeCars", new { IdCater = Category.Id });
            
            //Status LicenseStatus = formCollection["status"]!=""?(Status)Enum.Parse(typeof(Status), formCollection["status"], true): Status.Waiting;
            //UpdateLicense.Status = LicenseStatus;
            //if (LicenseStatus == Status.Approved1)
            //{
            //    if (!await _licenseAppService.CheckPermissionApproved(Id, 1))
            //    {
            //        throw new UserFriendlyException(L["YouDoNotHaveThePermissionToApproveThisLicense"]);
            //    }
            //    else
            //    {
            //        UpdateLicense.IdUserLevel1 = IdCurrentUser;
            //        UpdateLicense.Level = 1;
            //        await _licenseAppService.UpdateAsync(Id, UpdateLicense);
            //        return RedirectToAction("Index", "DrivingPracticeCars", new { IdCater = Category.Id });
            //    }
            //}
            //else
            //{
            //    await _licenseAppService.UpdateAsync(Id, UpdateLicense);
            //    return RedirectToAction("Index", "DrivingPracticeCars", new { IdCater = Category.Id });
            //}




        }
    }
}
