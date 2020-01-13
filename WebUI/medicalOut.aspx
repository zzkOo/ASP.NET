<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="medicalOut.aspx.cs" Inherits="WebUI.medicalOut" %>

<%@ Register Src="~/Controls/medOutControl.ascx" TagPrefix="uc1" TagName="medOutControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:medOutControl runat="server" id="medOutControl" />
</asp:Content>
