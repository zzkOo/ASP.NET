<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="medicalIn.aspx.cs" Inherits="WebUI.medicalIn" %>

<%@ Register Src="~/Controls/medInControl.ascx" TagPrefix="uc1" TagName="medInControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:medInControl runat="server" id="medInControl" />
</asp:Content>
