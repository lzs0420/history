<%-- 
    Document   : information
    Created on : 2013-12-14, 19:02:04
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="information" scope="session" class="com.jsp.staff" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息</title>
    </head>
    <body>
     <% 
            String temp=(String)session.getAttribute("job");
            temp="../public/sidebar_"+temp+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
        <%! String sql,work_id;%>
        <%
            work_id=(String)session.getAttribute("work_id");
             information.getConn("warehouse_m", "root","123456");
	   sql="select * from staff where work_id ="+work_id;
	   ResultSet  rs=information.executeQuery1(sql);
           rs.next();
        %>
        <h1 align='center'>个人信息</h1>
        <table width=75% border="1" cellspacing="1" cellpadding="1" align="center">
            <tr><td width=8%>姓名</td>
                <td width=15%><%=rs.getString(2)%></td>
                <td width=7%>职工号</td>
                <td width=15%><%=work_id%></td>
                <td rowspan="3" width=30%></td>
            </tr>
            <tr><td width=8%>年龄</td>
                 <td width=15%><%=rs.getInt(3)%></td>
                 <td width=7%>性别</td>
                <td width=15%><%=rs.getString(4)%></td>
            </tr>
            <tr>
                <td width=8%>职务</td>
                <td width=37%><%=rs.getString(5)%></td>
            </tr>
            <tr>
                <td width=15%>密保问题</td>
                <td width=60%><%=rs.getString(6)%></td>
            </tr>
        </table>
    </body>
</html>
