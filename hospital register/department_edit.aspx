<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="department_edit.aspx.cs" Inherits="hospital_register.department_edit" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" style="z-index: 1; left: 94px; top: 125px; position: absolute; height: 115px; width: 718px" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="introduction" HeaderText="introduction" SortExpression="introduction" />
                <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" DeleteCommand="DELETE FROM [department] WHERE [id] = @id" InsertCommand="INSERT INTO [department] ([id], [name], [introduction], [telephone]) VALUES (@id, @name, @introduction, @telephone)" SelectCommand="SELECT [id], [name], [introduction], [telephone] FROM [department] WHERE ([hospital_id] = @hospital_id)" UpdateCommand="UPDATE [department] SET [name] = @name, [introduction] = @introduction, [telephone] = @telephone WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="introduction" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="hospital_id" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="introduction" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 298px; top: 279px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 614px; top: 394px; position: absolute; right: 263px" Text="增加科室" OnClick="Button1_Click" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 219px; top: 280px; position: absolute" Text="科室id"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 207px; top: 317px; position: absolute; height: 16px; width: 85px" Text="科室名称"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 297px; top: 317px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 209px; top: 373px; position: absolute; height: 17px" Text="科室简介"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 210px; top: 449px; position: absolute; height: 16px" Text="科室电话"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 297px; top: 348px; position: absolute; height: 71px; width: 210px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 298px; top: 449px; position: absolute"></asp:TextBox>
    </form>
</body>
</html>
