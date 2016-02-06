<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.bean.studentCourse" %>
    <%@page import="java.util.List" %>
    <%@page import="com.use.studentCourseService"%>
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
<%
    String id=request.getParameter("id");

    studentCourseService scs=new studentCourseService();
    studentCourse sc=scs.getOne(id);
%>
<body>
    <form action="studentCourseUpdateServlet" method="post">

	<table align="center">
		<tr>
		
			<td>学生ID</td>
			<td><input type="text" name="studentID" value="<%=sc.getStudentID() %>"/></td>
			
		</tr>
		<tr>
		
			<td>课程ID</td>
			<td><input type="text" name="courseID" value="<%=sc.getCourseID() %>"/></td>
			
		</tr>
		<tr>
		
			<td>分数</td>
			<td><input type="text" name="score" value="<%=sc.getScore() %>"/></td>
			
		</tr>
		<tr>
		
			<td>学期</td>
			<td>
			<select name="semester">
				<option value="">请选择</option>
				<% 
				for(int i=1;i<9;i++)
				{
					if(sc.getSemester().equals(""+i+"")){
				%>
				<option value="<%=i %>" selected><%=i %></option>
				<%}else{ %>
				<option value="<%=i %>"><%=i %></option>
				<% 
				}}
				%>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>状态</td>
			<td>
			<select name="state">
				<option value=0>请选择</option>
				<% if(sc.getState()==1){%>
				<option value=1 selected>在校</option>
				<option value=0>离校</option>
			    <%}else{ %>
			    <option value=1>在校</option>
				<option value=0 selected>离校</option>
			    <%}%>
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td><input type="submit" value="修改"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table>
</form>
    
</body>
</html>