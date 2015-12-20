<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="personal data.aspx.cs" Inherits="hospital_register.personal_data" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="个人信息" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 132px; top: 306px; position: absolute" Text="姓名：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 214px; top: 307px; position: absolute; height: 17px; width: 73px; right: 546px" Text="Label" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 335px; top: 308px; position: absolute" Text="性别："></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 388px; top: 309px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 486px; top: 308px; position: absolute" Text="年龄:" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 572px; top: 309px; position: absolute" Text="Label" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 131px; position: absolute; top: 275px; height: 23px" Text="身份证号：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 214px; top: 275px; position: absolute; width: 217px" Text="Label" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 130px; top: 344px; position: absolute" Text="住址：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 571px; top: 279px; position: absolute" Text="Label" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 212px; top: 344px; position: absolute; height: 15px; width: 580px" Text="Label" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 485px; top: 278px; position: absolute" Text="信用等级：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 128px; top: 381px; position: absolute" Text="已有预约" Font-Size="Large"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 852px; top: 315px; position: absolute" Text="取消挂号" />
        <asp:Label ID="Label15" runat="server" ForeColor="Red" style="z-index: 1; left: 296px; top: 617px; position: absolute; width: 260px; height: 13px;" Text="您没有任何就诊记录"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="z-index: 1; left: 127px; top: 582px; position: absolute; height: 115px; width: 654px">
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
        <asp:Label ID="Label16" runat="server" ForeColor="Red" style="z-index: 1; left: 295px; top: 460px; position: absolute; width: 223px" Text="您没有任何预约记录"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="patient_id,doctor_id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 128px; top: 414px; position: absolute; height: 115px; width: 782px">
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
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 127px; top: 547px; position: absolute; height: 16px; right: 634px;" Text="就诊记录" Font-Size="Large"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 405px; top: 161px; position: absolute" TextMode="DateTime" Visible="False"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 698px; top: 250px; position: absolute; height: 23px; width: 78px;" Text="返回" />
        <div>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br />
            <br />
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
