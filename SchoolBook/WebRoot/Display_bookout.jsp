<%-- 
    Document   : Display_bookout
    Created on : 2014-9-10, 10:33:30
    Author     : Administrator
--%>

<%@page import="com.bean.BookOut"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_bookout.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String boid,bodate,uname,uphone,bid,bname;
            int num;
            List l=(List)request.getAttribute("l");
            BookOut bo=new BookOut();
        %>
        <table align="center">
            <tr>
                <td>
                    <table border="1">
                        <tr>
                            <td class="boid"><strong>出库单号</strong></td>
                            <td class="bodate"><strong>出库日期</strong></td>
                            <td class="name"><strong>姓名</strong></td>
                            <td class="phone"><strong>电话号码</strong></td>
                            <td class="isbn"><strong>ISBN</strong></td>
                            <td class="bname"><strong>书名</strong></td>
                            <td class="num"><strong>数量</strong>                           </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
            <table border="1">
        <%
            for(int i=0;i<l.size();i++)
            {
                bo=(BookOut)l.get(i);
                boid=bo.getBoid();
                bodate=bo.getBodate();
                uname=bo.getUname();
                uphone=bo.getUphone();
                bid=bo.getBid();
                bname=bo.getBname();
                num=bo.getNum();
           %>
           <tr>
               <td class="boid"><%=boid%></td>
               <td class="bodate"><%=bodate%></td>
               <td class="name"><%=uname%></td>
               <td class="phone"><%=uphone%></td>
               <td class="isbn"><%=bid%></td>
               <td class="bname"><%=bname%></td>
               <td class="num"><%=num%></td>
           </tr>

<% }%>
            </td>
           </tr>
            </table>
    </body>
</html>
