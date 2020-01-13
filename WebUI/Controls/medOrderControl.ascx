<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="medOrderControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.medOrderControl" %>
<div class="medical">
    <div class="form-group">
        <label for="patname" class="col-sm-2 control-label text-right">病人姓名：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="patname" runat="server" class="form-control" placeholder="Patient Name"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="姓名不可为空！" Text="*必填" ControlToValidate="patname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="sex" class="col-sm-2 control-label text-right">病人性别：</label>
        <div id="sex">
            <div class="col-sm-1"><asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sex" /></div>
            <div class="col-sm-1"><asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="sex" /></div>
        </div>
    </div>
    <div class="form-group">
        <label for="age" class="col-sm-2 control-label text-right">病人年龄：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="age" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="年龄不可为空！" Text="*必填" ForeColor="Red" ControlToValidate="age"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="place" class="col-sm-2 control-label text-right">病人症状：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="symptom" class="form-control" placeholder="Symptom" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="症状不可为空！" Text="*必填" ForeColor="Red" ControlToValidate="symptom"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label for="docname" class="col-sm-2 control-label text-right">医生署名：</label>
        <div class="col-sm-8">
            <asp:TextBox ID="docname" class="form-control" placeholder="Doctor Name" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="署名不可为空！" Text="*必填" ForeColor="Red" ControlToValidate="docname"></asp:RequiredFieldValidator>
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="生成医令单" class="btn btn-danger" OnClick="Button1_Click"/>
    <br /><br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="order">
            <div class="form-group">
                <label class="col-sm-2 control-label text-right">姓名：</label>
                <div class="col-sm-9">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-right">性别：</label>
                <div class="col-sm-9">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-right">年龄：</label>
                <div class="col-sm-9">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-right">症状：</label>
                <div class="col-sm-9">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-right">署名：</label>
                <div class="col-sm-9">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <br />
        <asp:Button ID="Button2" runat="server" Text="确定并打印" class="btn btn-danger" OnClick="Button2_Click"/>
    </asp:Panel>
</div>
