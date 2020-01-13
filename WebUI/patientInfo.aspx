<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="patientInfo.aspx.cs" Inherits="WebUI.patientInfo" %>

<%@ Register Src="~/Controls/patInfoControl.ascx" TagPrefix="uc1" TagName="patInfoControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:patInfoControl runat="server" id="patInfoControl" />
</asp:Content>
