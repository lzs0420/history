<%-- 
    Document   : forminsert_in
    Created on : 2013-12-6, 23:45:53
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="forminsert_in" scope="session" class="com.jsp.ware_in" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>提交新出库单</title>
     </head>
     <% 
            String temp1=(String)session.getAttribute("job");
            temp1="../public/sidebar_"+temp1+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp1%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
   <%!String url,sql,time,temp; %>   
   <%
   forminsert_in.getConn("warehouse_m","root","123456");
          sql="select in_id from ware_in";
          ResultSet  rs=forminsert_in.executeQuery1(sql);
          rs.last();
          url=rs.getString(1);
          time=forminsert_in.nowdate(time);
          url=forminsert_in.stringadd(url);
          temp=(String)session.getAttribute("work_id");
          forminsert_in.setIn_time(time);
          forminsert_in.setIn_id(url);
          forminsert_in.setWork_id(temp);
   %>
   <body bgcolor="#ffffff">
      <div align="center"><font color="#000000" size="5">提交新入库单 </font> </div>
      <form name="form_forminsert_in" method="post" action="#" onsubmit="return check_forminsert_in();">
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
                        <td width="46%" align="center">入库单号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=url%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">商品号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_id" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">数量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                        <input type="text" name="in_quantity" size="15">
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
                          <input type="text" name="in_price" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">员工号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=temp%>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" align="center">
                        <input type="submit" name="submit" value="提交">
                            &nbsp;&nbsp;&nbsp;
                          <input type="reset" name="reset" value="清空">
                          </td>
                    </tr>
          </table>
      </form>
      <jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>

