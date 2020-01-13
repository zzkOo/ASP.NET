<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="medicalOrder.aspx.cs" Inherits="WebUI.medicalOrder" %>

<%@ Register Src="~/Controls/medOrderControl.ascx" TagPrefix="uc1" TagName="medOrderControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:medOrderControl runat="server" id="medOrderControl" />
</asp:Content>
