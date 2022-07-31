using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace QRCode.SubmitterInformations
{
    public class SubmitterInformation : AuditedAggregateRoot<Guid>
    {
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
