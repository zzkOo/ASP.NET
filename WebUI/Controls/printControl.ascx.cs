using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class printControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = LInterService.order[0];
            Label2.Text = LInterService.order[1];
            Label3.Text = LInterService.order[2];
            Label4.Text = LInterService.order[3];
            Label5.Text = LInterService.order[4];
            Label6.Text = LInterService.order[5];
        }
    }
}