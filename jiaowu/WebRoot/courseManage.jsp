<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.bean.course" %>
    <%@page import="java.util.List" %>
    <%@page import="com.use.courseService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
  function goDel()
  {
	  form1.action="courseDeleteServlet";
	  form1.submit();
  }
  
  function show(){
	  document.getElementById("xx").style.display="block";
  }
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.courseIDs;
	  
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
table{ margin-top:20px;}
</style>
<%
List l=(List)request.getAttribute("l");//从请求对象中将放入的信息取出来
course s=(course)request.getAttribute("course");

%>
<body>
<form name="form1" action="courseServlet" method="post">
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<a href="courseAdd.jsp">增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>课程ID</td>
		<td>课程名</td>
		<td>学分</td>
		<td>学时(周)</td>
		<td>人数</td>
		<td>状态</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		course e=(course)l.get(i);
   		
   %>
	<tr>
	    <td><input type="checkbox" name="courseIDs" value="<%=e.getCourseID() %>"/></td>
		<td><%=e.getCourseID() %></td>
		<td><%=e.getCourseName()%></td>
		<td><%=e.getCredit() %></td>
		<td><%=e.getPeriod() %></td>
		<td><%=e.getPeopleNum() %></td>
		<td><%=e.getState() %></td>
		<td><a href="courseUpdate.jsp?id=<%=e.getCourseID() %>">修改</a>
		</td>
	</tr>
 	<%
 	}
    %>
	
</table>
<div id="xx" class="xxx" align="left">
	<table>
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
			<td><input type="text" name="credit" /></td>
			
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
		
			<td><input type="submit" value="查找"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table></div>
</form>
</body>
</html>