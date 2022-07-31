using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace QRCode.Web.Pages.ProcessingLevels
{
    public class IndexModel : QRCodePageModel
    {
        public List<SelectListItem> LevelList { get; set; }
        public int Level { get; set; }
        public IndexModel()
        {

        }
        public async Task OnGetAsync()
        {
            LevelList = new List<SelectListItem>
            {
                new SelectListItem { Value = "0", Text = L["choose"]},
                new SelectListItem { Value = "1", Text = L["Level1"]},
                new SelectListItem { Value = "2", Text = L["Level2"]}

            };
        }
    }
}
