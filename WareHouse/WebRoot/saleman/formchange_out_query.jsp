<%-- 
    Document   : c
    Created on : 2013-12-6, 2:49:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%@page import="java.sql.*,java.util.*"  %>
 <jsp:useBean id="formchange_out_query" scope="session" class="com.jsp.ware_out"/>
 <jsp:useBean id="formchange_out" scope="session" class="com.jsp.ware_out" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
       <title>修改出库单</title>
   </head>
   <body>
       <%!String ware_id,out_price,out_quantity,url,sql; %>
       <%! int i,j;%>      
       <%
          
          ware_id=request.getParameter("ware_id");
          out_price=request.getParameter("out_price");
          j=Integer.parseInt(out_price);
          out_quantity=request.getParameter("out_quantity");
          i=Integer.parseInt(out_quantity);
          if(ware_id.equals("")){
              response.sendRedirect("../public/err.jsp");
          }
          formchange_out_query.getConn("warehouse_m","root","123456");
          //sql="select * from ware_out where out_id="+formchange_out.getOut_id();
          //ResultSet  rs=formchange_out_query.executeQuery1(sql);
         // if(rs!=null)
          //{     response.sendRedirect("err.jsp"); rs.close();  }
          url="update ware_out set ware_id='"+ware_id+"',out_quantity= "+i+" ,out_price= "+j+" where out_id='"+formchange_out.getOut_id()+"'";
          
          formchange_out_query.executeUpdate2(url);
          out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=formlook_out.jsp'>");
          formchange_out_query.closeStmt();
          formchange_out_query.closeConn();
        %>
     </body>
</html>
