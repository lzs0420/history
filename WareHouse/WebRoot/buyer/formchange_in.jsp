<%-- 
    Document   : formchange_in
    Created on : 2013-12-7, 0:01:16
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="formchange_in" scope="session" class="com.jsp.ware_in" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>修改入库单</title>
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
   <%!String in_id,url,sql,time; %>   
   <body bgcolor="#ffffff">
      <div align="center"><font color="#000000" size="5">修改入库单 </font> </div>
      <%
          in_id=(String)request.getParameter("in_id");
          url=(String)session.getAttribute("work_id");
          time=formchange_in.nowdate(time);
          formchange_in.setIn_id(in_id);
          formchange_in.setWork_id(url);
          formchange_in.setIn_time(time);
          formchange_in.getConn("warehouse_m","root","123456");
          sql="select * from ware_in where in_id='"+in_id+"'";
          ResultSet  rs=formchange_in.executeQuery1(sql);
          if(rs.next()){
      %>
      <form name="form_formchange_in" method="post" action="#" onsubmit="return check_formchange_in();">
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
                        <td width="46%" align="center">入库单号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=in_id%>
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
                        <input type="text" name="in_quantity" size="15" value=<%=rs.getInt(3)%>>
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
                          <input type="text" name="in_price" size="15"value=<%=rs.getInt(5)%>>
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
	    formchange_in.closeStmt();
	    formchange_in.closeConn();
      %><jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>
