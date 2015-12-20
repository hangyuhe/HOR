<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="hospital_add.aspx.cs" Inherits="hospital_register.hospital_add" %>
    
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="添加医院" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 193px; top: 275px; position: absolute; right: 544px;" Text="医院名称" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 240px; top: 314px; position: absolute" Text="地址" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 239px; top: 354px; position: absolute; height: 22px; width: 54px" Text="电话" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 240px; top: 393px; position: absolute" Text="简介" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 242px; top: 467px; position: absolute; height: 16px; right: 528px;" Text="编号" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 169px; top: 503px; position: absolute" Text="管理员密码" Font-Size="X-Large" ForeColor="#1892E3"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 304px; top: 551px; position: absolute; height: 25px; width: 200px;" Text="添加医院" ForeColor="#1892E3" />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 303px; top: 271px; position: absolute; width: 200px; height: 25px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 303px; top: 311px; position: absolute; width: 200px; height: 25px;"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 303px; top: 393px; position: absolute; height: 50px; width: 350px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 304px; top: 462px; position: absolute; width: 200px; height: 25px;"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 303px; top: 500px; position: absolute; width: 200px; height: 25px;"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 303px; top: 351px; position: absolute; width: 200px; height: 25px;"></asp:TextBox>

    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>