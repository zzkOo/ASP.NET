<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="changeColor.aspx.cs" Inherits="WebUI.changeColor" %>

<%@ Register Src="~/Controls/colorControl.ascx" TagPrefix="uc1" TagName="colorControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:colorControl runat="server" id="colorControl" />
</asp:Content>

