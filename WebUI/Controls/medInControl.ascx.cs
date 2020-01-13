using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class medInControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvAdd.DataSource = LInterService.showMedDT();
                gvAdd.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LInterService.user.HosRoom.Contains("医师"))
            {
                Response.Write("<script>alert('您的身份没有权限使用此功能!');" +
                    "window.location.href='medicalOrder.aspx'</script>");
                return;
            }
            string mn = medName.Text;
            int mc = int.Parse(medCount.Text);
            LInterService.addMedNum(mn, mc);
            gvAdd.DataSource = LInterService.showMedDT();
            gvAdd.DataBind();
        }
    }
}