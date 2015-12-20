
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/hospital_register.Master" CodeBehind="hospital_log in.aspx.cs" Inherits="hospital_register.log_in" %>

    
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="医院登录" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>   
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 215px; top: 303px; position: absolute; height: 21px; width: 77px" Text="用户名" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 235px; top: 350px; position: absolute; height: 26px" Text="密码" Font-Size="X-Large" ForeColor="#1892E4"></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 306px; top: 297px; position: absolute; height: 25px; width: 200px;" BorderStyle="Groove" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 306px; top: 347px; position: absolute; height: 25px; width: 200px;" TextMode="Password" BorderStyle="Groove" BorderColor="White"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 305px; top: 397px; position: absolute; height: 25px; width: 200px;" Text="登录" ForeColor="#2B9AD4" />
  
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>