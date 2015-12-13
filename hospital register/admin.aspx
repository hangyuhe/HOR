<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="hospital_register.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br /> <br /> <br /> <br /> 
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 182px; top: 58px; position: absolute" Text="你好，"></asp:Label>
        <br /> <br /> 
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 240px; top: 56px; position: absolute" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; top: 56px; position: absolute; height: 21px; left: 417px" Text="退出登录" />
        <br /> <br /> <br />  <br /> <br /> <br /> 
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

          <a href="hospital_add.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加医院</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="hospital_delete.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">删除医院</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_level.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改用户信用等级</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_check.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">审核用户信息</a>

    </div>
    </form>
</body>
</html>
