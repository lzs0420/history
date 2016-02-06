<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.college"%>
    <%@page import="com.use.collegeService"%>
<%@page import="java.util.List"%>
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
   collegeService ms=new collegeService();
   List l=(List)ms.getAll();
%>
<body>
    <form action="teacherAddServlet" method="post">

	<table align="center">
		<tr>
		
			<td>教师ID</td>
			<td><input type="text" name="teacherID"/></td>
			
		</tr>
		<tr>
		
			<td>姓名</td>
			<td><input type="text" name="name"/></td>
			
		</tr>
		<tr>
		
			<td>学院</td>
			<td>
			<select name="collegeID">
				<option>请选择</option>
				<% 
				for(int i=0;i<l.size();i++)
				{
					college c=(college)l.get(i);
					
				
				%>
				<option value="<%=c.getCollegeID()%>"><%=c.getCollegeName() %></option>
				<% 
				}
				%>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>性别</td>
			<td>
			<select name="sex">
				<option>请选择</option>
				<option value="男">男</option>
				<option value="女">女</option>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>生日</td>
			<td><input type="text" name="birthday"/></td>
			
		</tr>
		<tr>
		
			<td>状态</td>
			<td>
			<select name="state">
				<option value=0>请选择</option>
				<option value=1>在校</option>
				<option value=0>离校</option>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td><input type="submit" value="增加"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table>
</form>
    
</body>
</html>