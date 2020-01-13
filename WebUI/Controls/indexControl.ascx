<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="indexControl.ascx.cs" Inherits="HospitalManagement.WebUI.Controls.indexControl" %>
<nav id="nav" class="navbar navbar-inverse">
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-apple" aria-hidden="true"></span>导医服务<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="patientInfo.aspx"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>病人资料</a></li>
            <li><a href="appointment.aspx"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>病人预约</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="payment.aspx"><span class="glyphicon glyphicon-yen" aria-hidden="true"></span>缴费管理</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-euro" aria-hidden="true"></span>医生服务<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="medicalOrder.aspx"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>医令单</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>药房管理<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="medicalOut.aspx"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>药品开出</a></li>
            <li><a href="medicalIn.aspx"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>退药入库</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="medicalInfo.aspx"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>药品资料</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span>门诊统计<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="doctorInfo.aspx"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>科室人员</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>系统设置<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="changeColor.aspx"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改颜色</a></li>
        </ul>
    </div>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="toolbar">
            <span class="glyphicon glyphicon-print" aria-hidden="true"></span>单据打印<span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="modelPrint.aspx"><span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>模拟打印</a></li>
        </ul>
    </div>
</nav>
