<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_add.aspx.cs" Inherits="hospital_register.doctor_add" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 181px; top: 51px; position: absolute" Text="编号"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 180px; top: 90px; position: absolute" Text="姓名"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 178px; top: 130px; position: absolute; height: 15px" Text="性别"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 177px; top: 173px; position: absolute; height: 14px" Text="年龄"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 176px; top: 214px; position: absolute" Text="电话"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 175px; top: 255px; position: absolute" Text="职称"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 167px; top: 293px; position: absolute; height: 16px" Text="所属科室"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 251px; top: 50px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 250px; top: 91px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 253px; top: 127px; position: absolute; height: 22px">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 248px; top: 171px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 245px; top: 212px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 249px; top: 250px; position: absolute">
            <asp:ListItem>医师</asp:ListItem>
            <asp:ListItem>主治医师</asp:ListItem>
            <asp:ListItem>副主任医师</asp:ListItem>
            <asp:ListItem>主任医师</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 171px; top: 334px; position: absolute" Text="擅长"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 248px; top: 328px; position: absolute; height: 19px; width: 286px" TextMode="MultiLine"></asp:TextBox>
        <p>
            <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 128px; top: 375px; position: absolute; height: 18px" Text="可挂号开始时间"></asp:Label>
        </p>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 251px; top: 372px; position: absolute" TextMode="Date"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 126px; top: 413px; position: absolute" Text="可挂号终止时间"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; top: 414px; position: absolute; left: 250px" TextMode="Date"></asp:TextBox>
        <p>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 652px; top: 369px; position: absolute" Text="添加" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 563px; top: 106px; position: absolute" Text="Label" Visible="False"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id" style="z-index: 1; left: 249px; top: 291px; position: absolute">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_AppointmentConnectionString %>" SelectCommand="SELECT [id] FROM [department] WHERE ([hospital_id] = @hospital_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label11" Name="hospital_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
