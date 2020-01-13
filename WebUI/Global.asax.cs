using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            System.Web.UI.ScriptResourceDefinition scriptResDef = new System.Web.UI.ScriptResourceDefinition();
            //以下的2.1.4与具体版本有关，具体编程时需改为所安装的版本号
            scriptResDef.Path = "~/Scripts/jquery-3.4.1.min.js";
            System.Web.UI.ScriptManager.ScriptResourceMapping.AddDefinition("jquery", scriptResDef);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}