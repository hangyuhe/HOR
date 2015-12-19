<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_log in.aspx.cs" Inherits="hospital_register.admin_log_in" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 201px; top: 90px; position: absolute" Text="用户名："></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 202px; top: 133px; position: absolute" Text="密码："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 293px; top: 89px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 290px; top: 134px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; top: 139px; position: absolute; width: 40px; left: 552px; height: 21px;" Text="登录" />
    </form>
</body>
</html>
