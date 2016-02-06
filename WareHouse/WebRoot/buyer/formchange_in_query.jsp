<%-- 
    Document   : formchange_in_query
    Created on : 2013-12-7, 0:04:38
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%@page import="java.sql.*,java.util.*"  %>
 <jsp:useBean id="formchange_in_query" scope="session" class="com.jsp.ware_in"/>
 <jsp:useBean id="formchange_in" scope="session" class="com.jsp.ware_in" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
       <title>新出库单</title>
   </head>
   <body>
       <%!String ware_id,in_price,in_quantity,url,sql; %>
       <%! int i,j;%>      
       <%
          
          ware_id=request.getParameter("ware_id");
          in_price=request.getParameter("in_price");
          j=Integer.parseInt(in_price);
          in_quantity=request.getParameter("in_quantity");
          i=Integer.parseInt(in_quantity);
          if(ware_id.equals("")){
              response.sendRedirect("../public/err.jsp");
          }
          formchange_in_query.getConn("warehouse_m","root","123456");
          //sql="select * from ware_out where out_id="+formchange_out.getOut_id();
          //ResultSet  rs=formchange_out_query.executeQuery1(sql);
         // if(rs!=null)
          //{     response.sendRedirect("err.jsp"); rs.close();  }
          url="update ware_in set ware_id='"+ware_id+"',in_quantity= "+i+" ,in_price= "+j+" where in_id='"+formchange_in.getIn_id()+"'";
          
          formchange_in_query.executeUpdate2(url);
          out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=formlook_in.jsp'>");
          formchange_in_query.closeStmt();
          formchange_in_query.closeConn();
        %>
     </body>
</html>

