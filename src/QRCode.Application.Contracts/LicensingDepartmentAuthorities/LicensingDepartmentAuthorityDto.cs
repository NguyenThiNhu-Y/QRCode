using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.LicensingDepartmentAuthorities
{
    public class LicensingDepartmentAuthorityDto : AuditedEntityDto<Guid>
    {
        public int STT { get; set; }
        public string NameDepartment { get; set; }
        public List<Guid> IdCategory { get; set; }
        public string[] NameCategory { get; set; }
        public bool Status { get; set; }
    }
}
