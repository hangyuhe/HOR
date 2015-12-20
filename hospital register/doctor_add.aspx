<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="doctor_add.aspx.cs" Inherits="hospital_register.doctor_add" %>


    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="添加医生" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 269px; top: 277px; position: absolute; bottom: 341px;" Text="编号" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 269px; top: 318px; position: absolute" Text="姓名" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 268px; top: 358px; position: absolute; height: 22px; right: 517px;" Text="性别" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 269px; top: 396px; position: absolute; height: 14px" Text="年龄" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 267px; top: 435px; position: absolute" Text="电话" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 268px; top: 476px; position: absolute; bottom: 276px;" Text="职称" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 227px; top: 509px; position: absolute; height: 16px; right: 509px; margin-top: 3px;" Text="所属科室" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 335px; top: 271px; position: absolute; width: 200px; height: 25px;" BorderStyle="Groove"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 335px; top: 315px; position: absolute; width: 200px; height: 25px;" BorderStyle="Groove"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 337px; top: 359px; position: absolute; height: 25px; width: 50px;">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 335px; top: 387px; position: absolute; width: 200px; height: 25px;" BorderStyle="Groove"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 336px; top: 432px; position: absolute; width: 200px; height: 25px; " BorderStyle="Groove"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 337px; top: 478px; position: absolute; width: 100px; height: 25px;">
            <asp:ListItem>医师</asp:ListItem>
            <asp:ListItem>主治医师</asp:ListItem>
            <asp:ListItem>副主任医师</asp:ListItem>
            <asp:ListItem>主任医师</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 275px; top: 553px; position: absolute; height: 4px; width: 53px;" Text="擅长" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 337px; top: 551px; position: absolute;height: 50px; width: 300px;" TextMode="MultiLine" BorderStyle="Groove"></asp:TextBox>
        <p>
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 152px; top: 627px; position: absolute; height: 18px; width: 169px;" Text="可挂号开始时间" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        </p>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 338px; top: 621px; position: absolute; width: 200px; height: 25px; " TextMode="Date" BorderStyle="Groove"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 152px; top: 670px; position: absolute" Text="可挂号终止时间" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; top: 666px; position: absolute;width: 200px; height: 25px; left: 338px"  TextMode="Date" BorderStyle="Groove"></asp:TextBox>
        <p>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 341px; top: 712px; position: absolute; width: 200px; height: 25px;" Text="添加" OnClick="Button1_Click" ForeColor="#1892E3" />
        </p>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 421px; top: 236px; position: absolute" Text="Label" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id" style="z-index: 1; left: 337px; top: 515px; position: absolute" Height="25px" Width="100px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [id] FROM [department] WHERE ([hospital_id] = @hospital_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label11" Name="hospital_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div>
            <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
            <br />
            <br />
              <br />
             <br />
              <br />
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