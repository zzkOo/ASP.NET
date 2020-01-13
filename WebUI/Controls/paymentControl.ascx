<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="paymentControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.paymentControl" %>
<div class="pay">
    <label for="DropDownList1" class="control-label text-right">请选择药品：</label>
    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
    <br />
    <label for="DropDownList2" class="control-label text-right">请选择数量：</label>
    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Value="4" AutoPostBack="True"></asp:DropDownList>
    <br />
    <label for="TextBox1" class="control-label text-right">已选择：</label>
    <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="MultiLine" ReadOnly="True" Rows="5" Width="600px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="结算" class="btn btn-danger" OnClick="Button1_Click"/>
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="清空" class="btn btn-danger" OnClick="Button2_Click"/>
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text="￥0.00" class="control-label text-right" style="font-size: medium;"></asp:Label>
</div>
