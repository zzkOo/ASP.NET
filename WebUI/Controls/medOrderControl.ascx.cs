using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class medOrderControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LInterService.user.HosRoom == "护士")
            {
                Response.Write("<script>alert('您的身份没有权限使用此功能!');" +
                    "window.location.href='patientInfo.aspx'</script>");
                return;
            }
            Label1.Text = patname.Text;
            if (RadioButton1.Checked) Label2.Text = "男";
            else if (RadioButton2.Checked) Label2.Text = "女";
            Label3.Text = age.Text;
            Label4.Text = symptom.Text;
            Label5.Text = docname.Text;
            LInterService.order[0] = Label1.Text;
            LInterService.order[1] = Label2.Text;
            LInterService.order[2] = Label3.Text;
            LInterService.order[3] = DateTime.Now.ToString();
            LInterService.order[4] = Label4.Text;
            LInterService.order[5] = Label5.Text;
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("modelPrint.aspx");
        }
    }
}