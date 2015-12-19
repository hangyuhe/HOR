<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main form.aspx.cs" Inherits="hospital_register.main_form" %>

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
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 312px; top: 49px; position: absolute; height: 16px" Text="你好，"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; top: 49px; position: absolute; left: 366px" Text="Label"></asp:Label>
            <asp:Button ID="Button2" runat="server" BorderStyle="Groove" OnClick="Button2_Click" style="z-index: 1; left: 468px; top: 40px; position: absolute" Text="退出登录" />
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BorderStyle="Solid" OnClick="Button1_Click" style="z-index: 1; left: 135px; top: 44px; position: absolute; height: 22px" Text="我要登录" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BorderStyle="Groove" OnClick="Button3_Click" style="z-index: 1; left: 316px; top: 85px; position: absolute; height: 21px; width: 89px" Text="管理我的信息" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 68px; top: 118px; position: absolute; right: 798px;" Text="医院一览"></asp:Label>
        </p>
   
        <br />
        
<br /><br /><br />
         <p>
        <%  int i,j;
            string h = @"男医院";
            for  (i=0;i<num/3;i++)
            {%>
           <%      for (j=3*i;j<3*i+1;j++)
            {%>
                <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>
                  <a href="hospital.aspx?hospital_name=<%=h%>" target="_blank" ><%=x[j]%></a>
               
         <%    }
               
               
               
               %>
        <br />
                
           
                
                    
        <%    } %>
              
          
               <%
                   int f;
                   for (f=0;f<num;f++)
                       {%>
                       <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>
                  <a href="hospital.aspx?hospital_name=<%=x[f]%>" target="_blank" ><%=x[f]%></a>
                    <%   }
                   
                    %>



            
    </p>



    </form>
    


</body>
</html>
