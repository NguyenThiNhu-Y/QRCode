using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QRCode.Categories
{
    public class CreateUpdateCategory
    {
        [Required]
        [RegularExpression("^[a-zA-Z àÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬđĐèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆìÌỉỈĩĨíÍịỊòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰỳỲỷỶỹỸýÝỵỴ]*$")]
        public string Name { get; set; }
        public Guid? IdParent { get; set; }
        public string Description { get; set; }
        public int Deadline { get; set; }
    }
}
