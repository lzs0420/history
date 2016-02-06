<%-- 
    Document   : formlook_out
    Created on : 2013-12-6, 1:31:21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="formchange_out" scope="session" class="com.jsp.ware_out" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>修改出库单</title>
     </head>
     <% 
            String temp=(String)session.getAttribute("job");
            temp="../public/sidebar_"+temp+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
   <%!String out_id,url,sql,time; %>   
   <body bgcolor="#ffffff">
      <div align="center"><font color="#000000" size="5">修改出库单 </font> </div>
      <%
          out_id=(String)request.getParameter("out_id");
          url=(String)session.getAttribute("work_id");
          time=formchange_out.nowdate(time);
          formchange_out.setOut_id(out_id);
          formchange_out.setWork_id(url);
          formchange_out.setOut_time(time);
          formchange_out.getConn("warehouse_m","root","123456");
          sql="select * from ware_out where out_id='"+out_id+"'";
          ResultSet  rs=formchange_out.executeQuery1(sql);
          if(rs.next()){
      %>
      <form name="form_formchange_out" method="post" action="#" onsubmit="return check_formchange_out();">
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
                        <td width="46%" align="center">出库单号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=out_id%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">商品号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_id" size="15" value=<%=rs.getString(2)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">数量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                        <input type="text" name="out_quantity" size="15" value=<%=rs.getInt(3)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">时间</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=time%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">价格</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="out_price" size="15"value=<%=rs.getInt(5)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">员工号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=url%>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" align="center">
                        <input type="submit" name="Submit" value="提交">
                            &nbsp;&nbsp;&nbsp;
                          <input type="reset" name="reset" value="清空">
                          </td>
                    </tr>
          </table>
      </form>
      <%}
      if(rs!=null) rs.close();
	    formchange_out.closeStmt();
	    formchange_out.closeConn();
      %><jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>


