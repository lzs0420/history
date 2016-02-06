<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.bean.studentCourse" %>
    <%@page import="java.util.List" %>
    <%@page import="com.use.studentCourseService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
  function goDel()
  {
	  form1.action="studentCourseDeleteServlet";
	  form1.submit();
  }
  
  function show(){
	  document.getElementById("xx").style.display="block";
  }
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.studentCourseIDs;
	  
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
table{text-align:center;  margin-top:20px;}
</style>
<%
List l=(List)request.getAttribute("l");//从请求对象中将放入的信息取出来
studentCourse s=(studentCourse)request.getAttribute("studentCourse");

%>
<body>
<form name="form1" action="studentCourseServlet" method="post">
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<a href="studentCourseAdd.jsp">增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>学生ID</td>
		<td>课程ID</td>
		<td>分数</td>
		<td>学期</td>
		<td>状态</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		studentCourse e=(studentCourse)l.get(i);
   		String temp=e.getStudentID()+"y"+e.getCourseID();
   		//System.out.println(temp);
   %>
	<tr>
	    <td><input type="checkbox" name="studentCourseIDs" value="<%=temp %>"/>
	    </td>
		<td><%=e.getStudentID() %></td>
		<td><%=e.getCourseID()%></td>
		<td><%=e.getScore() %></td>
		<td><%=e.getSemester() %></td>
		<td><%=e.getState() %></td>
		<td><a href="studentCourseUpdate.jsp?id=<%=temp %>">修改</a>
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
		
			<td>课程ID</td>
			<td><input type="text" name="courseID"/></td>
			
		</tr>
		<tr>
		
			<td>分数</td>
			<td><input type="text" name="score" /></td>
			
		</tr>
		<tr>
		
			<td>学期</td>
			<td>
			<select name="semester">
				<option value="">请选择</option>
				<% 
				for(int i=1;i<9;i++)
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
				<option value=1>本学期</option>
				<option value=0>已学完</option>
			
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