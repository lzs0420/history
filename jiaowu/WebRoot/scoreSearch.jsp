<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.bean.course" %>
    <%@page import="com.use.studentCourseService" %>
    <%@page import="com.bean.studentCourse" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
<body>
    <%
       user user1=(user)session.getAttribute("user");
       String id=user1.getUserID();
       studentCourseService scs=new studentCourseService();
       List l;
       l=scs.getStu(id);
    %>
    <table>
        <tr><th>课程ID</th><th>成绩</th><th>学期</th><th> 附</th></tr>
        <%
            for(int i=0;i<l.size();i++){
            	studentCourse sc=(studentCourse)l.get(i);
        %>
        <tr><td><%=sc.getCourseID() %></td><td><%=sc.getScore() %></td><td><%=sc.getSemester() %></td>
        <% if(sc.getState()==1){%>
        <td>本学期</td>
        <%}else{ %>
        <td>已学完</td>
        <%} %>
        </tr>
        <%} %>
    </table>
</body>
</html>