<%-- 
    Document   : formlook_in
    Created on : 2013-12-6, 23:43:03
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="formlook_in" scope="session" class="com.db.mydb" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>仓库管理系统-入库单</title>
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
   
      <div align="center"><font color="#000000" size="5">仓库管理系统-入库单</font> </div>
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center" style="margin-right: 50px">
      <tr>
         <td width=15% align=center>入库单号</td>
	     <td width=15% align=center>商品名</td>
	     <td width=8% align=center>数量</td>
	     <td width=15% align=center>时间</td>
	    <td width=8% align=center>价格</td>
	    <td width=11% align=center>员工号</td>
	    <td width=6% align=center>批准</td>
            <td width=11% align=center>更改</td>
	    <td width=11% align=center>删除</td>
    </tr>
    <%
        url=(String)session.getAttribute("work_id");
       formlook_in.getConn("warehouse_m", "root","123456");
	   sql="select * from ware_in where work_id ="+url;
	   ResultSet  rs=formlook_in.executeQuery1(sql);
	    if(rs.next()) do{
    %>
      <tr>
        <td width=15% align=center><%=rs.getString(1)%></td>
	    <td width=15% align=center><%=rs.getString(2)%></td>
	    <td width=8% align=center><%=rs.getInt(3)%></td>
	    <td width=15% align=center><%=rs.getString(4)%></td>
	    <td width=8% align=center><%=rs.getString(5)%></td>
	    <td width=11% align=center><%=rs.getString(6)%></td>
            <td width=6% align=center><%=rs.getString(7)%></td>
	    <td width=11% align=center><a href="formchange_in.jsp?in_id=<%=rs.getString(1)%>">修改</a></td>
	    <td width=11% align=center><a href="formdelete_in.jsp?in_id=<%=rs.getString(1)%>">删除</a></td>
      </tr>
      <%
	   }while(rs.next());else{%> 
           <td colspan="9" align="center" height="50">您还没有入库单。</td>
      <%}
          if(rs!=null) rs.close();
	    formlook_in.closeStmt();
	    formlook_in.closeConn();
    %>
    <tr height=38px>
        <td align="center" colspan="9"><a href="forminsert_in.jsp">添加新记录 </a> </td></tr>
</table>
<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>
