<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital edit.aspx.cs" Inherits="hospital_register.hospital_edit" %>

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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="z-index: 1; left: 203px; top: 34px; position: absolute; height: 26px; width: 327px" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 128px; top: 81px; position: absolute" Text="地址："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 195px; top: 79px; position: absolute; width: 325px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 195px; top: 130px; position: absolute; width: 325px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 125px; top: 126px; position: absolute; height: 18px" Text="电话："></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 126px; top: 174px; position: absolute" Text="简介："></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 193px; top: 179px; position: absolute; height: 113px; width: 591px" TextMode="MultiLine" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 650px; top: 110px; position: absolute; height: 20px;" Text="修改医院信息" OnClick="Button1_Click" />

        <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />  <br /> <br /> <br /> 
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

          <a href="department_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改科室信息</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="doctor_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">修改医生信息</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="patient_edit.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加病例</a>
        &nbsp&nbsp&nbsp&nbsp
        <a href="doctor_add.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')">添加医生</a>

    </form>
</body>
</html>
