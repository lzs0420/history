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
</head>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
<body>
    <%
       user user1=(user)session.getAttribute("user");
       String id=(String)user1.getUserID();
       teacherCommentService tcs=new teacherCommentService();
       List l=(List)tcs.getStu(id);
    %>
    <form method="post" action="teacherCommentServlet">
    <table align="center">
       <tr><th>课程ID</th><th>老师ID</th><th>时间</th><th>评分</th><th>留言</th></tr>
       <%
            for(int i=0;i<l.size();i++){
            	teacherComment tc=(teacherComment)l.get(i);
        %>
        <tr><input type="hidden" name="studentID" value="<%=tc.getStudentID() %>"/>
            <td><%=tc.getCourseID() %><input type="hidden" name="courseID" value="<%=tc.getCourseID() %>"/></td>
            <td><%=tc.getTeacherID() %><input type="hidden" name="teacherID" value="<%=tc.getTeacherID() %>"/></td>
            <td><%=tc.getTime() %></td><td><input type="text" name="score" value="<%=tc.getScore() %>"/></td>
            <td><input type="text" name="comment" value="<%=tc.getComment() %>"></td></tr>
        <%} %>
        <tr><td><input type="reset" value="重置"/></td><td><input type="submit" value="留言"/></td></tr>
    </table>
    </form>
</body>
</html>