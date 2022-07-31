using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace QRCode.DrivingPracticeCars
{
    public class CreateUpdateDrivingPracticeCar
    {
        public Guid IdSubmitter { get; set; }

        [Required]
        [RegularExpression("[^!@#$%&*]*$")]
        public string TrainingPlaces { get; set; } //nơi đào tạo

        [Required]
        [RegularExpression("^[a-zA-Z0-9-]*$")]
        public string RegisterLicensePlates { get; set; } //biển số đăng kí

        [Required]
        [RegularExpression("[^!@#$%&*]*$")]
        public string VehicleOfTheTrainingInstitution { get; set; } //xe của cơ sở đào tạo

        [Required]
        [RegularExpression("^[a-zA-Z0-9 àÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬđĐèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆìÌỉỈĩĨíÍịỊòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰỳỲỷỶỹỸýÝỵỴ]*$")]
        public string CategoryCar { get; set; } //loại xe
        public string ContractCar { get; set; } //xe hợp đồng
        public string Brand { get; set; } //nhãn hiệu
        public int EngineNumber { get; set; } //số động cơ
        public int FrameNumber { get; set; } //số khung

        [DataType(DataType.Date)]
        public DateTime StartDate { get; set; } //ngày cấp

        [DataType(DataType.Date)]
        public DateTime EndDate { get; set; } //ngày hết hạn
        public string Note { get; set; } //ghi chú
    }
}
