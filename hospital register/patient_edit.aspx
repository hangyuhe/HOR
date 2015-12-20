<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="~/hospital_register.Master" CodeBehind="patient_edit.aspx.cs" Inherits="hospital_register.patient_edit" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="病历与爽约" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 124px; top: 315px; position: absolute" Text="今日就诊情况" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 131px; top: 565px; position: absolute; height: 121px; width: 468px; margin-top: 10px;" TextMode="MultiLine" BorderStyle="Groove"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="doctor_id,patient_id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 129px; top: 346px; position: absolute; height: 157px; width: 870px">
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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 618px; top: 275px; position: absolute; height: 15px; width: 101px" Text="Label" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 353px; top: 272px; position: absolute" TextMode="Date" Visible="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 646px; top: 666px; position: absolute; height: 29px; width: 94px;" Text="添加病例" ForeColor="#1892E3" />
        </p>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 131px; top: 540px; position: absolute" Text="填写病例" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 546px; top: 273px; position: absolute; height: 7px;" Text="爽约" Visible="False"></asp:Label>
        <div>
            <br /><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 731px; top: 303px; position: absolute; width: 85px; height: 26px; margin-top: 4px;" Text="标记爽约" ForeColor="#1892E3" />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>
