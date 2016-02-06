<%-- 
    Document   : formlook_in1
    Created on : 2013-12-7, 15:16:43
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="formlook_in1" scope="session" class="com.db.mydb" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>仓库管理系统-入库单</title>
     </head>
   <%!String url,sql; %>   
   <body bgcolor="#ffffff">
        <% 
            String temp=(String)session.getAttribute("job");
            temp="../public/sidebar_"+temp+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
      <div align="center"><font color="#000000" size="5">仓库管理系统-入库单</font> </div>
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
         <td width=20% align=center>入库单号</td>
	     <td width=20% align=center>商品名</td>
	     <td width=12% align=center>数量</td>
	     <td width=15% align=center>时间</td>
	    <td width=10% align=center>价格</td>
	    <td width=15% align=center>员工号</td>
	    <td width=8% align=center>批准</td>
    </tr>
    <%
           url="yes";
           formlook_in1.getConn("warehouse_m", "root","123456");
	   sql="select * from ware_in";
	   ResultSet  rs=formlook_in1.executeQuery1(sql);
	    if(rs.next()) do{
    %>
      <tr>
        <td width=20% align=center><%=rs.getString(1)%></td>
	    <td width=20% align=center><%=rs.getString(2)%></td>
	    <td width=12% align=center><%=rs.getInt(3)%></td>
	    <td width=15% align=center><%=rs.getString(4)%></td>
	    <td width=10% align=center><%=rs.getString(5)%></td>
	    <td width=15% align=center><%=rs.getString(6)%></td>
            <td width=8% align=center>
                <%if(rs.getString(7).equals(url)){  %>
                         <%="已批准"%> 
                <% } else{ %> 
                <a href="javascript:if(confirm('are you sure？')){window.open('formlook_in1_query.jsp?in_id=<%=rs.getString(1)%>','_self');}else{}">批准</a>
                <% }%>
            </td>
      </tr>
      <%
	   }while(rs.next());else{%> 
           <td colspan="7" align="center" height="50">暂时没有入库单。</td>
      <%}%>
         <% if(rs!=null) rs.close();
	    formlook_in1.closeStmt();
	    formlook_in1.closeConn();
    %>
</table><jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>
