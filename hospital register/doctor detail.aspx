<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="doctor detail.aspx.cs" Inherits="hospital_register.doctor_detail" %>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="医生详细信息" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
        <div>
    
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" style="z-index: 1; left: 318px; top: 280px; position: absolute; height: 24px; width: 80px" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 406px; top: 283px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 467px; top: 284px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 318px; top: 330px; position: absolute" Text="联系方式："></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 407px; top: 327px; position: absolute; height: 18px; width: 99px;" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 332px; top: 368px; position: absolute; height: 15px" Text="擅长："></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 405px; top: 367px; position: absolute; height: 49px; width: 441px;" Text="Label"></asp:Label>

       
        <table class="auto-style8">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    
                    
                <a class="img" href="register.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCP_1')">
        <img src="http://img.guahao.cn/images/image140//expert/3b0c9fa4-64c2-4919-b556-4e412c4623f5/b50d718a-ddcc-4954-b492-54d69c5adc41.jpg?timestamp=1431496027786" alt="朱国行" onerror="this.src='http://img.guahao.cn/img/character/doc-unknow.png?_=20121223';"/> </a>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 308px; top: 447px; position: absolute; width: 100px; height: 25px;" Text="我要预约" ForeColor="#2B9BD4" />
                </td>
            </tr>
        </table>
        

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