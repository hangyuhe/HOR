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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 18px; top: 111px; position: absolute; height: 151px; width: 1107px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
                <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
                <asp:BoundField DataField="department_id" HeaderText="department_id" SortExpression="department_id" />
                <asp:BoundField DataField="start_time" HeaderText="start_time" SortExpression="start_time" />
                <asp:BoundField DataField="end_time" HeaderText="end_time" SortExpression="end_time" />
                <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [id], [name], [sex], [age], [telephone], [level], [department_id], [start_time], [end_time], [skill] FROM [doctor] WHERE ([hospital_id] = @hospital_id) ORDER BY [department_id]" DeleteCommand="DELETE FROM [doctor] WHERE [id] = @id" InsertCommand="INSERT INTO [doctor] ([id], [name], [sex], [age], [telephone], [level], [department_id], [start_time], [end_time], [skill]) VALUES (@id, @name, @sex, @age, @telephone, @level, @department_id, @start_time, @end_time, @skill)" UpdateCommand="UPDATE [doctor] SET [name] = @name, [sex] = @sex, [age] = @age, [telephone] = @telephone, [level] = @level, [department_id] = @department_id, [start_time] = @start_time, [end_time] = @end_time, [skill] = @skill WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="level" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="start_time" />
                <asp:Parameter DbType="Date" Name="end_time" />
                <asp:Parameter Name="skill" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="hospital_id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="level" Type="String" />
                <asp:Parameter Name="department_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="start_time" />
                <asp:Parameter DbType="Date" Name="end_time" />
                <asp:Parameter Name="skill" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 430px; top: 53px; position: absolute" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>
