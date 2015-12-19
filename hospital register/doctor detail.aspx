<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor detail.aspx.cs" Inherits="hospital_register.doctor_detail" %>

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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" style="z-index: 1; left: 360px; top: 55px; position: absolute; height: 20px; width: 80px" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 487px; top: 59px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 565px; top: 58px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 407px; top: 94px; position: absolute" Text="联系方式："></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 499px; top: 92px; position: absolute; height: 18px; width: 99px;" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 390px; top: 123px; position: absolute; height: 15px" Text="擅长："></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 441px; top: 125px; position: absolute; height: 49px; width: 441px;" Text="Label"></asp:Label>

        <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>

                <a class="img" href="register.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCP_1')">
<img src="http://img.guahao.cn/images/image140//expert/3b0c9fa4-64c2-4919-b556-4e412c4623f5/b50d718a-ddcc-4954-b492-54d69c5adc41.jpg?timestamp=1431496027786" alt="朱国行" onerror="this.src='http://img.guahao.cn/img/character/doc-unknow.png?_=20121223';"> </a>
        <asp:Button ID="Button1" runat="server" BorderStyle="Groove" OnClick="Button1_Click" style="z-index: 1; left: 399px; top: 202px; position: absolute" Text="我要预约" />
        


    </form>
</body>
</html>
