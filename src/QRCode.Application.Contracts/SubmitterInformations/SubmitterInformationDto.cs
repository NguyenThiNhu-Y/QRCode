using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.SubmitterInformations
{
    public class SubmitterInformationDto : AuditedEntityDto<Guid>
    {
        public int STT { get; set; }
        //public Guid IdDrivingPracticeCar { get; set; }
        public string FullName { get; set; }

        
        public DateTime DoB { get; set; }
        public bool Gender { get; set; }
        public string IdentityCard { get; set; } //CMND

        
        public DateTime DateOfIssuanceOfIdentityCard { get; set; } //ngày cấp CMND
        public string WhereProvide { get; set; } //nơi cấp CMND
        public string Email { get; set; }

        public string Address { get; set; }
        public string PhoneNumber { get; set; }
    }
}
