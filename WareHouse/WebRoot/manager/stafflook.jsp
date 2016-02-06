<%-- 
    Document   : stafflook
    Created on : 2013-12-7, 16:07:13
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="stafflook" scope="session" class="com.jsp.staff" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>仓库管理系统-员工表</title>
     </head>
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
   <%!String url,sql; %>   
   <%!int i;%>
      <div align="center"><font color="#000000" size="5">仓库管理系统-员工表 </font> </div>
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
         <td width=17% align=center >员工号</td>
	     <td width=18% align=center>员工名</td>
	     <td width=10% align=center>年龄</td>
	     <td width=10% align=center>性别</td>
	    <td width=17% align=center>职位</td>
	    <td width=14% align=center>更改</td>
	    <td width=14% align=center>删除</td>
    </tr>
    <%
       stafflook.getConn("warehouse_m", "root","123456");
	   sql="select * from staff";
	   ResultSet  rs=stafflook.executeQuery1(sql);
	     if(rs.next()) do{
    %>
      <tr>
            <td width=17% align=center><%=rs.getString(1)%></td>
	    <td width=18% align=center><%=rs.getString(2)%></td>
	    <td width=10% align=center><%=rs.getInt(3)%></td>
	    <td width=10% align=center><%=rs.getString(4)%></td>
	    <td width=17% align=center><%=rs.getString(5)%></td>
	    <td width=14% align=center><a href="staffchange.jsp?work_id=<%=rs.getString(1)%>">修改信息</a></td>
	    <td width=14% align=center><a href="staffdelete.jsp?work_id=<%=rs.getString(1)%>">删除信息</a></td>
      </tr>
      <%
	   }while(rs.next());else{%> 
           <tr><td colspan="7" align="center" height=38px>暂时没有员工信息。</td></tr>
      <%}
	    if(rs!=null)rs.close();
	    stafflook.closeStmt();
	    stafflook.closeConn();
    %>
    <tr align="center" height=38px><td colspan="7"><a href="staffinsert.jsp">添加新员工 </a></td> </tr>
</table>
<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>
