<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="doctorInfo.aspx.cs" Inherits="WebUI.doctorInfo" %>

<%@ Register Src="~/Controls/docInfoControl.ascx" TagPrefix="uc1" TagName="docInfoControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:docInfoControl runat="server" id="docInfoControl" />
</asp:Content>
