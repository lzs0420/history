<%-- 
    Document   : formlook1_in_query
    Created on : 2013-12-7, 15:42:46
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="formlook1_in_query" scope="session" class="com.jsp.ware_in"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>正在处理</title>
    </head>
    <body>
        <%! String temp;%>
        <%
           temp=request.getParameter("in_id");
           formlook1_in_query.approve(temp);
        %>
        <h1 align="center"><font color=blue>正在处理信息，请稍后......</font></h1>
        <meta http-equiv="refresh" content="2;url=formlook_in1.jsp">
    </body>
</html>
