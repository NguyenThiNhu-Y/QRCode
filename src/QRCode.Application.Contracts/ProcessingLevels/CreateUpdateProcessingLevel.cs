using System;
using System.Collections.Generic;
using System.Text;

namespace QRCode.ProcessingLevels
{
    public class CreateUpdateProcessingLevel
    {
        public Guid IdUser { get; set; }
        public List<int> Level { get; set; }
        public bool Status { get; set; }
        public Guid IdDepartment { get; set; }


    }
}
