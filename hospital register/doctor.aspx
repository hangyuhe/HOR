<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="hospital_register.doctor" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="医生" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
        <p>
            <asp:Label ID="Label1" runat="server" Style="z-index: 1; left: 117px; top: 292px; position: absolute" Text="Label"></asp:Label>
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
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>

