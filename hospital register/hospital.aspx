<%@ Page Language="C#" MasterPageFile="~/hospital_register.Master" AutoEventWireup="true" CodeBehind="hospital.aspx.cs" Inherits="hospital_register.hospital" %>

    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder1">
        
        <br />
        <table class="auto-style8" style="right: 0px; left: 0px; clip: rect(auto, 0px, auto, 0px)" width = "100%">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="Label_page_signin_name" runat="server" Text="医院详细信息" Font-Bold="False" Font-Names="华文仿宋" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:content>
    <asp:content runat="server" ContentPlaceHolderID ="ContentPlaceHolder2">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 189px; top: 274px; position: absolute; width: 358px" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 188px; top: 311px; position: absolute" Text="地址：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 237px; top: 312px; position: absolute" Text="北京市海淀区复兴路28号" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 188px; top: 344px; position: absolute" Text="电话：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 239px; top: 344px; position: absolute; height: 18px;" Text="010-68182255" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 189px; top: 372px; position: absolute; right: 585px" Text="简介：" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 237px; top: 373px; position: absolute; height: 65px;" Text=" 解放军总医院是全军规模最大的综合性医院，集医疗、保健、教学、科研于一体，是国家重要保健基地之一，负责中央、军委和总部的医疗保..." Font-Size="Large"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 188px; top: 450px; position: absolute; width: 92px; height: 1px;" Text="按科室挂号" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 290px; top: 448px; position: absolute" Font-Size="Large">
            <asp:ListItem>儿科</asp:ListItem>
            <asp:ListItem>外科</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 427px; top: 448px; position: absolute; width: 100px; height: 25px;" Text="Button" />
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
     <%--    <%  int i,j;
            string h = @"外科";
            for  (i=0;i<3;i++)
            {%>
           <%      for (j=3*i;j<3*i+3;j++)
            {%>
                <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>
                  <a href="doctor.aspx?department_name=<%=h%>" target="_blank" ><%=h%></a>
               
         <%    }%>
               
             <br />  
               
         <% }%>  --%>   
        
        
          <%
                   int f;
                   for (f=0;f<department_num;f++)
                       {%>
                       <span style="font-size:32px;">&nbsp;&nbsp;&nbsp;</span>
                  <a href="doctor.aspx?department_name=<%=x[f]%>" target="_blank" ><%=x[f]%></a>
                    <%   }
                   
                    %> 
    </asp:content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>