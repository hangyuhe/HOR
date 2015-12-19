<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hospital_register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    </div>
        <p>
             <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>

            
         
             <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 311px; top: 63px; position: absolute; height: 19px" Text="主治医师："></asp:Label>
             <asp:Label ID="Label2" runat="server" style="z-index: 1; top: 62px; position: absolute; height: 15px; width: 103px; left: 400px;" Text="Label"></asp:Label>
        </p>
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 134px; top: 121px; position: absolute; height: 164px; width: 273px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="Red" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 490px; top: 202px; position: absolute; height: 28px" Text="预约" />
        <asp:Label ID="Label3" runat="server" ForeColor="Red" style="z-index: 1; left: 558px; top: 205px; position: absolute; width: 253px" Text="您不能完成预约，请先登录"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 122px; top: 65px; position: absolute" Text="无任何信息" Visible="False"></asp:Label>
    </form>
</body>
</html>
