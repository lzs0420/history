<%-- 
    Document   : passwordfind_query
    Created on : 2013-12-7, 23:54:58
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="passwordfind_query" scope="session" class="com.jsp.staff"/>
<jsp:useBean id="passwordfind" scope="session" class="com.jsp.staff"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>找回密码处理界面</title>
    </head>
    <body>
         <%! String sql,temp,password,temp1;%>
       <% 
            String temp1=(String)session.getAttribute("job");
            temp1="sidebar_"+temp1+".jsp";
        sql=request.getParameter("answer");
        out.println(sql);
        temp=(String)session.getAttribute("work_id");
        password=passwordfind_query.passwordfind(temp, sql);
        if(password!=null){
    %>
        <jsp:include page="public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp1%>"></jsp:include>
        </div>
        <jsp:include page="return.jsp"></jsp:include>
        <h1 align="center" >已找回密码</h1>
        <h3 align="center" >请尽快修改密码</h3>
        <ul>
            <li><b>password : </b><%=password%></li>
        </ul>
    <% }
        else{
            out.println("<center><h2>答案错误！！</h2></center>");
            out.print("<script>if(confirm(\"重新输入答案点击确定（sure）\"+'\\n'+\"重新登陆点击取消（cancel）\"))"
                    + "{window.open(\"passwordfind.jsp?work_id='"+temp+"'\",\"_self\");}"
                    + "else{window.open(\"login.html\",\"_self\");}</script>");
        }
    %><jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
