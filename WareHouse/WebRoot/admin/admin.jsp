<%-- 
    Document   : admin
    Created on : 2013-12-13, 12:38:33
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>库管人员</title>
    </head>
    <body>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
            <jsp:include page="../public/sidebar_admin.jsp"></jsp:include>
        </div>
            <jsp:include page="../public/return.jsp"></jsp:include>
            <div style="text-align: center">
                <a href="warelook1.jsp"><img src="../images/查看物品.gif" width="300" height="100" /></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../public/changepassword.jsp"><img src="../images/修改密码.gif" width="300" height="100" /></a>
                <br>
              <a href="formlook_out1.jsp"><img src="../images/查看出库单.gif" width="300" height="100" /></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="formlook_in1.jsp"><img src="../images/查看入库单.gif" width="300" height="100" /></a>
        </div><jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>
