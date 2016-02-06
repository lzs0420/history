<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.bean.user" %>
    <%@page import="com.bean.teacher" %>
    <%@page import="com.use.teacherCourseService" %>
    <%@page import="java.util.List" %>
    <%@page import="com.bean.college"%>
    <%@page import="com.use.collegeService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center;  margin-top:20px;}
</style>
<script type="text/javascript">
  function goDel()
  {
	  form1.action="teacherDeleteServlet";
	  form1.submit();
  }
  
  function show(){
	  document.getElementById("xx").style.display="block";
  }
  
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.teacherIDs;
	  
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
<%
List l=(List)request.getAttribute("l");//从请求对象中将放入的信息取出来
teacher s=(teacher)request.getAttribute("teacher");
collegeService cs=new collegeService();
List a=(List)cs.getAll();
/*String teacherID="";
if(s.getStudentID()!=null)
{
	studentID=s.getStudentID();
}
String studentName="";
if(s.getName()!=null)
{
	studentName=s.getName();
}*/
%>
<body>
<form name="form1" action="teacherServlet" method="post">
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<a href="teacherAdd.jsp">增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td align="center">教师ID</td>
		<td align="center">学院ID</td>
		<td align="center">姓名</td>
		<td align="center">性别</td>
		<td align="center">生日</td>
		<td align="center">状态</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		teacher e=(teacher)l.get(i);
   		
   %>
	<tr>
	    <td align="center"><input type="checkbox" name="teacherIDs" value="<%=e.getTeacherID() %>"/></td>
		<td align="center"><%=e.getTeacherID() %></td>
		<td align="center"><%=e.getCollegeID()%></td>
		<td align="center"><%=e.getName() %></td>
		<td align="center"><%=e.getSex() %></td>
		<td align="center"><%=e.getBirthday() %></td>
		<td align="center"><%=e.getState() %></td>
		<td align="center"><a href="teacherUpdate.jsp?id=<%=e.getTeacherID() %>">修改</a>
		</td>
	</tr>
 	<%
 	}
    %>
	
</table>
<div id="xx" class="xxx" align="left">
	<table>
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
				<option value="">请选择</option>
				<% 
				for(int i=0;i<a.size();i++)
				{
					college c=(college)a.get(i);
					
				
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
				<option value="">请选择</option>
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
				<option value="1">在校</option>
				<option value="0">离校</option>
			
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