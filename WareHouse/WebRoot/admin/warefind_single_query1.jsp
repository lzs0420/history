<%-- 
    Document   : warefind_single_query1
    Created on : 2013-12-14, 16:10:09
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="warefind_single_query1" scope="session" class="com.jsp.ware" />
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="warefind1.jsp"></jsp:include>
        <%! String sql,select1,select2,input,input1,input2;%>
        <%
            select1=(String)request.getParameter("select_condition1");
            select2=(String)request.getParameter("select_condition2");
            if(select1.equals("#")) {
                select1=select2;
                input1=(String)request.getParameter("input_condition2");
                input2=(String)request.getParameter("input_condition3");
                sql="select * from ware where "+select1+" >= '"+input1+"' and "+select1+"<= '"+input2+"'";
            }
            else {
                input=(String)request.getParameter("input_condition1");
                sql="select * from ware where "+select1+" like '%"+input+"%'";
            }
            warefind_single_query1.getConn("warehouse_m", "root", "123456");
            ResultSet rs=warefind_single_query1.executeQuery1(sql);
        %>
         <div align="center"><font color="#000000" size="5">仓库管理系统 </font> </div>
         <table width="82%" border="1" cellspacing="1" cellpadding="1" align="right" style="margin-right: 25px">
      <tr>
         <td width=9% align=center>商品号</td>
	     <td width=4% align=center>商品名</td>
	     <td width=9% align=center>型号</td>
	     <td width=9% align=center>行业</td>
	     <td width=9% align=center>品牌</td>
	    <td width=4% align=center>进价</td>
            <td width=4% align=center>售价</td>
	     <td width=9% align=center>最小库存</td>
	     <td width=9% align=center>实际库存</td>
	     <td width=4% align=center>销售量</td>
	    <td width=10% align=center>生产日期</td>
	    <td width=10% align=center>入库日期</td>
            <td width=5% align=center>修改</td>
	    <td width=5% align=center>删除</td>
    </tr><%
	    if(rs.next()) do{
    %>
      <tr>
        <td width=9% align=center>
            <% String ss="img"+rs.getString(1);
               String rr="../images/ware/w"+rs.getString(1)+".jpg";%>
            <a href="ware.jsp?ware_id=<%=rs.getString(1)%>" onmouseout="javascript:document.getElementById('<%=ss%>').style.display='none';" 
                                   onmouseover="javascript:document.getElementById('<%=ss%>').style.display='block';
                                   document.getElementById('<%=ss%>').style.zIndex='1';"><img id='<%=ss%>' src="<%=rr%>"
                                   style="display: none;position: absolute;zIndex:-1"><%=rs.getString(1)%></a></td>
	     <td width=4% align=center><%=rs.getString(2)%></td>
	     <td width=9% align=center><%=rs.getString(3)%></td>
	     <td width=9% align=center><%=rs.getString(4)%></td>
	     <td width=9% align=center><%=rs.getString(5)%></td>
	    <td width=4% align=center><%=rs.getInt(6)%></td>
            <td width=4% align=center><%=rs.getInt(7)%></td>
	     <td width=9% align=center><%=rs.getInt(8)%></td>
	     <td width=9% align=center><%=rs.getInt(9)%></td>
	     <td width=4% align=center><%=rs.getInt(10)%></td>
	    <td width=10% align=center><%=rs.getString(11)%></td>
	    <td width=10% align=center><%=rs.getString(12)%></td>
            <td width=5% align=center><a href="warechange.jsp?ware_id=<%=rs.getString(1)%>">修改</a></td>
            <td width=5% align=center><a href="waredelete.jsp?ware_id=<%=rs.getString(1)%>">删除</a></td>
      </tr>
      <%
	   }while(rs.next());else{%>
           <tr><td colspan="12" align="center" height=38px>没有符合条件的商品。</td></tr>
	 <%   }if(rs!=null) rs.close();
	    warefind_single_query1.closeStmt();
	    warefind_single_query1.closeConn();
    %>
    <tr height="50px">
        <td align="center" colspan="14"><a href="wareinsert.jsp">添加新记录 </a> </td>
      </tr>
</table><jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>