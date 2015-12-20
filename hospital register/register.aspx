<%@ Page Language="C#"MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hospital_register.register" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="预约" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
   
    </div>
        <p>
             <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>

            
         
             <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 289px; top: 273px; position: absolute; height: 19px" Text="主治医师：" Font-Size="Large"></asp:Label>
             <asp:Label ID="Label2" runat="server" style="z-index: 1; top: 274px; position: absolute; height: 15px; width: 103px; left: 375px;" Text="Label" Font-Size="Large"></asp:Label>
        </p>
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 175px; top: 329px; position: absolute; height: 209px; width: 324px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="Red" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 532px; top: 415px; position: absolute; height: 30px; width: 100px;" Text="预约" Font-Size="Large" />
        <asp:Label ID="Label3" runat="server" ForeColor="Red" style="z-index: 1; left: 653px; top: 419px; position: absolute; width: 253px; margin-bottom: 2px;" Text="您不能完成预约，请先登录" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 180px; top: 274px; position: absolute" Text="无任何信息" Visible="False" Font-Size="Large"></asp:Label>
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>

