<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form action="courseAddServlet" method="post">

	<table align="center">
		<tr>
		
			<td>课程ID</td>
			<td><input type="text" name="courseID"/></td>
			
		</tr>
		<tr>
		
			<td>课程名</td>
			<td><input type="text" name="courseName"/></td>
			
		</tr>
		<tr>
		
			<td>学分</td>
			<td><input type="text" name="credit"/></td>
			
		</tr>
		<tr>
		
			<td>学时</td>
			<td><input type="text" name="period"/></td>
			
		</tr>
		<tr>
		
			<td>人数</td>
			<td><input type="text" name="peopleNum"/></td>
			
		</tr>
		<tr>
		
			<td>状态</td>
			<td>
			<select name="state">
				<option value=0>请选择</option>
				<option value=1>本学期</option>
				<option value=0>未开</option>
			
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