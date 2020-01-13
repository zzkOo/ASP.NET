<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="printControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.printControl" %>
<div class="cenGV">
&nbsp;<br />
    <table style="width: 100%; border-collapse: collapse; border: 2px solid #C7254E">
        <tr>
            <td style="border: 1px solid #CC3300; width: 150px">病人姓名</td>
            <td style="border: 1px solid #CC3300; width: 194px"><asp:Label ID="Label1" runat="server"></asp:Label></td>
            <td style="border: 1px solid #CC3300; width: 150px">病人性别</td>
            <td style="border: 1px solid #CC3300;"><asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="border: 1px solid #CC3300; width: 150px">病人年龄</td>
            <td style="border: 1px solid #CC3300; width: 194px"><asp:Label ID="Label3" runat="server"></asp:Label></td>
            <td style="border: 1px solid #CC3300; width: 150px">看病时间</td>
            <td style="border: 1px solid #CC3300;"><asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="border: 1px solid #CC3300; height: 432px; width: 150px">症状</td>
            <td colspan="3" style="border: 1px solid #CC3300; height: 432px"><asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="border: 1px solid #CC3300; width: 150px">医生签名</td>
            <td colspan="3" style="border: 1px solid #CC3300;"><asp:Label ID="Label6" runat="server"></asp:Label></td>
        </tr>
    </table>
&nbsp;<br />
</div>
