﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coding_Challenge_William_Wang
{
    public partial class Image_Manager_ReadMe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            readMeFrame.Attributes.Add("src", "Image_Manager_ReadMeContent.html");
        }
    }
}