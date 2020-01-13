<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebUI.payment" %>

<%@ Register Src="~/Controls/paymentControl.ascx" TagPrefix="uc1" TagName="paymentControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:paymentControl runat="server" id="paymentControl" />
</asp:Content>
