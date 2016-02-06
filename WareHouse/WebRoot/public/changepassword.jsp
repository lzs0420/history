<%-- 
    Document   : changepassword
    Created on : 2013-12-8, 2:27:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>修改密码</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
    </head>
    <body>
        <% 
            String temp=(String)session.getAttribute("job");
            temp="sidebar_"+temp+".jsp";
        %>
        <jsp:include page="public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
            <jsp:include page="return.jsp"></jsp:include>
        <div>
        <fieldset style="border:solid #990000 3px">
            <legend style="border:solid #0099cc 3px">
                <h2 class="h2">请修改密码&nbsp;<%=(String)session.getAttribute("name")%></h2></legend>
        <form action="#" method="post" name="form_changepassword" class="forminput" onsubmit="return check_changepassword();" >
         <center>
             请输入旧密码：<input class="textinput" type="password" name="oldpassword"><br><br>
         请输入新密码：<input class="textinput" type="password" name="newpassword1"><br><br>
         请再输入一遍：<input class="textinput" type="password" name="newpassword2"><br><br>
         <input class="resetbutton" type="reset" name="Reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;
         <input class="submitbutton" type="submit" name="submit" value="修改" ><br>
          </center>
         </form></fieldset>
            </div><jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

