using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace QRCode.LicensingDepartmentAuthorities
{
    public class LicensingDepartmentAuthority : AuditedAggregateRoot<Guid>
    {
        public string NameDepartment { get; set; }
        public List<Guid> IdCategory { get; set; }
        public bool Status { get; set; }
    }
}
