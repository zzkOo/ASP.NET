<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="medicalInfo.aspx.cs" Inherits="WebUI.medicalInfo" %>

<%@ Register Src="~/Controls/medInfoControl.ascx" TagPrefix="uc1" TagName="medInfoControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:medInfoControl runat="server" id="medInfoControl" />
</asp:Content>
