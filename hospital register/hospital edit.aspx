<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="hospital edit.aspx.cs" Inherits="hospital_register.hospital_edit" %>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="医院信息编辑" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
<asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="z-index: 1; left: 253px; top: 286px; position: absolute; height: 26px; width: 327px" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 157px; top: 339px; position: absolute; bottom: 247px;" Text="地址" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 212px; top: 336px; position: absolute; width: 325px; height: 25px;" BorderStyle="Groove"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 212px; top: 384px; position: absolute; width: 325px; height: 25px;" BorderStyle="Groove"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 156px; top: 389px; position: absolute; height: 18px" Text="电话" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 157px; top: 430px; position: absolute; height: 23px; width: 60px;" Text="简介" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 211px; top: 428px; position: absolute; height: 113px; width: 591px" TextMode="MultiLine" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged" BorderStyle="Groove"></asp:TextBox>

        <br /> <br /> <br /> 
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 625px; top: 304px; position: absolute; height: 25px;" Text="修改医院信息" OnClick="Button1_Click" ForeColor="#1892E3" />

    <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />  <br /> 
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <a href="department_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改科室信息</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="doctor_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改医生信息</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加病例</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="doctor_add.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加医生</a>

    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>

