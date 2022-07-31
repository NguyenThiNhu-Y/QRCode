using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace QRCode.Categories
{
    public class Category : AuditedAggregateRoot<Guid>
    {
        public string name { get; set; }
        public Guid? idParent { get; set; }
        public string description { get; set; }
        public int deadline { get; set; }
        public bool Status { get; set; }
    }
}
