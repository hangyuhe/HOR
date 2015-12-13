<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_add.aspx.cs" Inherits="hospital_register.doctor_add" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 181px; top: 51px; position: absolute" Text="编号"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 180px; top: 90px; position: absolute" Text="姓名"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 178px; top: 130px; position: absolute; height: 15px" Text="性别"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 177px; top: 173px; position: absolute; height: 14px" Text="年龄"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 176px; top: 214px; position: absolute" Text="电话"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 175px; top: 255px; position: absolute" Text="职称"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 167px; top: 293px; position: absolute; height: 16px" Text="所属科室"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 251px; top: 50px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 250px; top: 91px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 253px; top: 127px; position: absolute; height: 22px">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 248px; top: 171px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 245px; top: 212px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 249px; top: 250px; position: absolute">
            <asp:ListItem>主治医师</asp:ListItem>
            <asp:ListItem>副主治医师</asp:ListItem>
            <asp:ListItem>普通医师</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="科室" DataValueField="id" style="z-index: 1; left: 250px; top: 294px; position: absolute">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [表1]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 523px; top: 293px; position: absolute" Text="添加" />
    </form>
</body>
</html>
