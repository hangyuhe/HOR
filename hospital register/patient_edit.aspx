<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient_edit.aspx.cs" Inherits="hospital_register.patient_edit" %>

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
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 66px; top: 101px; position: absolute" Text="今日就诊情况"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 158px; top: 359px; position: absolute; height: 121px; width: 409px" TextMode="MultiLine"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="doctor_id,patient_id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 57px; top: 156px; position: absolute; height: 157px; width: 870px">
            <Columns>
                <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" SortExpression="doctor_id" ReadOnly="True" />
                <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name" />
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" SortExpression="patient_id" ReadOnly="True" />
                <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail" />
            </Columns>
            <SelectedRowStyle BackColor="#00CC00" BorderColor="Black" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [department_name], [doctor_id], [doctor_name], [patient_id], [detail] FROM [record] WHERE (([time] = @time) AND ([hospital_name] = @hospital_name)) ORDER BY [department_name]">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="time" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label1" Name="hospital_name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 635px; top: 53px; position: absolute; height: 15px; width: 101px" Text="Label" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 367px; top: 56px; position: absolute" TextMode="Date" Visible="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 814px; top: 338px; position: absolute" Text="标记爽约" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 614px; top: 428px; position: absolute; height: 21px" Text="添加病例" />
        </p>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 66px; top: 346px; position: absolute" Text="填写病例"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 428px; top: 107px; position: absolute" Text="爽约" Visible="False"></asp:Label>
    </form>
</body>
</html>
