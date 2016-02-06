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
  function goDel()
  {
	  form1.action="plantDelete";
	  form1.submit();
  }
  
  function show(){
          form1.action="plantFind";
	  document.getElementById("xx").style.display="block";
  }
  
  function show1(){
          form1.action="plantAdd";
          document.form1.submit1.value="添加";
	  document.getElementById("xx").style.display="block";
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
.xxx{display:none;}
td{text-align:center;}
</style>
<style>
td{text-align:center; padding-top:5px;}
table{ margin-top:20px;}
</style>

<body>
<form name="form1" action="#" method="post">

<div id="xx" class="xxx" align="left">
	<table>
		<tr>
		
			<td>植物ID</td>
                        <td><input type="text" name="P_id" id="P_id"/></td>
			
		</tr>
		<tr>
		
			<td>植物名</td>
                        <td><input type="text" name="P_name" id="P_name"/></td>
			
		</tr>
		<tr>
		
			<td>花期</td>
			<td><input type="text" name="P_florescence" id="P_florescence"/></td>
			
		</tr>
		<tr>
		
			<td>地址</td>
			<td><input type="text" name="P_adress1" id="P_adress1"/></td>
			
		</tr>
		
		<tr>
		
			<td>是否开花</td>
			<td>
                            <select name="P_flag" id="P_flag">
				<option value=0>请选择</option>
				<option value=1>已开</option>
				<option value=0>未开</option>
			
			</select>
			
			</td>
			
		</tr>
                <tr>
		
			<td>简介</td>
                        <td><textarea  rows="3" name="P_summary"id="P_summary"></textarea></td>
			
		</tr>
                <tr>
		
			<td>特征</td>
			<td><textarea  rows="3"name="P_feature"id="P_feature"></textarea></td>
			
		</tr>
                <tr>
		
			<td>分布</td>
			<td><textarea  rows="3"name="P_distribution"id="P_distribution"></textarea></td>
			
		</tr>
                <tr>
		
			<td>价值</td>
			<td><textarea  rows="5"name="P_value"id="P_value"></textarea></td>
			
		</tr>
                <tr>
		
			<td>文化</td>
			<td><textarea  rows="5"name="P_culture"id="P_culture"></textarea></td>
			
		</tr>
		<tr>
		
			<td><input type="submit" name ="submit1"value="查找"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table></div>    
    
<table align="right" style="padding-right:50px">
    <tr align="center">
		
		<td><a href="#" onclick="goDel();">删除</a>&nbsp;&nbsp;<br><a href="#" onclick="show1();">增加</a></td>
		<td><a href="#" onclick="show();">查找</a></td>
	</tr>
	<tr align="center">
	    <td align="center">全选<input type="checkbox" name="selectAll" onclick="isCheck();"></td>
		<td>植物ID</td>
		<td>植物名</td>
		<td>花期</td>
		<td>地址</td>
	</tr>
   <% 
   	for(int i=0;i<l.size();i++)
   	{
   		plant e=(plant)l.get(i);
   		List<adress> a=e.getList_adress();
                String temp="";
                for(adress ad:a){
                    temp+=ad.getP_adress1();
                    if(ad.getP_flag()==0){
                        temp+="未开花；";
                    }else{
                        temp+="已开花；";
                    }
                }
   %>
	<tr>
	    <td><input type="checkbox" name="P_ids" value="<%=e.getP_id() %>"/></td>
		<td><%=e.getP_id() %></td>
		<td><%=e.getP_name()%></td>
		<td><%=e.getP_florescence() %></td>
		<td><%=temp%></td>
		<td><a href="plantUpdate1?id=<%=e.getP_id() %>">修改</a>
		</td>
	</tr>
 	<%
 	}
    %>
	
</table>

</form>
</body>
</html>