<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.bean.college"%>
    <%@page import="com.use.collegeService"%>
    <%@page import="com.bean.teacher" %>
    <%@page import="com.use.teacherService" %>
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
   String id=request.getParameter("id");
   teacherService ss=new teacherService();
   teacher s=(teacher)ss.getOne(id);
%>
<body>
    <form action="teacherUpdateServlet" method="post">

	<table align="center">
		<tr>
		
			<td>教师ID</td>
			<td><input type="text" name="teacherID" value="<%=s.getTeacherID()%>"/></td>
			
		</tr>
		<tr>
		
			<td>姓名</td>
			<td><input type="text" name="name" value="<%=s.getName()%>"/></td>
			
		</tr>
		<tr>
		
			<td>学院</td>
			<td>
			<select name="collegeID">
				<option value="">请选择</option>
				<% 
				for(int i=0;i<l.size();i++)
				{
					college c=(college)l.get(i);
					if(c.getCollegeID().equals(s.getCollegeID())){
				
				%>
				<option value="<%=c.getCollegeID()%>" selected><%=c.getCollegeName() %></option>
				<%}else{ %>
				<option value="<%=c.getCollegeID()%>"><%=c.getCollegeName() %></option>
				<% 
				}}
				%>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>性别</td>
			<td>
			<select name="sex">
				<option>请选择</option>
				<% if(s.getSex().equals("男")){%>
				<option value="男" selected>男</option>
				<option value="女">女</option>
			   <%}else{ %>
			   <option value="男">男</option>
				<option value="女" selected>女</option>
			   <%}%>
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>生日</td>
			<td><input type="text" name="birthday" value="<%=s.getBirthday()%>"/></td>
			
		</tr>
		<tr>
		
			<td>状态</td>
			<td>
			<select name="state">
				<option value=0>请选择</option>
				<% if(s.getState()==1){%>
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