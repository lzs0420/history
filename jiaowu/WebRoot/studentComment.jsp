<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.bean.teacherComment" %>
    <%@page import="com.use.teacherCommentService" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
</head>
<body>
    <%
       user user1=(user)session.getAttribute("user");
       String id=(String)user1.getUserID();
       teacherCommentService tcs=new teacherCommentService();
       List l=(List)tcs.getTea(id);
    %>
    <table align="center">
       <tr><th>课程ID</th><th>学生ID</th><th>时间</th><th>评分</th><th>留言</th></tr>
       <%
            for(int i=0;i<l.size();i++){
            	teacherComment tc=(teacherComment)l.get(i);
        %>
        <tr><input type="hidden" name="studentID" value="<%=tc.getStudentID() %>"/>
            <td><%=tc.getCourseID() %><input type="hidden" name="courseID" value="<%=tc.getCourseID() %>"/></td>
            <td><%=tc.getStudentID() %><input type="hidden" name="teacherID" value="<%=tc.getStudentID() %>"/></td>
            <td><%=tc.getTime() %></td><td><%=tc.getScore() %></td>
            <td><%=tc.getComment() %></td></tr>
        <%} %>
    </table>
</body>
</html>