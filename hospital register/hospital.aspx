<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital.aspx.cs" Inherits="hospital_register.hospital" %>

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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 190px; top: 57px; position: absolute; width: 111px" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 148px; top: 86px; position: absolute" Text="地址："></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 219px; top: 86px; position: absolute" Text="北京市海淀区复兴路28号"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 147px; top: 125px; position: absolute" Text="电话："></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 221px; top: 126px; position: absolute" Text="010-68182255"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 147px; top: 174px; position: absolute; right: 735px" Text="简介："></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 215px; top: 164px; position: absolute" Text=" 解放军总医院是全军规模最大的综合性医院，集医疗、保健、教学、科研于一体，是国家重要保健基地之一，负责中央、军委和总部的医疗保..."></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 88px; top: 243px; position: absolute; width: 92px" Text="按科室挂号"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 365px; top: 279px; position: absolute">
            <asp:ListItem>儿科</asp:ListItem>
            <asp:ListItem>外科</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 604px; top: 255px; position: absolute" Text="Button" />
        </p>


        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>

        <br />
         <br />
         <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> 
         <%  int i,j;
            string h = @"外科";
            for  (i=0;i<3;i++)
            {%>
           <%      for (j=3*i;j<3*i+3;j++)
            {%>
                <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>
                  <a href="doctor.aspx?department_name=<%=h%>" target="_blank" onmousedown="return _smartlog(this,'DOCN_1')"><%=h%></a>
               
         <%    }%>
               
             <br />  
               
         <% }%>      

    </form>
</body>
</html>
