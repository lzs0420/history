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
</head>
<body>
      <% 
         user user1=(user)session.getAttribute("user");
         String userID=user1.getUserID();
         String job=user1.getJob();
         if(job.equals("Student")){
             studentService ss=new studentService();
             student stu=ss.getOne(userID);
             String password=request.getParameter("password1");
             if(stu.getPassword().equals(password))
             {
        	    stu.setPassword(request.getParameter("password2"));
        	    if(ss.update(stu)){System.out.println("密码修改成功！！");}
        	    else{System.out.println("密码修改失败！！");}
             }
             else
             {
        	    System.out.println("密码错误！！");
             }
         }
         else{
        	 teacherService ts=new teacherService();
             teacher tea=ts.getOne(userID);
             String password=request.getParameter("password1");
             if(tea.getPassword().equals(password))
             {
        	    tea.setPassword(request.getParameter("password2"));
        	    if(ts.update(tea)){System.out.println("密码修改成功！！");}
        	    else{System.out.println("密码修改失败！！");}
             }
             else
             {
        	    System.out.println("密码错误！！");
             }
         }
      %>
</body>
</html>