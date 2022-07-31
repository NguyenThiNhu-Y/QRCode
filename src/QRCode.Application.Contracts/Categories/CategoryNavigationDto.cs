using System;
using System.Collections.Generic;
using System.Text;

namespace QRCode.Categories
{
    public class CategoryNavigationDto
    {
        public CategoryDto Category { get; set; }
        public CategoryDto CategoryParent { get; set; }
    }
}
