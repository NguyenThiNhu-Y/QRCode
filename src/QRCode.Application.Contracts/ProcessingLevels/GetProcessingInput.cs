using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.ProcessingLevels
{
    public class GetProcessingInput : PagedAndSortedResultRequestDto
    {
        public string FilterText { get; set; }
        public string Name { get; set; }
        public int Level { get; set; }
    }
}
