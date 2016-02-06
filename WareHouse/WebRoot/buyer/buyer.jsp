<%-- 
    Document   : buyer
    Created on : 2013-12-13, 12:37:09
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>采购人员</title>
    </head>
    <body>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
            <jsp:include page="../public/sidebar_buyer.jsp"></jsp:include>
        </div>
            <jsp:include page="../public/return.jsp"></jsp:include>
            <div style="text-align: center">
                <a href="../public/warelook.jsp"><img src="../images/查看物品.gif" width="300" height="100" /></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../public/changepassword.jsp"><img src="../images/修改密码.gif" width="300" height="100" /></a>
                <br>
              <a href="formlook_in.jsp"><img src="../images/查看入库单.gif" width="300" height="100" /></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="forminsert_in.jsp"><img src="../images/新入库单.gif" width="300" height="100" /></a>
        </div><jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>
