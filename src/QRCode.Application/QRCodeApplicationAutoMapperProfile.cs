using AutoMapper;
using QRCode.Categories;
using QRCode.DrivingPracticeCars;
using QRCode.Licenses;
using QRCode.LicensingDepartmentAuthorities;
using QRCode.ProcessingLevels;
using QRCode.SubmitterInformations;

namespace QRCode
{

    public class QRCodeApplicationAutoMapperProfile : Profile
    {
        public QRCodeApplicationAutoMapperProfile()
        {
            /* You can configure your AutoMapper mapping configuration here.
             * Alternatively, you can split your mapping configurations
             * into multiple profile classes for a better organization. */
            CreateMap<Category, CategoryDto>();
            CreateMap<CreateUpdateCategory, Category>();
            CreateMap<CreateUpdateCategory, CategoryDto>();
            CreateMap<CategoryDto, CreateUpdateCategory>();
            CreateMap<CategoryDto, Category>();

            CreateMap<DrivingPracticeCar, DrivingPracticeCarDto>();
            CreateMap<CreateUpdateDrivingPracticeCar, DrivingPracticeCar>();


            CreateMap<SubmitterInformation, SubmitterInformationDto>();
            CreateMap<CreateUpdateSubmitterInformation, SubmitterInformation>();
            CreateMap<SubmitterInformation, SubmitterInformationDto>();
            CreateMap<SubmitterInformationDto, CreateUpdateSubmitterInformation>();


            CreateMap<License, LicenseDto>();
            CreateMap<CreateUpdateLicense, License>();
            CreateMap<LicenseDto, CreateUpdateLicense>();


            CreateMap<ProcessingLevel, ProcessingLevelDto>();
            CreateMap<CreateUpdateProcessingLevel, ProcessingLevel>();
            CreateMap<ProcessingLevel, CreateUpdateProcessingLevel>();

            CreateMap<LicensingDepartmentAuthority, LicensingDepartmentAuthorityDto>();
            CreateMap<CreateUpdateLicensingDepartmentAuthority, LicensingDepartmentAuthority>();
            CreateMap<LicensingDepartmentAuthority, CreateUpdateLicensingDepartmentAuthority>();



        }
    }
}