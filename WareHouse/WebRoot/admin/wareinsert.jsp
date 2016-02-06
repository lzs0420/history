<%-- 
    Document   : wareinsert
    Created on : 2013-12-7, 13:23:36
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<jsp:useBean id="wareinsert" scope="session" class="com.jsp.ware"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>新商品</title>
    <%! String sql,ware_id;%>
    <%
        wareinsert.getConn("warehouse_m", "root", "123456");
        sql="select ware_id from ware";
        ResultSet rs=wareinsert.executeQuery1(sql);
        rs.last();
        ware_id=rs.getString(1);
        ware_id=wareinsert.stringadd(ware_id);
        wareinsert.setWare_id(ware_id);
        wareinsert.closeStmt();
         wareinsert.closeConn();
    %>
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
        <div align="center"><font color="#000000" size="5">提交新商品 </font> </div>
        <form name="form_wareinsert" method="post" action="#" onsubmit="return check_wareinsert();">
                <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
                        <td width="46%" align="center">商品号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=ware_id%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">商品名</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_name" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">类型</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                            <select name="ware_type">
                                <option value="large">large</option>
                                <option value="middle">middle</option>
                                <option value="small">small</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">行业</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_business" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">品牌</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_brand" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">进价</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_pricein" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">售价</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_priceout" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">最小库存量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_min" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">实际库存量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_real" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">销售量</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=0%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">生存日期</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_mfdate" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">入库日期</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="ware_indate" size="15">
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
        </form><jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>