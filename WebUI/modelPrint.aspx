<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="modelPrint.aspx.cs" Inherits="WebUI.modelPrint" %>

<%@ Register Src="~/Controls/printControl.ascx" TagPrefix="uc1" TagName="printControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:printControl runat="server" id="printControl" />
</asp:Content>
