<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="loginControl.ascx.cs" Inherits="HospitalManagement.WebUI.login" %>
<div class="login">
    <h2 style="color:white;text-align:center;">登录</h2>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon1">
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
        </span>
        <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Hospital ID" aria-describedby="basic-addon1"></asp:TextBox>
    </div>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon2">
            <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
        </span>
        <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" aria-describedby="basic-addon2" TextMode="Password"></asp:TextBox>
    </div>
    <asp:Button ID="Button1" runat="server" Text="登录" class="btn btn-danger" OnClick="Button1_Click" />
</div>
