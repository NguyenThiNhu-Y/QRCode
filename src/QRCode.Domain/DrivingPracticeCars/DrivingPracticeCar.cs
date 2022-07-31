using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Domain.Entities.Auditing;

namespace QRCode.DrivingPracticeCars
{
    public class DrivingPracticeCar : AuditedAggregateRoot<Guid>
    {
        public Guid IdSubmitter { get; set; } //Id người nộp
        public string TrainingPlaces { get; set; } //nơi đào tạo
        public string RegisterLicensePlates { get; set; } //biển số đăng kí
        public string VehicleOfTheTrainingInstitution { get; set; } //xe của cơ sở đào tạo
        public string CategoryCar { get; set; } //loại xe
        public string ContractCar { get; set; } //xe hợp đồng
        public string Brand { get; set; } //nhãn hiệu
        public int EngineNumber { get; set; } //số động cơ
        public int FrameNumber { get; set; } //số khung
        public DateTime StartDate { get; set; } //ngày cấp
        public DateTime EndDate { get; set; } //ngày hết hạn
        public string Note { get; set; } //ghi chú
    }
}
