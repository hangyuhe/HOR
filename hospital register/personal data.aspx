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
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 186px; top: 104px; position: absolute" Text="年龄:"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 245px; top: 103px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 114px; position: absolute; top: 32px; height: 23px" Text="身份证号："></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 207px; top: 32px; position: absolute; width: 217px" Text="Label"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 330px; top: 104px; position: absolute" Text="住址："></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 578px; top: 35px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 384px; top: 103px; position: absolute; height: 15px; width: 580px" Text="Label"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 486px; top: 36px; position: absolute" Text="信用等级："></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 102px; top: 159px; position: absolute" Text="已有预约"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 852px; top: 315px; position: absolute" Text="取消挂号" />
        <asp:Label ID="Label15" runat="server" ForeColor="Red" style="z-index: 1; left: 326px; top: 508px; position: absolute; width: 260px" Text="您没有任何就诊记录"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="z-index: 1; left: 203px; top: 461px; position: absolute; height: 115px; width: 654px">
            <Columns>
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="hospital_name" HeaderText="hospital_name" SortExpression="hospital_name" />
                <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name" />
                <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [time], [hospital_name], [department_name], [doctor_name], [detail] FROM [record] WHERE (([patient_id] = @patient_id) AND ([time] &lt; @time)) ORDER BY [time]">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label8" Name="patient_id" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="time" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label16" runat="server" ForeColor="Red" style="z-index: 1; left: 364px; top: 279px; position: absolute; width: 223px" Text="您没有任何预约记录"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="patient_id,doctor_id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 55px; top: 204px; position: absolute; height: 115px; width: 782px">
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="patient_id" ReadOnly="True" SortExpression="patient_id" />
                <asp:BoundField DataField="hospital_name" HeaderText="hospital_name" SortExpression="hospital_name" />
                <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" ReadOnly="True" SortExpression="doctor_id" />
                <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name" />
                <asp:BoundField DataField="scheduled_time" HeaderText="scheduled_time" SortExpression="scheduled_time" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            </Columns>
            <SelectedRowStyle BackColor="#99FF66" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [patient_id], [hospital_name], [department_name], [doctor_id], [doctor_name], [scheduled_time], [cost] FROM [reservation] WHERE (([patient_id] = @patient_id) AND ([scheduled_time] &gt; @scheduled_time))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label8" Name="patient_id" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="scheduled_time" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 104px; top: 407px; position: absolute; height: 16px" Text="就诊记录"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 405px; top: 161px; position: absolute" TextMode="DateTime" Visible="False"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 683px; top: 95px; position: absolute; height: 21px" Text="返回" />
    </form>
</body>
</html>
