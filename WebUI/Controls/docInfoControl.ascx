<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="docInfoControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.docInfoControl" %>
<div style="width: 800px; margin: 0 auto;text-align: center;">
    <asp:GridView ID="gvInfo" runat="server" Width="800px" Font-Size="Medium">
        <HeaderStyle BackColor="#C65A57" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"/>
        <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
</div>