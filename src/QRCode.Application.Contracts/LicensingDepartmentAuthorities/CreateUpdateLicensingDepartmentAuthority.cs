using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QRCode.LicensingDepartmentAuthorities
{
    public class CreateUpdateLicensingDepartmentAuthority
    {
        [Required]
        [RegularExpression("^[a-zA-Z àÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬđĐèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆìÌỉỈĩĨíÍịỊòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰỳỲỷỶỹỸýÝỵỴ]*$")]
        public string NameDepartment { get; set; }
        public List<Guid> IdCategory { get; set; }
    }
}
