using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QRCode.SubmitterInformations
{
    public class CreateUpdateSubmitterInformation
    {
        [Required]
        [RegularExpression("^[a-zA-Z àÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬđĐèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆìÌỉỈĩĨíÍịỊòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰỳỲỷỶỹỸýÝỵỴ]*$")]
        public string FullName { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime DoB { get; set; }

        [Required]
        public bool Gender { get; set; }

        [Required]
        [RegularExpression("^[0-9]*$")]
        public string IdentityCard { get; set; } //CMND

        [Required]
        [DataType(DataType.Date)]
        public DateTime DateOfIssuanceOfIdentityCard { get; set; } //ngày cấp CMND

        [Required]
        [RegularExpression("[^!@#$%&*]*$")]
        public string WhereProvide { get; set; } //nơi cấp CMND

        [Required]
        public string Email { get; set; }

        [Required]
        [RegularExpression("[^!@#$%&*]*$")]
        public string Address { get; set; }

        [Required]
        [RegularExpression("^[0-9]*$")]
        public string PhoneNumber { get; set; }
    }
}
