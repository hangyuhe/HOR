<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital_add.aspx.cs" Inherits="hospital_register.hospital_add" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 169px; top: 63px; position: absolute" Text="医院名称"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 178px; top: 106px; position: absolute" Text="地址"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 174px; top: 154px; position: absolute; height: 16px; width: 36px" Text="电话"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 175px; top: 194px; position: absolute" Text="简介"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 168px; top: 279px; position: absolute; height: 16px; right: 755px;" Text="编号"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 146px; top: 325px; position: absolute" Text="管理员密码"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 688px; top: 306px; position: absolute; height: 21px;" Text="添加医院" />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 268px; top: 61px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 267px; top: 104px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 264px; top: 194px; position: absolute; height: 43px; width: 358px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 266px; top: 282px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 263px; top: 324px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 266px; top: 156px; position: absolute"></asp:TextBox>
    </form>
</body>
</html>
