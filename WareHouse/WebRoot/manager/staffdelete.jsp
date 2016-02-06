<%-- 
    Document   : staffdelete
    Created on : 2013-12-7, 17:38:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean  id="staffdelete" scope="session" class="com.jsp.staff" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>删除员工信息</title>
    </head>
    <%! String sql,url,work_id;%>
    <body>
        <%
             work_id=(String)request.getParameter("work_id");
             staffdelete.getConn("warehouse_m", "root", "123456");
             sql="delete from staff where work_id="+work_id;
             staffdelete.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在删除信息，请稍后......</font><meta http-equiv='refresh' content='2;url=stafflook.jsp'>");
        %>
    </body>
</html>

