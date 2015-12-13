<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_edit.aspx.cs" Inherits="hospital_register.doctor_edit" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 200px; top: 116px; position: absolute; height: 115px; width: 486px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="患者" HeaderText="患者" SortExpression="患者" />
                <asp:BoundField DataField="科室" HeaderText="科室" SortExpression="科室" />
                <asp:BoundField DataField="医院" HeaderText="医院" SortExpression="医院" />
                <asp:BoundField DataField="医生" HeaderText="医生" SortExpression="医生" />
                <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [表1]"></asp:SqlDataSource>
    </form>
</body>
</html>
