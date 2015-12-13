<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient_level.aspx.cs" Inherits="hospital_register.patient_level" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 334px; top: 124px; position: absolute; height: 115px; width: 199px">
            <Columns>
                <asp:BoundField DataField="患者" HeaderText="患者" SortExpression="患者" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [患者], [id] FROM [表1]"></asp:SqlDataSource>
    </form>
</body>
</html>
