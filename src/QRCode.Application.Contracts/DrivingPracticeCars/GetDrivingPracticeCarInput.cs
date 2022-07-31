using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.DrivingPracticeCars
{
    public class GetDrivingPracticeCarInput : PagedAndSortedResultRequestDto
    {
        public string FilterText { get; set; }
        public string Name { get; set; }
        public Guid IdSubmitter { get; set; }
    }
}
