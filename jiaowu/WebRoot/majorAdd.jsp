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
   collegeService cs=new collegeService();
   List l=(List)cs.getAll();
%>
<body>
    <form action="majorAddServlet" method="post">

	<table align="center">
		<tr>
		
			<td>专业ID</td>
			<td><input type="text" name="majorID"/></td>
			
		</tr>
		<tr>
		
			<td>院系</td>
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
		
			<td>专业名</td>
			<td><input type="text" name="majorName"/></td>
			
		</tr>
		<tr>
		
			<td><input type="submit" value="增加"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table>
</form>
    
</body>
</html>