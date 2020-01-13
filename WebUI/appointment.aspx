<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="WebUI.appointment" %>

<%@ Register Src="~/Controls/appointControl.ascx" TagPrefix="uc1" TagName="appointControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:appointControl runat="server" id="appointControl" />
</asp:Content>

