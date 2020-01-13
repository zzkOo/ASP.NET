using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI
{
    public partial class login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('请输入用户名！')</script>");
                return;
            }
            if (password.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('请输入密码！')</script>");
                return;
            }
            if (password.Text != "123456")
            {
                Response.Write("<script>alert('密码不正确！')</script>");
                return;
            }
            if (!LInterService.isUser(username.Text))
            {
                Response.Write("<script>alert('找不到该用户！')</script>");
                return;
            }
            Session["username"] = LInterService.user.HosName;
            string str = "<script>alert('欢迎你！";
            str += Session["Username"];
            str += "');window.location.href='patientInfo.aspx'</script>";
            Response.Write(str);
        }
    }
}