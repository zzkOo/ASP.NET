<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebUI.login" %>

<%@ Register Src="~/Controls/loginControl.ascx" TagPrefix="uc1" TagName="loginControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <link href="content/loginStyle.css" rel="stylesheet" />
    <link rel="Shortcut Icon" href="images/logo.ico" type="image/x-icon" />
    <title>医院信息管理系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:loginControl runat="server" ID="loginControl" />
    </form>

    <script src="scripts/jquery-3.4.1.js"></script>
    <script src="scripts/bootstrap.min.js"></script>    
</body>
</html>
