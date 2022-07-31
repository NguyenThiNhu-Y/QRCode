using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.Licenses
{
    public class GetLicenseInput : PagedAndSortedResultRequestDto
    {
        public string FilterText { get; set; }
        public string Name { get; set; }
        public Status Status { get; set; }
        public int Time { get; set; }
    }
    
}
