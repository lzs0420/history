<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.use.studentCourseService" %>
    <%@page import="com.bean.studentCourse" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
</head>
<body>
      <%
        String id=request.getParameter("id");
      String name=request.getParameter("name");
        studentCourseService scs=new studentCourseService();
        List l=(List)scs.getCou(id);
     %>
    
     <table align="center">
            <tr><td>学生ID</td><td>分数</td><td>学期</td></tr>
            <%
            for(int i=0;i<l.size();i++){
            	studentCourse sc=(studentCourse)l.get(i);
        %>
        <tr>
            <td><%=sc.getStudentID() %></td>
            <td><%=sc.getScore() %></td>
            <td><%=sc.getSemester() %></td>
           </tr>
        <%} %>
        </table>
</body>
</html>