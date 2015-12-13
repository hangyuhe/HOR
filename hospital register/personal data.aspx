<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personal data.aspx.cs" Inherits="hospital_register.personal_data" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 167px; top: 67px; position: absolute" Text="姓名："></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 229px; top: 66px; position: absolute; height: 17px; width: 73px; right: 628px" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 312px; top: 66px; position: absolute" Text="性别："></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 369px; top: 64px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 186px; top: 104px; position: absolute" Text="年龄:："></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 245px; top: 103px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 114px; position: absolute; top: 32px; height: 23px" Text="身份证号："></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 207px; top: 32px; position: absolute; width: 217px" Text="Label"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 330px; top: 104px; position: absolute" Text="住址："></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 578px; top: 35px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 384px; top: 103px; position: absolute; height: 15px; width: 580px" Text="Label"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 486px; top: 36px; position: absolute" Text="信用等级："></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 102px; top: 159px; position: absolute" Text="已有预约"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 225px; top: 206px; position: absolute; height: 115px; width: 489px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="患者" HeaderText="患者" SortExpression="患者" />
                <asp:BoundField DataField="科室" HeaderText="科室" SortExpression="科室" />
                <asp:BoundField DataField="医院" HeaderText="医院" SortExpression="医院" />
                <asp:BoundField DataField="医生" HeaderText="医生" SortExpression="医生" />
                <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
            </Columns>
            <RowStyle Width="10px" />
            <SelectedRowStyle BackColor="Lime" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [表1]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 778px; top: 303px; position: absolute" Text="取消挂号" />
    </form>
</body>
</html>
