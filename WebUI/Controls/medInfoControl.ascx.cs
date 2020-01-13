using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class medInfoControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvInfo.DataSource = LInterService.showMedDT();
            gvInfo.DataBind();
        }
    }
}