<%-- 
    Document   : forminsert_in_query
    Created on : 2013-12-6, 23:50:40
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%@page import="java.sql.*,java.util.*"  %>
 <jsp:useBean id="forminsert_in_query" scope="session" class="com.jsp.ware_in"/>
 <jsp:useBean id="forminsert_in" scope="session" class="com.jsp.ware_in" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
       <title>新出库单</title>
   </head>
   <body>
       <%!String ware_id,in_price,in_quantity,url,sql; %>
       <%! int i,j;%>      
       <%
         // out_id=request.getParameter("out_id");
          ware_id=request.getParameter("ware_id");
          in_price=request.getParameter("in_price");
          j=Integer.parseInt(in_price);
          in_quantity=request.getParameter("in_quantity");
          i=Integer.parseInt(in_quantity);
         // out_time=request.getParameter("out_time");
          //work_id=request.getParameter("work_id");
          if(ware_id.equals("")){
              response.sendRedirect("../public/err.jsp");
          }
          forminsert_in_query.getConn("warehouse_m","root","123456");
          sql="select * from ware_in where in_id="+forminsert_in.getIn_id();
          ResultSet  rs=forminsert_in_query.executeQuery1(sql);
          //if(rs!=null)
          //{     response.sendRedirect("../public/err.jsp"); rs.close();  }
          url="insert into ware_in (in_id,ware_id,in_quantity,in_time,in_price,work_id,in_approve)";
          url=url+"values('"+forminsert_in.getIn_id()+"','"+ware_id+"','"+i+"','"+forminsert_in.getIn_time()+"','"+j+"','"+forminsert_in.getWork_id()+"','no')";
          
          forminsert_in_query.executeUpdate2(url);
          out.println("<font size=3 color=blue>正在处理信息，请稍后......</font><meta http-equiv='refresh' content='2;url=formlook_in.jsp'>");
          forminsert_in_query.closeStmt();
          forminsert_in_query.closeConn();
        %>
     </body>
</html>
