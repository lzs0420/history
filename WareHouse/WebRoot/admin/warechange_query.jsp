<%-- 
    Document   : warechange_query
    Created on : 2013-12-7, 14:27:49
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%@page import="java.sql.*,java.util.*"  %>
 <jsp:useBean id="warechange_query" scope="session" class="com.jsp.ware"/>
 <jsp:useBean id="warechange" scope="session" class="com.jsp.ware" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
       <title>修改商品</title>
   </head>
   <body>
       <%! String ware_name,ware_type,price,ware_min,ware_real,url,sql; %>
       <%! int i,j,k;%>      
       <%
          ware_name=request.getParameter("ware_name");
          ware_type=request.getParameter("ware_type");
          price=request.getParameter("price");
          i=Integer.parseInt(price);
          ware_min=request.getParameter("ware_min");
          j=Integer.parseInt(ware_min);
          ware_real=request.getParameter("ware_real");
          k=Integer.parseInt(ware_real);
          warechange_query.getConn("warehouse_m","root","123456");
          url="update ware set ware_name='"+ware_name+"',price="+i+",ware_min="+j+",ware_real="+k+" where ware_id="+warechange.getWare_id();
          //url="update ware_out set ware_id='"+ware_id+"',out_quantity= "+i+" ,out_price= "+j+" where out_id='"+formchange_out.getOut_id()+"'";
          System.out.println(url);
          warechange_query.executeUpdate2(url);
          out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=warelook1.jsp'>");
          warechange_query.closeStmt();
          warechange_query.closeConn();
        %>
     </body>
</html>

