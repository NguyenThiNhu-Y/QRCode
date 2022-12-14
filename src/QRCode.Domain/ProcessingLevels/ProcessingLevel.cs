using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace QRCode.ProcessingLevels
{
    public class ProcessingLevel : AuditedAggregateRoot<Guid>
    {
        public Guid IdUser { get; set; }
        public List<int> Level { get; set; }
        public bool Status { get; set; }
        public string FullName { get; set; }
        public string UserName { get; set; }
        public Guid IdDepartment { get; set; }
    }
}
