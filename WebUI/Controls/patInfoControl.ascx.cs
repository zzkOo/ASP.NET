using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class patInfoControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvInfo.DataSource = LInterService.showPatDT();
                gvInfo.DataBind();
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
            LInterService.patient = null;
            string c = credit.Text;
            string n = name.Text;
            int a = int.Parse(age.Text);
            string s = "";
            if (RadioButton1.Checked) s = "男";
            else if (RadioButton2.Checked) s = "女";
            string p = place.Text;
            decimal np = 0.00M;
            if (!notpaid.Text.Equals("0.00")) np = decimal.Parse(notpaid.Text);
            LInterService.addPatient(new Patient(c, n, a, s, p, np));
            Response.Write("<script>alert('添加病人资料成功！');</script>");
            gvInfo.DataSource = LInterService.showPatDT();
            gvInfo.DataBind();
        }
    }
}