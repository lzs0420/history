<%-- 
    Document   : warelook
    Created on : 2013-12-6, 0:56:22
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>JSP Page</title>
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
        <form name="form_warelook1" method="post" action="#" onsubmit="return check_warelook1();">
            查询次序：<select name="order">
                <option value="#">请选择</option>
                <option value="asc">顺序</option>
                <option value="desc">逆序</option>
            </select><br><br>
            查询名称：<select name="select_require">
        <option value="#" selected>请选择</option>
        <option value="ware_id" >商品号</option>
        <option value="ware_name" >商品名</option>
        <option value="ware_type" >型号</option>
        <option value="ware_business" >行业</option>
        <option value="ware_brand" >品牌</option>
        <option value="ware_pricein" >进价</option>
        <option value="ware_priceout" >售价</option>
        <option value="ware_real" >库存量</option>
        <option value="ware_sell" >销售量</option>
        <option value="ware_mfdate" >生产日期</option>
        <option value="ware_indate" >入库日期</option>
            </select><br><br>
            <input name="查询" type="submit" value="查询">&nbsp;&nbsp;
                            <input name="重置" type="reset" value="重置"><br/><br/><br/><br/>
        </form>
    </body>
</html>


