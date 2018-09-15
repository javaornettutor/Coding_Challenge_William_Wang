using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Coding_Challenge_William_Wang.Class
{
    public class App_Utils
    {
        /***
         * The function will retrieve information from web.config file by its key
         * @key - key in the web.config file under appSetting section
         * @author - William Wang
         */
        public static string getConfigSettings(String key)
        {
            try
            {
                string result= ConfigurationManager.AppSettings[key];
                return String.IsNullOrEmpty(result)? string.Format(App_Constants.APP_CONFIG_SETTING_MISSING,key): result;
            }
            catch (Exception ex)
            {

                return ex.Message;
            }

           
        }
        /***
         * The function will generate the web page URL based on current webpage root.
         * so it will dynamically generate the path to where the page is and show on UI as a link
         * 
         * @pageName - page filename with extension
         * @author - William Wang
         */
        public static string getWebPage(String pageName)
        { 
           return string.Format(App_Constants.APP_WEB_PATH +"/"+ pageName);           
        }
        
    }
}