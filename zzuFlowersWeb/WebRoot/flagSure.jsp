<%-- 
    Document   : flagSure
    Created on : 2015-5-22, 0:50:57
    Author     : Administrator
--%>

<%@page import="com.bean.flag"%>
<%@page import="com.bean.adress"%>
<%@page import="com.bean.plant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.util.List" %>
   <%@page import="com.service.plantService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<%
List l=(List)request.getAttribute("l");
%>

<script type="text/javascript">
  
  function get0(){
          form1.action="flagGet0";
          form1.submit();
  }
  
   function get1(){
          form1.action="flagGet1";
          form1.submit();
  }
  
   function get2(){
          form1.action="flagGet2";
          form1.submit();
  }
  
   function getAll(){
          form1.action="flagGetAll";
          form1.submit();
  }
  
  function isCheck()
  {
	  
	  var all=form1.selectAll;
	  
	  var sa=form1.P_ids;
	  
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
td{text-align:center; padding-top:5px;}
table{ margin-top:20px;}
</style>

<body>
<form name="form1" action="#" method="post">    
<table align="center" style="padding-right:50px">
    <tr align="center">
		
        <td><a href="#" onclick="getAll();">全部</a></td>&nbsp;&nbsp; <td><a href="#" onclick="get1();">已通过</a></td>
		<td><a href="#" onclick="get0();">未确认</a></td><td><a href="#" onclick="get2();">未通过</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>标志表ID</td>
		<td>植物名</td>
                <td>地址ID</td>
		<td>地址</td>
		<td>用户开花标志</td>
                <td>确认</td>
                <td>错误</td>
	</tr>
   <% if(l.size()==0){  %>
                <td colspan="8"><%="无满足条件信息"%> </td> 
                <% } else{
   	for(int i=0;i<l.size();i++)
   	{
   		flag e=(flag)l.get(i);
                
   %>
	<tr>
	    <td><input type="checkbox" name="P_ids" value="<%=e.getF_id() %>"/></td>
		<td><%=e.getF_id() %></td>
		<td><%=e.getP_name()%></td>
		<td><%=e.getA_id() %></td>
		<td><%=e.getP_adress1()%></td>
                <td><%=e.getP_userflag() %></td>
                <%if(e.getF_flag()==1){  %>
                <td colspan="2"><%="确认通过"%> </td> 
                <% } else if(e.getF_flag()==0){  %> 
		<td><a href="flagSure?method=1&id=<%=e.getF_id() %>">确认</a>
		</td>
                <td><a href="flagSure?method=-1&id=<%=e.getF_id() %>">错误</a>
		</td>
                <%}else{%>
                <td colspan="2"><%="信息错误"%> </td>
                <% }%>
	</tr>
 	<%
 	}}
    %>
	
</table>

</form>
</body>
</html>
