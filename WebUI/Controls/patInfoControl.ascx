<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="patInfoControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.patInfoControl" %>
<div class="patientinfo">
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label text-right">姓名：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="姓名不可为空！" Text="*必填" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="sex" class="col-sm-2 control-label text-right">性别：</label>
        <div id="sex">
            <div class="col-sm-1"><asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sex" /></div>
            <div class="col-sm-1"><asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="sex" /></div>
        </div>
    </div>
    <div class="form-group">
        <label for="age" class="col-sm-2 control-label text-right">年龄：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="age" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="年龄不可为空！" Text="*必填" ForeColor="Red" ControlToValidate="age"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="place" class="col-sm-2 control-label text-right">地址：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="place" runat="server" class="form-control" placeholder="Place"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="credit" class="col-sm-2 control-label text-right">身份证号：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="credit" runat="server" class="form-control" placeholder="Credit"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="身份证号不可为空！" Text="*必填" ForeColor="Red" ControlToValidate="credit"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="notpaid" class="col-sm-2 control-label text-right">待缴药费：</label>
        <div class="col-sm-8">
            ￥<asp:Label ID="notpaid" runat="server" Text="0.00" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="保存" class="btn btn-danger" OnClick="Button1_Click"/>
</div>
<br />
<div style="width: 800px; margin: 0 auto;text-align: center;">
    <asp:GridView ID="gvInfo" runat="server" Width="800px" Font-Size="Medium">
        <HeaderStyle BackColor="#C65A57" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"/>
        <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
</div>
