using System;
using System.Web;
using Coding_Challenge_William_Wang.Class;
using Coding_Challenge_William_Wang.Class.Helper;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Unit_Test_Project
{
    [TestClass]
    public class UnitTest1
    {
        private string expected;        
        private string pageName= "Image_Manager_App.aspx";
        private string pagePath;

        [TestMethod]
        public void TestReadConfig()
        {
            
            string linkText ="Test";
            pagePath = App_Constants.APP_WEB_PATH + "/" + pageName;
            
            HtmlString result = new HtmlString("<a href='"+ pagePath +"'>"+ linkText +"</a>");
            HtmlString expectedResult = HTMLHelperExtensions.CreatePageLink(pagePath,linkText);

            Assert.AreEqual(result.ToHtmlString(), expectedResult.ToHtmlString());

        }
 
        [TestMethod]
        public void TestGeneratePageLink()
        {    
            pagePath = App_Constants.APP_WEB_PATH + "/" + pageName;
            expected = App_Utils.getWebPage(pageName);
            Assert.AreEqual(pagePath, expected);
        }
    
    }
}
