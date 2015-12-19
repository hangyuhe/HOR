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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 239px; top: 124px; position: absolute; height: 115px; width: 436px" AutoGenerateSelectButton="True">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
            </Columns>
            <SelectedRowStyle BackColor="#99FF66" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [id], [name], [credit] FROM [user]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 189px; top: 275px; position: absolute" Text="重新输入信用等级"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 410px; top: 277px; position: absolute">
            <asp:ListItem Value="0"></asp:ListItem>
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
            <asp:ListItem Value="6"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 643px; top: 289px; position: absolute" Text="修改" />
    </form>
</body>
</html>
