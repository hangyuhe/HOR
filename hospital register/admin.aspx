<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="hospital_register.admin" %>


    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="管理员首页" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
     <br /> <br /> <br /> <br /> 
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 170px; top: 300px; position: absolute" Text="你好，"></asp:Label>
        <br /> <br /> 
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 221px; top: 300px; position: absolute" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; top: 302px; position: absolute; height: 25px; left: 485px; width: 91px;" Text="退出登录" ForeColor="#1892E3" />
        <br /> <br /> <br />  <br /> <br /> <br /> 
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <a href="hospital_add.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加医院</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="hospital_delete.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">删除医院</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_level.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改用户信用等级</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_check.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">审核用户信息</a>

    </div>
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>
