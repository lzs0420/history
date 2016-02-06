<%-- 
    Document   : pwd
    Created on : 2014-9-10, 11:07:44
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align:center">
        <br><br><br><br><br>
<form method="post" action="pwdServlet">
<table align="center">
              <tr><td>旧密码&nbsp;&nbsp;：</td><td><input type="password" name="password1"/></td></tr>
             <tr><td>新密码&nbsp;&nbsp;：</td><td><input type="password" name="password2"/></td></tr>
              <tr><td>重复密码：</td><td><input type="password" name="password3"/></td></tr>
              <tr><td><input type="reset" value="重置"/></td><td><input type="submit" value="修改"/></td></tr>
              </table>
              </form>
</body>
</html>
