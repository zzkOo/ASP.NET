using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagement.InterService;

namespace HospitalManagement.WebUI.Controls
{
    public partial class paymentControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindDrop1();
                bindDrop2();
                DropDownList2.Enabled = false;
            }
        }

        public void bindDrop1()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add(new ListItem("无"));
            DropDownList1.Items.Add(new ListItem("奥美拉唑肠溶胶囊"));
            DropDownList1.Items.Add(new ListItem("布洛芬"));
            DropDownList1.Items.Add(new ListItem("克林霉素"));
            DropDownList1.Items.Add(new ListItem("舍曲林"));
            DropDownList1.Items.Add(new ListItem("阿莫西林"));
            DropDownList1.Items.Add(new ListItem("左西替"));
            DropDownList1.Items.Add(new ListItem("金十字胃肠药"));
            DropDownList1.Items.Add(new ListItem("头孢拉定"));
            DropDownList1.Items.Add(new ListItem("阿奇霉素"));
            DropDownList1.Items.Add(new ListItem("谷维素"));
        }

        public void bindDrop2()
        {
            DropDownList2.Items.Clear();
            for (int i = 0; i <= 5; i++)
                DropDownList2.Items.Add(new ListItem(i.ToString()));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text += DropDownList1.SelectedItem.Text + "×";
            bindDrop1();
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = true;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text += DropDownList2.SelectedItem.Text + "\n";
            bindDrop2();
            DropDownList1.Enabled = true;
            DropDownList2.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LInterService.user.HosRoom.Contains("医师"))
            {
                Response.Write("<script>alert('您的身份没有权限使用此功能!');" +
                    "window.location.href='medicalOrder.aspx'</script>");
                return;
            }
            string[] lines = TextBox1.Text.Split("\r\n".ToCharArray(),
                StringSplitOptions.RemoveEmptyEntries);
            decimal sum = 0.00M;
            string[] medName = new string[lines.Length];
            int[] medCount = new int[lines.Length];
            for (int i = 0; i < lines.Length; i++)
            {
                int mul = lines[i].IndexOf("×");
                medName[i] = lines[i].Substring(0, mul);
                medCount[i] = int.Parse(lines[i].Substring(mul + 1, 1));
                sum += LInterService.getMedPrice(medName[i]) * medCount[i];
                string mn = medName[i];
                int mc = medCount[i];
                LInterService.reduceMedNum(mn, mc);
            }
            Label1.Text = "￥" + sum.ToString();
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }
    }
}