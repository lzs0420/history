<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.major" %>
    <%@page import="java.util.List" %>
    <%@page import="com.use.majorService"%>
    <%@page import="com.use.collegeService"%>
    <%@page import="com.bean.college"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
  function goDel()
  {
	  form1.action="majorDeleteServlet";
	  form1.submit();
  }
  
  function show(){
	  document.getElementById("xx").style.display="block";
  }
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.majorIDs;
	  
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
major s=(major)request.getAttribute("course");
collegeService cs=new collegeService();
List a=(List)cs.getAll();
%>
<body>
<form name="form1" action="majorServlet" method="post">
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<a href="majorAdd.jsp" >增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>专业ID</td>
		<td>院系ID</td>
		<td>专业名</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		major e=(major)l.get(i);
   		
   %>
	<tr>
	    <td><input type="checkbox" name="majorIDs" value="<%=e.getMajorID() %>"/></td>
		<td><%=e.getMajorID() %></td>
		<td><%=e.getCollegeID()%></td>
		<td><%=e.getMajorName() %></td>
		<td><a href="majorUpdate.jsp?id=<%=e.getMajorID() %>">修改</a>
		</td>
	</tr>
 	<%
 	}
    %>
	
</table>
<div id="xx" class="xxx" align="left">
	<table>
		<tr>
		
			<td>专业ID</td>
			<td><input type="text" name="majorID"/></td>
			
		</tr>
		<tr>
		
			<td>院系</td>
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
		
			<td>专业</td>
			<td><input type="text" name="majorName" /></td>
			
		</tr>
		<tr>
		
			<td><input type="submit" value="查找"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table></div>
</form>
</body>
</html>