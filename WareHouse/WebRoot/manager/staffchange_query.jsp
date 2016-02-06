<%-- 
    Document   : staffchange_query
    Created on : 2013-12-7, 17:07:43
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<jsp:useBean id="staffchange" scope="session" class="com.jsp.staff" />
<jsp:useBean id="staffchange_query" scope="session" class="com.jsp.staff"/>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改员工信息</title>
    </head>
    <body>
        <%! String sql,name,age,sex,job,password;%>
        <%! int i;%>
        <%
             name=request.getParameter("name");
             age=request.getParameter("age");
             i=Integer.parseInt(age);
             sex=request.getParameter("sex");
             job=request.getParameter("job");
             password=request.getParameter("password");
             staffchange_query.getConn("warehouse_m", "root", "123456");
             sql="update staff set name='"+name+"',age="+i+",sex='"+sex+"',job='"+job+"',password='"+password+"' where work_id="+staffchange.getWork_id();
             staffchange_query.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=stafflook.jsp'>");
        %>
    </body>
</html>
