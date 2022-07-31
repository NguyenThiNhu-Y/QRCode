using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QRCode.Licenses
{
    public class CreateUpdateLicense
    {
        public Guid IdCategory { get; set; } //ID danh mục giấy phép
        public Guid IdSubmitter { get; set; } //ID người nộp hồ sơ
        public Guid IdProcedure { get; set; } //ID thủ tục
        public Guid IdFile { get; set; } //ID hồ sơ

        [Required]
        [RegularExpression("^[a-zA-Z àÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬđĐèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆìÌỉỈĩĨíÍịỊòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰỳỲỷỶỹỸýÝỵỴ]*$")]
        public string ProfileOwner { get; set; } //chủ hồ sơ
        public DateTime DateRegister { get; set; } //ngày đăng ký
        public DateTime DateStart { get; set; } //Ngày bắt đầu có hiệu lực
        public DateTime DateEnd { get; set; } //Ngày hết hiệu lực
        public DateTime ProcessingExpirationDate { get; set; } //ngày hết hạn xử lý
        public string NumberOfSymbol { get; set; } //sô kí hiệu
        public Status Status { get; set; } //trạng thái giấy phép

        [Required]
        [RegularExpression("^[0-9]*$")]
        public string PhoneNumber { get; set; }

        [Required]
        [RegularExpression("[^!@#$%&*]*$")]
        public string Address { get; set; }

        [Required]
        public string Astract { get; set; } //trích yếu
        public int Level { get; set; } //cấp xử lý
        public Guid IdUserLevel1 { get; set; } //người xử lý cấp 1
        public Guid IdUserLevel2 { get; set; } //người xử lý cấp 1
        public List<string> Files { get; set; }

    }
}
