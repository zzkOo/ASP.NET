using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class appointControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LInterService.user.HosRoom.Contains("医师"))
            {
                Response.Write("<script>alert('您的身份没有权限使用此功能!');" +
                    "window.location.href='medicalOrder.aspx'</script>");
                return;
            }
        }

        public void alertAppoint(string p, string n)
        {
            string str = "<script>alert('" + p;
            str += " 预约 " + n;
            str += " 医生成功！');</script>";
            Response.Write(str);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 1);
            alertAppoint(LInterService.patient.PatName, "刘一");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 2);
            alertAppoint(LInterService.patient.PatName, "陈二");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 3);
            alertAppoint(LInterService.patient.PatName, "张三");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 4);
            alertAppoint(LInterService.patient.PatName, "李四");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 5);
            alertAppoint(LInterService.patient.PatName, "王五");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            LInterService.addPatDoctor(LInterService.patient.PatId, 6);
            alertAppoint(LInterService.patient.PatName, "赵六");
        }
    }
}