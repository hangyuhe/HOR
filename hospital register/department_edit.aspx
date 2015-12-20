<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="department_edit.aspx.cs" Inherits="hospital_register.department_edit" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="编辑科室信息" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
        <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" style="z-index: 1; left: 94px; top: 625px; position: absolute; height: 115px; width: 718px" DataKeyNames="id" DataSourceID="SqlDataSource1">
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
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 300px; top: 280px; position: absolute; width: 200px; height: 25px;" BorderStyle="Groove" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 300px; top: 505px; position: absolute; right: 333px; height: 25px;" Text="添加科室" OnClick="Button1_Click" Width="200px" ForeColor="#2B9BD6"/>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 190px; top: 280px; position: absolute" Text="科室编号" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 190px; top: 320px; position: absolute" Text="科室名称" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 300px; top: 320px; position: absolute; width: 200px; height: 25px;" BorderStyle="Groove" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 190px; top: 360px; position: absolute;" Text="科室简介" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 190px; top: 450px; position: absolute;" Text="科室电话" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 300px; top: 360px; position: absolute; height: 75px; width: 300px" TextMode="MultiLine" BorderStyle="Groove"  BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 300px; top: 450px; position: absolute;height:25px; width: 200px;" BorderStyle="Groove" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
    </asp:content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    .auto-style9 {
        width: 150px;
    }
    </style>
</asp:Content>
