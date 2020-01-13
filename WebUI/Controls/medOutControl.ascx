<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="medOutControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.medOutControl" %>
<div class="cenGV">
    <div class="form-group">
        <label for="medName" class="col-sm-4 control-label text-right">请输入开出的药品名称：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="medName" runat="server" class="form-control" placeholder="Medicine Name"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label for="medCount" class="col-sm-4 control-label text-right">请输入开出的药品数量：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="medCount" runat="server" class="form-control" placeholder="Medicine Count"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="更新数据库" class="btn btn-danger" OnClick="Button1_Click"/>
    <br />
    <br />
    <div style="width: 800px; margin: 0 auto;text-align: center;">
        <asp:GridView ID="gvReduce" runat="server" Width="800px" Font-Size="Medium">
            <HeaderStyle BackColor="#C65A57" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"/>
            <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
    </div>
</div>