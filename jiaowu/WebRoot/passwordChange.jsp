<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
</head>
<body style="text-align:center">
<form method="post" action="passwordChange1.jsp">
<table align="center">
              <tr><td>旧密码&nbsp;&nbsp;：</td><td><input type="password" name="password1"/></td></tr>
             <tr><td>新密码&nbsp;&nbsp;：</td><td><input type="password" name="password2"/></td></tr>
              <tr><td>重复密码：</td><td><input type="password" name="password3"/></td></tr>
              <tr><td><input type="reset" value="重置"/></td><td><input type="submit" value="修改"/></td></tr>
              </table>
              </form>
</body>
</html>