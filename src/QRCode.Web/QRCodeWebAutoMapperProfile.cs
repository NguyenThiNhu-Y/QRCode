using AutoMapper;
using QRCode.SubmitterInformations;

namespace QRCode.Web
{

    public class QRCodeWebAutoMapperProfile : Profile
    {
        public QRCodeWebAutoMapperProfile()
        {
            //Define your AutoMapper configuration here for the Web project.
            CreateMap<SubmitterInformation, SubmitterInformationDto>();
        }
    }
}