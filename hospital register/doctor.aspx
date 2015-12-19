<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="hospital_register.doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Style="z-index: 1; left: 160px; top: 54px; position: absolute" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;
        </p>

        <dl>
            <dt>
              <%--  <%
                    string x = @"朱国行";

                    for (int i = 0; i < 3; i++)
                    {
                %>
                <span style="font-size: 32px;">&nbsp;&nbsp;&nbsp;</span>

                <a class="img" href="register.aspx" target="_blank" onmousedown="return _smartlog(this,'DOCP_1')">
                    <img src="http://img.guahao.cn/images/image140//expert/3b0c9fa4-64c2-4919-b556-4e412c4623f5/b50d718a-ddcc-4954-b492-54d69c5adc41.jpg?timestamp=1431496027786" alt="朱国行" onerror="this.src='http://img.guahao.cn/img/character/doc-unknow.png?_=20121223';">



                    <a href="doctor detail.aspx?doctor_name=<%=x%>" target="_blank"><%=x%></a>


                    <span>主治医师
                    教授
                    </span>

                </a>



                <%} %>--%>
                


                  <%
                  //  string x = @"朱国行";
                  
                    for (int i=0;i<doctor_num;i++){
               %>
                <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>

                <a class="img" href="register.aspx" target="_blank" >
<img src="http://img.guahao.cn/images/image140//expert/3b0c9fa4-64c2-4919-b556-4e412c4623f5/b50d718a-ddcc-4954-b492-54d69c5adc41.jpg?timestamp=1431496027786" alt="朱国行" onerror="this.src='http://img.guahao.cn/img/character/doc-unknow.png?_=20121223';">
        
           
                
                    <a href="doctor detail.aspx?doctor_id=<%=z[i]%> " target="_blank" ><%=x[i]%></a>
                
                
                <span>
                    <%=y[i] %>
                </span>

               </a>



                <%} %>



            </dt>
        </dl>



    </form>
</body>
</html>
