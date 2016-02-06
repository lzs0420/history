<%-- 
    Document   : formlook_out1_query
    Created on : 2013-12-7, 15:18:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="formlook1_out_query" scope="session" class="com.jsp.ware_out"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>正在处理</title>
    </head>
    <body>
        <%! String temp;%>
        <%
           temp=request.getParameter("out_id");
           formlook1_out_query.approve(temp);
        %>
        <h1 align="center"><font color=blue>正在处理信息，请稍后......</font></h1>
        <meta http-equiv="refresh" content="2;url=formlook_out1.jsp">
    </body>
</html>
