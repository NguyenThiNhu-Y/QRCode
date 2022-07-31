using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using QRCode.Licenses;

namespace QRCode.Web.Pages.DrivingPracticeCars
{
    public class IndexModel : QRCodePageModel
    {
        //[BindProperty(SupportsGet =true)]
        //[HiddenInput]
        //public Guid id { get; set; }
        [BindProperty(SupportsGet =true)]
        [HiddenInput]
        public Guid IdCater { get; set; }

        [BindProperty(SupportsGet =true)]
        public string status { get; set; }

        public List<SelectListItem> StatusList { get; set; }
        public string Time { get; set; }

        public List<SelectListItem> TimeList { get; set; }

        public async Task OnGetAsync()
        {
            StatusList = new List<SelectListItem>
            {
                new SelectListItem { Value = ""+Status.All, Text = L["All"]},
                new SelectListItem { Value = ""+Status.Waiting, Text = L["Waiting"]},
                new SelectListItem { Value = ""+Status.Approved1, Text = L["Approved1"]},
                new SelectListItem { Value = ""+Status.Approved2, Text = L["Approved2"]},
                new SelectListItem { Value = ""+Status.TakeBack, Text = L["TakeBacked"]},
                new SelectListItem { Value = ""+Status.Rejected, Text = L["Rejected"]}
            };
            
            TimeList = new List<SelectListItem>
            {
                new SelectListItem { Value = "0", Text = L["Time"]},
                new SelectListItem { Value = "1", Text = L["24HoursAgo"]},
                new SelectListItem { Value = "2", Text = L["48HoursAgo"]},
                new SelectListItem { Value = "7", Text = L["LastWeek"]},
                new SelectListItem { Value = "30", Text = L["LastMonth"]}
            };
            

            //lọc danh sách theo trạng thái

        }
    }
}
