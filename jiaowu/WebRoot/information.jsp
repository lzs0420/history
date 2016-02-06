<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.use.studentService" %>
    <%@page import="com.bean.student" %>
    <%@page import="com.use.teacherService" %>
    <%@page import="com.bean.teacher" %>
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
         user user1=(user)session.getAttribute("user");
         String userID=user1.getUserID();
         String job=user1.getJob();
         if(job.equals("Student")){
         studentService ss=new studentService();
         student stu=ss.getOne(userID);
      %>
      <table border="1" width="100%" height="600px" >
          <tr align="center"> <td>学号</td><td><%=stu.getStudentID()%></td><td>专业号</td><td><%=stu.getMajorID()%></td>
               <td rowspan="3">照<br>片</td> </tr>
          <tr align="center"><td>姓名</td><td><%=stu.getName()%></td><td>年级</td><td><%=stu.getGrade()%></td></tr>
          <tr align="center"><td>生日</td><td colspan="3"><%=stu.getBirthday()%></td></tr>
          <tr align="center"><td>性别</td><td><%=stu.getSex()%></td><td>密码</td><td colspan="2"><%=stu.getPassword()%></td></tr>
          <tr align="center"><td>学制</td><td><%=stu.getYear()%></td><td>状态</td><td colspan="2"><%=stu.getState()%></td></tr>
      </table>
      <%}else{
    	  teacherService cs=new teacherService();
          teacher tea=cs.getOne(userID);
    	  %>
      <table border="1" width="100%" height="600px" >
          <tr align="center"> <td>教师ID</td><td><%=tea.getTeacherID()%></td><td>学院号</td><td><%=tea.getCollegeID()%></td>
               <td rowspan="2"  colspan="2">照<br>片</td> </tr>
          <tr align="center"><td>姓名</td><td><%=tea.getName()%></td><td>性别</td><td><%=tea.getSex()%></td></tr>
          <tr align="center"><td>生日</td><td><%=tea.getBirthday()%></td>
          <td>密码</td><td><%=tea.getPassword()%></td>
          <td>状态</td><td><%=tea.getState()%></td></tr>
      </table>
      <%} %>
</body>
</html>