<%-- 
    Document   : plantAdd
    Created on : 2015-5-20, 15:22:09
    Author     : Administrator
--%>

<%@page import="com.bean.plant"%>
<%@page import="com.bean.adress"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    plant s=(plant)request.getAttribute("plant");
    String temp1="";
temp1+="此项无需填";
 %>
    <body>
       <form name="form1" action="plantUpdate" method="post">

<div id="xx" class="xxx" align="center">
	<table>
		<tr>
		
			<td>植物ID</td>
                        <td><%=s.getP_id()%><input type="hidden" name="P_id" value="<%=s.getP_id()%>"></td>
			
		</tr>
		<tr>
		
			<td>植物名</td>
                        <td><input type="text" name="P_name" id="P_name"value="<%=s.getP_name()%>"/></td>
			
		</tr>
		<tr>
		
			<td>花期</td>
			<td><input type="text" name="P_florescence" id="P_florescence"value="<%=s.getP_florescence()%>"/></td>
			
		</tr>
		<tr>
		
			<td>地址</td>
			<td><input type="text" name="P_adress1" id="P_adress1"value="<%=temp1%>"/></td>
			
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
                        <td><textarea  rows="3" name="P_summary"id="P_summary"><%=s.getP_summary()%></textarea></td>
			
		</tr>
                <tr>
		
			<td>特征</td>
			<td><textarea  rows="3"name="P_feature"id="P_feature"><%=s.getP_feature()%></textarea></td>
			
		</tr>
                <tr>
		
			<td>分布</td>
			<td><textarea  rows="3"name="P_distribution"id="P_distribution"><%=s.getP_distribution()%></textarea></td>
			
		</tr>
                <tr>
		
			<td>价值</td>
			<td><textarea  rows="5"name="P_value"id="P_value"><%=s.getP_value()%></textarea></td>
			
		</tr>
                <tr>
		
			<td>文化</td>
			<td><textarea  rows="5"name="P_culture"id="P_culture"><%=s.getP_culture()%></textarea></td>
			
		</tr>
		<tr>
		
			<td><input type="submit" name ="submit1"value="修改"> </td>
			<td><input type="reset" value="重填"></td>
			
		</tr>
	</table></div>
</form>
    </body>
</html>
