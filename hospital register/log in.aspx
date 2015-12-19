<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log in.aspx.cs" Inherits="hospital_register.log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 175px; top: 116px; position: absolute; height: 21px; width: 57px" Text="用户名"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 178px; top: 169px; position: absolute; right: 591px; height: 26px" Text="密码"></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 258px; top: 116px; position: absolute"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 257px; top: 165px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 492px; top: 144px; position: absolute; " Text="登录" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 392px; top: 254px; position: absolute; width: 43px; height: 20px" Text="返回" />
    </form>
</body>
</html>
