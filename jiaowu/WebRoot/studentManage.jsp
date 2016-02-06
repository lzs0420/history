<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.bean.user" %>
    <%@page import="com.bean.student" %>
    <%@page import="java.util.List" %>
    <%@page import="com.bean.major"%>
    <%@page import="com.use.majorService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
  function goDel()
  {
	  form1.action="studentDeleteServlet";
	  form1.submit();
  }
  
  function show(){
	  document.getElementById("xx").style.display="block";
  }
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.studentIDs;
	  
	  if(all.checked)
		  {
		  	for(var i=0;i<sa.length;i++)
		  		{
		  		
		  		sa[i].checked=true;
		  		}
		  	
		  }
	  else
		  {
			for(var i=0;i<sa.length;i++)
	  		{
	  		
	  		sa[i].checked=false;
	  		}
		  }
  }
</script>
<style>
.xxx{display:none;}
td{text-align:center;}
</style>
<style>
td{text-align:center; padding-top:5px;}
table{  margin-top:20px;}
</style>
<%
List l=(List)request.getAttribute("l");//从请求对象中将放入的信息取出来
majorService ms=new majorService();
List a=(List)ms.getAll();

%>
<body>
<form name="form1" action="studentServlet" method="post">
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<a href="studentAdd.jsp">增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>学生ID</td>
		<td>专业ID</td>
		<td>姓名</td>
		<td>年级</td>
		<td>生日</td>
		<td>性别</td>
		<td>学制</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		student e=(student)l.get(i);
   %>
	<tr>
	    <td><input type="checkbox" name="studentIDs" value="<%=e.getStudentID() %>" /></td>
		<td><%=e.getStudentID() %></td>
		<td><%=e.getMajorID()%></td>
		<td><%=e.getName() %></td>
		<td><%=e.getGrade() %></td>
		<td><%=e.getBirthday() %></td>
		<td><%=e.getSex() %></td>
		<td><%=e.getYear() %></td>
		<td><a href="studentUpdate.jsp?id=<%=e.getStudentID() %>">修改</a>
		</td>
	</tr>
 	<%
 	}
    %>
	
</table>
<div id="xx" class="xxx" align="left">
	<table>
		<tr>
		
			<td>学生ID</td>
			<td><input type="text" name="studentID"/></td>
			
		</tr>
		<tr>
		
			<td>姓名</td>
			<td><input type="text" name="name"/></td>
			
		</tr>
		<tr>
		
			<td>专业</td>
			<td>
			<select name="majorID">
				<option value="">请选择</option>
				<% 
				for(int i=0;i<a.size();i++)
				{
					major c=(major)a.get(i);
					
				
				%>
				<option value="<%=c.getMajorID()%>"><%=c.getMajorName() %></option>
				<% 
				}
				%>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>年级</td>
			<td>
			<select name="grade">
				<option value=0>请选择</option>
				<% 
				for(int i=1;i<6;i++)
				{
				%>
				<option value="<%=i %>"><%=i %></option>
				<% 
				}
				%>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>生日</td>
			<td><input type="text" name="birthday"/></td>
			
		</tr>
		<tr>
		
			<td>性别</td>
			<td>
			<select name="sex">
				<option value="">请选择</option>
				<option value="男">男</option>
				<option value="女">女</option>
			
			</select>
			
			</td>
			
		</tr>
		<tr>
		
			<td>年制</td>
			<td>
			<select name="sex">
				<option value=0>请选择</option>
				<% 
				for(int i=1;i<6;i++)
				{
				%>
				<option value="<%=i %>"><%=i %></option>
				<% 
				}
				%>
			
			</select>
			
			</td>
			
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
		
			<td><input type="submit" value="查找"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table></div>
</form>
</body>
</html>