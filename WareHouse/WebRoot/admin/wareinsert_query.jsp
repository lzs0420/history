<%-- 
    Document   : wareinsert_query
    Created on : 2013-12-7, 13:49:26
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<jsp:useBean id="wareinsert" scope="session" class="com.jsp.ware" />
<jsp:useBean id="wareinsert_query" scope="session" class="com.jsp.ware"/>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>新商品</title>
    </head>
    <body>
        <%! String sql,ware_name,ware_type,ware_business,ware_brand,ware_pricein,ware_priceout,ware_min,ware_real,ware_mfdate,ware_indate;%>
        <%! int i1,i2,j,k;%>
        <%
             ware_name=request.getParameter("ware_name");
             ware_type=request.getParameter("ware_type");
             ware_business=request.getParameter("ware_business");
             ware_brand=request.getParameter("ware_brand");
             ware_pricein=request.getParameter("ware_pricein");
             i1=Integer.parseInt(ware_pricein);
             ware_priceout=request.getParameter("ware_priceout");
             i2=Integer.parseInt(ware_priceout);
             ware_min=request.getParameter("ware_min");
             j=Integer.parseInt(ware_min);
             ware_real=request.getParameter("ware_real");
             k=Integer.parseInt(ware_real);
              
             ware_mfdate=request.getParameter("ware_mfdate");
             ware_indate=request.getParameter("ware_indate");
             wareinsert_query.getConn("warehouse_m", "root", "123456");
             sql="insert into ware (ware_id,ware_name,ware_type,ware_business,ware_brand,ware_pricein,ware_priceout,ware_min,ware_real,ware_sell,ware_mfdate,ware_indate)";
             sql+="values('"+wareinsert.getWare_id()+"','"+ware_name+"','"+ware_type+"','"+ware_business+"','"+ware_brand+"',"+i1+","+i2+","+j+","+k+","+0+",'"+ware_mfdate+"','"+ware_indate+"')";
             wareinsert_query.executeUpdate2(sql);
             out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=warelook1.jsp'>");
        %>
    </body>
</html>
