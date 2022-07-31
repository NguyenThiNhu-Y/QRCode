using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

namespace QRCode.SubmitterInformations
{
    public class SubmitterInformationAppService : ApplicationService, ISubmitterInformationAppService
    {
        private readonly ISubmitterInformationRepository _submitterInformationRepository;
        public SubmitterInformationAppService(ISubmitterInformationRepository submitterInformationRepository)
        {
            _submitterInformationRepository = submitterInformationRepository;
        }

        public async Task<SubmitterInformationDto> CreateAsync(CreateUpdateSubmitterInformation input)
        {
            var submitter = ObjectMapper.Map<CreateUpdateSubmitterInformation, SubmitterInformation>(input);
            await _submitterInformationRepository.InsertAsync(submitter);
            return ObjectMapper.Map<SubmitterInformation, SubmitterInformationDto>(submitter);
        }

        public async Task<PagedResultDto<SubmitterInformationDto>> GetListAsync(GetSubmitterInformationInput input)
        {
            var count = await _submitterInformationRepository.GetCountAsync();
            var items = await _submitterInformationRepository.GetListAsync(input.FilterText, input.Name);
            return new PagedResultDto<SubmitterInformationDto>
            {
                TotalCount = count,
                Items = ObjectMapper.Map<List<SubmitterInformation>, List<SubmitterInformationDto>>(items)
            };
        }

        public async Task<SubmitterInformationDto> GetSubmitter(Guid Id)
        {
            var Submitter = await _submitterInformationRepository.FindAsync(Id);
            return ObjectMapper.Map<SubmitterInformation, SubmitterInformationDto>(Submitter);

        }

        public async Task<SubmitterInformationDto> UpdateAsync(Guid Id, CreateUpdateSubmitterInformation input)
        {
            var Submitter = await _submitterInformationRepository.FindAsync(Id);
            Submitter.FullName = input.FullName;
            Submitter.DoB = input.DoB;
            Submitter.Gender = input.Gender;
            Submitter.IdentityCard = input.IdentityCard;
            Submitter.DateOfIssuanceOfIdentityCard = input.DateOfIssuanceOfIdentityCard;
            Submitter.WhereProvide = input.WhereProvide;
            Submitter.Email = input.Email;
            Submitter.Address = input.Address;
            Submitter.PhoneNumber = input.PhoneNumber;

            await _submitterInformationRepository.UpdateAsync(Submitter);
            return ObjectMapper.Map<SubmitterInformation, SubmitterInformationDto>(Submitter);
        }
    }
}
