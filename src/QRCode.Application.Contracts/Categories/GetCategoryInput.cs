using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.Categories
{
    public class GetCategoryInput: PagedAndSortedResultRequestDto
    {
        public string FilterText { get; set; }
        public string Name { get; set; }
    }
}
