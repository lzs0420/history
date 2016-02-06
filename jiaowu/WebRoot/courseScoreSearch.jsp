<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.bean.user" %>
    <%@page import="com.bean.course" %>
    <%@page import="com.use.teacherCourseService" %>
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
        teacherCourseService tcs=new teacherCourseService();
        List l=(List)tcs.getAll(id);
     %>
      <table align="center">
            <tr><td>课程ID</td><td>课程名</td><td>课程ID</td><td>课程名</td></tr>
            <%int i=0;course cou1=(course)l.get(0);%>
            <tr><td><%=cou1.getCourseID() %></td><td><a href="courseScoreSearch1.jsp?id=<%=cou1.getCourseID() %>"><%=cou1.getCourseName()%></a></td>
            <%for(i=1;i<=l.size()/2;i++){
            	cou1=(course)l.get(2*i-1);
            	%>
            	<td><%=cou1.getCourseID() %></td><td><a href="courseScoreSearch1.jsp?id=<%=cou1.getCourseID() %>"><%=cou1.getCourseName() %></a></td></tr>
            	<%if(2*i==l.size()){}else {cou1=(course)l.get(2*i);%>
            	<tr><td><%=cou1.getCourseID() %></td><td><a href="courseScoreSearch1.jsp?id=<%=cou1.getCourseID() %>"><%=cou1.getCourseName() %></a></td>
                
             <%}}if((2*i-2)==l.size()){%>
             </tr>
             <%} %>
        </table>
</body>
</html>