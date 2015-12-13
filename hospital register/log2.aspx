<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log2.aspx.cs" Inherits="hospital_register.log2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 240px; top: 110px; position: absolute" Text="用户名"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 314px; top: 155px; position: absolute; right: 468px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 246px; top: 156px; position: absolute; height: 14px; width: 87px" Text="密码"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 315px; top: 109px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 548px; top: 143px; position: absolute" Text="登录" />
    </form>
</body>
</html>
