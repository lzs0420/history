<%-- 
    Document   : waredelete
    Created on : 2013-12-7, 14:45:50
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean  id="waredelete" scope="session" class="com.jsp.ware" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>删除商品</title>
    </head>
    <%! String sql,url,ware_id;%>
    <body>
        <%
             ware_id=(String)request.getParameter("ware_id");
             waredelete.getConn("warehouse_m", "root", "123456");
             sql="delete from ware where ware_id="+ware_id;
             waredelete.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在删除信息，请稍后......</font><meta http-equiv='refresh' content='2;url=warelook1.jsp'>");
        %>
    </body>
</html>

