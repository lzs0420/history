<%-- 
    Document   : ware
    Created on : 2013-12-14, 21:15:30
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<jsp:useBean id="ware" scope="session" class="com.jsp.ware" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品</title>
    </head>
    <body>
        <% 
            String temp=(String)session.getAttribute("job");
            temp="../public/sidebar_"+temp+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
        <%!String sql,ware_id,ss; %>   
   <%
       ware_id=request.getParameter("ware_id");
       ss="../images/ware/w"+ware_id+".jpg";
       sql="select * from ware where ware_id="+ware_id;
       ware.getConn("warehouse_m", "root", "123456");
       ResultSet rs=ware.executeQuery1(sql);
       rs.next();
   %>
        <div align="center"><font color="#000000" size="5">物品详细信息 </font> </div><br>
        <div style="float: left"><img src="<%=ss%>"></div>
        <div style="float: left;padding: 0">
               <ul>
                <li>商品号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>商品名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>型号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>行业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>品牌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</li>
                <li>进价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>售价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>最小库存&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>实际库存&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>销售量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>生存日期&nbsp;&nbsp;&nbsp;&nbsp;: </li>
                <li>入库日期&nbsp;&nbsp;&nbsp;&nbsp;: </li>
            </ul>
            <%--  <ul>
                <li>商品号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp; <%=rs.getString(1)%></li>
                <li>商品名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></li>
                <li>型号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></li>
                <li>行业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<%=rs.getString(4)%></li>
                <li>品牌&nbsp;&nbsp;: <%=rs.getString(5)%></li>
                <li>进价&nbsp;&nbsp;: <%=rs.getInt(6)%></li>
                <li>售价&nbsp;&nbsp;: <%=rs.getInt(7)%></li>
                <li>最小库存: <%=rs.getInt(8)%></li>
                <li>实际库存: <%=rs.getInt(9)%></li>
                <li>销售量&nbsp;&nbsp;: <%=rs.getInt(10)%></li>
                <li>生存日期: <%=rs.getString(11)%></li>
                <li>入库日期: <%=rs.getString(12)%></li>
            </ul>--%>
        </div>
        <div style="float: left">
            <ul>
                <li><%=rs.getString(1)%></li>
                <li><%=rs.getString(2)%></li>
                <li><%=rs.getString(3)%></li>
                <li><%=rs.getString(4)%></li>
                <li><%=rs.getString(5)%></li>
                <li><%=rs.getInt(6)%></li>
                <li><%=rs.getInt(7)%></li>
                <li><%=rs.getInt(8)%></li>
                <li><%=rs.getInt(9)%></li>
                <li><%=rs.getInt(10)%></li>
                <li><%=rs.getString(11)%></li>
                <li><%=rs.getString(12)%></li>
            </ul>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
