using Coding_Challenge_William_Wang.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;

namespace Coding_Challenge_William_Wang.Class.Helper
{
    public static class HTMLHelperExtensions
    {
    
        public static HtmlString CreatePageLink( string pageFileName, string displayText)
        {   
            string htmlFormat="<a href='{0}'>{1}</a>";
            return new HtmlString(string.Format(htmlFormat,pageFileName, displayText));
            
        }

    }
}