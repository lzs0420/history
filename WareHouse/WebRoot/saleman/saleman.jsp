<%-- 
    Document   : saleman
    Created on : 2013-12-10, 12:51:03
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>销售人员</title>
    </head>
    <body>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
            <jsp:include page="../public/sidebar_saleman.jsp"></jsp:include>
        </div>
            <jsp:include page="../public/return.jsp"></jsp:include>
            <div style="text-align: center">
                <a href="../public/warelook.jsp"><img src="../images/查看物品.gif" width="300" height="100" /></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../public/changepassword.jsp"><img src="../images/修改密码.gif" width="300" height="100" /></a>
                <br>
              <a href="formlook_out.jsp"><img src="../images/查看出库单.gif" width="300" height="100" /></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="forminsert_out.jsp"><img src="../images/新出库单.gif" width="300" height="100" /></a>
        </div><jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>
