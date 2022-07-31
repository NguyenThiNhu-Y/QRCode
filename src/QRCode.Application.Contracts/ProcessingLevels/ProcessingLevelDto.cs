using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.ProcessingLevels
{
    public class ProcessingLevelDto : AuditedEntityDto<Guid>
    {
        public int STT { get; set; }
        public Guid IdUser { get; set; }
        public string FullName { get; set; }
        public List<int> Level { get; set; }
        public bool Status { get; set; }
        public string UserName { get; set; }
        public Guid IdDepartment { get; set; }
        public string NameDepartment { get; set; }

    }
}
