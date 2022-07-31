using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.Categories
{
    public class CategoryDto : AuditedEntityDto<Guid>
    {
        public int STT { get; set; }
        [Required]
        public string Name { get; set; }
        public Guid? IdParent { get; set; }
        public string ParentName { get; set; }
        public string Description { get; set; }

        public int Deadline { get; set; }
        public bool Status { get; set; }

    }
}
