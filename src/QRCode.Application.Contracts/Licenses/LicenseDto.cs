using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.Application.Dtos;

namespace QRCode.Licenses
{
    public class LicenseDto : AuditedEntityDto<Guid>
    {
        public int STT { get; set; }
        public Guid IdCategory { get; set; } //ID danh mục giấy phép
        public Guid IdSubmitter { get; set; } //ID người nộp hồ sơ
        public Guid IdProcedure { get; set; } //ID thủ tục
        public Guid IdFile { get; set; } //ID hồ sơ
        public string ProfileOwner { get; set; } //chủ hồ sơ
        public DateTime DateRegister { get; set; } //ngày đăng ký
        public DateTime DateStart { get; set; } //Ngày bắt đầu có hiệu lực
        public DateTime DateEnd { get; set; } //Ngày hết hiệu lực
        public DateTime ProcessingExpirationDate { get; set; } //ngày hết hạn xử lý
        public string NumberOfSymbol { get; set; } //sô kí hiệu
        public Status Status { get; set; } //trạng thái giấy phép
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public string Astract { get; set; } //trích yếu
        public int Level { get; set; } //cấp xử lý
        public Guid? IdUserLevel1 { get; set; } //người xử lý cấp 1
        public Guid? IdUserLevel2 { get; set; } //người xử lý cấp 1
        public string NameUserLevel1 { get; set; } //người xử lý cấp 1
        public string NameUserLevel2 { get; set; } //người xử lý cấp 1

        public List<string> Files { get; set; }

    }
}
