<%-- 
    Document   : formdelete_in
    Created on : 2013-12-6, 23:57:54
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean  id="formdelete_in" scope="session" class="com.jsp.ware_in" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>删除入库单</title>
    </head>
    <%! String sql,url,in_id;%>
    <body>
        <%
             in_id=(String)request.getParameter("in_id");
             formdelete_in.getConn("warehouse_m", "root", "123456");
             sql="delete from ware_in where in_id="+in_id;
             formdelete_in.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在删除信息，请稍后......</font><meta http-equiv='refresh' content='2;url=formlook_in.jsp'>");
        %>
    </body>
</html>
