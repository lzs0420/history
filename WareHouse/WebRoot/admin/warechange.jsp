<%-- 
    Document   : warechange
    Created on : 2013-12-7, 14:20:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<!DOCTYPE html>
<jsp:useBean id="warechange" scope="session" class="com.jsp.ware" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>修改商品</title>
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
        <%!String ware_id,url,sql,time; %>   
      <div align="center"><font color="#000000" size="5">修改商品 </font> </div>
      <%
          ware_id=(String)request.getParameter("ware_id");
          warechange.setWare_id(ware_id);
          warechange.getConn("warehouse_m","root","123456");
          sql="select * from ware where ware_id='"+ware_id+"'";
          ResultSet  rs=warechange.executeQuery1(sql);
          if(rs.next()){
      %>
      <form name="form_warechange" method="post" action="#" onsubmit="return check_warechange();">
      <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center" >
      <tr>
                        <td width="46%" align="center">商品号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=ware_id%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">商品名</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_name" size="15" value=<%=rs.getString(2)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">类型</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                        <input type="text" name="ware_type" size="15" value=<%=rs.getString(3)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">行业</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_business" size="15" value=<%=rs.getString(4)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">品牌</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_brand" size="15" value=<%=rs.getString(5)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">进价</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_pricein" size="15" value=<%=rs.getInt(6)%>>
                        </td>
                    </tr>
                     <tr>
                        <td width="46%" align="center">售价</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_pricein" size="15" value=<%=rs.getInt(7)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">最小库存</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_min" size="15" value=<%=rs.getInt(8)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">实际库存</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_real" size="15" value=<%=rs.getInt(9)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">销售量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_sell" size="15" value=<%=rs.getInt(10)%>>
                        </td>
                    </tr>
                     <tr>
                        <td width="46%" align="center">生产日期</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_mfdate" size="15" value=<%=rs.getString(11)%>>
                        </td>
                    </tr>
                     <tr>
                        <td width="46%" align="center">入库日期</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <input type="text" name="ware_indate" size="15" value=<%=rs.getString(12)%>>
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
	    warechange.closeStmt();
	    warechange.closeConn();
      %><jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>
