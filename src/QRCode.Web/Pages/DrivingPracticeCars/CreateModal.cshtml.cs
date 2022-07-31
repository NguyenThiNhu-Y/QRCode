using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using QRCode.Categories;
using QRCode.DrivingPracticeCars;
using QRCode.Licenses;
using QRCode.SubmitterInformations;
using Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form;

namespace QRCode.Web.Pages.DrivingPracticeCars
{
    public class CreateModalModel : QRCodePageModel
    {
        [BindProperty]
        public CreateUpdateDrivingPracticeCar DrivingPracticeCar { get; set; }

        

        [BindProperty]
        public CreateUpdateSubmitterInformation SubmitterInformation { get; set; }

        [BindProperty]
        public CreateUpdateLicense License { get; set; }
        [BindProperty]
        public CategoryDto Category { get; set; }

        [BindProperty(SupportsGet =true)]
        [HiddenInput]
        public Guid Id { get; set; }

        public List<Brand> brands { get; set; }

        private readonly ICategoryAppService _categoryAppService;
        private readonly ISubmitterInformationAppService _submitterInformationAppService;
        private readonly IDrivingPracticeCarAppService _drivingPracticeCarAppService;
        private readonly ILicenseAppService _licenseAppService;
        private readonly IWebHostEnvironment _hostEnvironment;

        public CreateModalModel(ICategoryAppService categoryAppService,
            ISubmitterInformationAppService submitterInformationAppService,
            IDrivingPracticeCarAppService drivingPracticeCarAppService,
            ILicenseAppService licenseAppService,
            IWebHostEnvironment hostEnvironment)
        {
            _categoryAppService = categoryAppService;
            _submitterInformationAppService = submitterInformationAppService;
            _drivingPracticeCarAppService = drivingPracticeCarAppService;
            _licenseAppService = licenseAppService;
            _hostEnvironment = hostEnvironment;
        }
        
        public async Task OnGetAsync(Guid Id)
        {
            Category = await _categoryAppService.GetCategoryAsync(Id);
            //Gender = "Male";
            brands = new List<Brand>();
            
            using (StreamReader r = new StreamReader((@"Pages\DrivingPracticeCars\Brand.json")))
            {
                string json = r.ReadToEnd();
                brands = JsonConvert.DeserializeObject<List<Brand>>(json);
            }
           
        }
        public async Task<IActionResult> OnPostAsync(IFormCollection formCollection)
        {
            //Lưu chủ hồ sơ
            var Gender = formCollection["Gender"];
            if(Gender[0] == "Male")
            {
                SubmitterInformation.Gender = true;
            }
            else
            {
                SubmitterInformation.Gender = false;
            }

             var SubmitterInformationDto = await _submitterInformationAppService.CreateAsync(SubmitterInformation);

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

            //gán thông tin vào DrivingPracticeCar
            List<CreateUpdateDrivingPracticeCar> ListCreateUpdateDrivingPracticeCar = new List<CreateUpdateDrivingPracticeCar>();
            for(int i=0; i < RegisterLicensePlates.Count; i++)
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

                ListCreateUpdateDrivingPracticeCar.Add(createUpdateDrivingPracticeCar);
            }
            await _drivingPracticeCarAppService.CreateManyAsync(ListCreateUpdateDrivingPracticeCar);

            //Lưu giấy phép
            //lưu file
            var files = formCollection.Files;
            License.Files = new List<string>();
            foreach(var file in files)
            {
                if (file != null)
                {
                    var extension = Path.GetExtension(file.FileName).ToLower();
                    var wwwRootPath = _hostEnvironment.WebRootPath;
                    var filename = "License" + DateTime.Now.ToString("yymmssfff") + extension;
                    var fileNew = DefaultUploadFile.UploadFileLicense + filename;
                    var path = Path.Combine(wwwRootPath + fileNew);


                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        file.CopyTo(stream);
                    }

                    License.Files.Add(filename);
                }
            }
            
            License.IdCategory = Category.Id;
            License.IdSubmitter = SubmitterInformationDto.Id;
            await _licenseAppService.CreateAsync(License);

            

            return RedirectToAction("Index", "DrivingPracticeCars", new { IdCater = Category.Id });
        }
        
    }
}
