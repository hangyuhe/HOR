<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital_log in.aspx.cs" Inherits="hospital_register.hospital_log_in" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 179px; top: 67px; position: absolute" Text="用户名："></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 181px; top: 114px; position: absolute" Text="密码："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 259px; top: 65px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 257px; top: 111px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 416px; top: 191px; position: absolute" Text="登录" />
    </form>
</body>
</html>
