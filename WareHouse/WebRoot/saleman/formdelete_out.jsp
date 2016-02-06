<%-- 
    Document   : formdelete_out
    Created on : 2013-12-6, 22:13:11
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean  id="formdelete_out" scope="session" class="com.jsp.ware_out" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>删除出库单</title>
    </head>
    <%! String sql,url,out_id;%>
    <body>
        <%
             out_id=(String)request.getParameter("out_id");
             formdelete_out.getConn("warehouse_m", "root", "123456");
             sql="delete from ware_out where out_id="+out_id;
             formdelete_out.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在删除信息，请稍后......</font><meta http-equiv='refresh' content='2;url=formlook_out.jsp'>");
        %>
    </body>
</html>
