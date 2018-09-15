using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Coding_Challenge_William_Wang.Class
{
     /***
     * The class will be responsible for all the setting required for the entired website
     * which could be reading off the web.config or any constants website required     
     * @author - William Wang
     */
    public class App_Constants
    {   
        public static string APP_CONFIG_SETTING_MISSING="Configuration Data {0} is missing";
        public static string APP_NAME=App_Utils.getConfigSettings(WebConfig_Constants.APP_NAME);
        public static string APP_WEB_PATH=App_Utils.getConfigSettings(WebConfig_Constants.WEB_PAGE_FOLDER);        
        public static string Link_Text_ReadMe =App_Utils.getConfigSettings(WebConfig_Constants.WEB_PAGE_UI_README);        
        public static string Link_Text_App =App_Utils.getConfigSettings(WebConfig_Constants.WEB_PAGE_UI_APP);        
        public static string Link_Text_UI_Design  =App_Utils.getConfigSettings(WebConfig_Constants.WEB_PAGE_UI_DESIGN);
        public static int APP_MAX_Image=3;

        // this class acts as a internal class which maps to web.config
        class WebConfig_Constants
        {             
            public static string MIN_IMAGE_ALLOWED =   "MIN_IMAGE_ALLOWED";
            public static string WEB_PAGE_FOLDER =   "WEB_PAGE_FOLDER";
            public static string WEB_PAGE_UI_README =   "LINK_TEXT_READ_ME";
            public static string WEB_PAGE_UI_DESIGN =   "LINK_TEXT_UI_DESIGN";
            public static string WEB_PAGE_UI_APP =   "LINK_TEXT_APP";                        
            public static string APP_NAME=   "APP_NAME";            

        }
    }
}