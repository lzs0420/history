<%-- 
    Document   : staffinsert_query
    Created on : 2013-12-7, 16:30:57
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<jsp:useBean id="staffinsert" scope="session" class="com.jsp.staff" />
<jsp:useBean id="staffinsert_query" scope="session" class="com.jsp.staff"/>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>新增员工</title>
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
             staffinsert_query.getConn("warehouse_m", "root", "123456");
             sql="insert into staff (work_id,name,age,sex,job,password)";
             sql+="values('"+staffinsert.getWork_id()+"','"+name+"',"+i+",'"+sex+"','"+job+"','"+password+"')";
             staffinsert_query.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=stafflook.jsp'>");
        %>
    </body>
</html>