<%-- 
    Document   : warefind1
    Created on : 2013-12-14, 15:53:57
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查找商品</title>
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
            <label for="single" >单个条件</label>
            <input type="radio" name="condition" id="single" vlaue="single" 
            onclick="document.getElementById('single1').style.display='block';document.getElementById('many1').style.display='none';" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="many" >组合条件</label>
            <input type="radio" name="condition" id="many" vlaue="many" 
                   onclick="document.getElementById('many1').style.display='block';document.getElementById('single1').style.display='none';"/>
     
        <div id='single1' style="display: none">
            <jsp:include page="warefind_single1.jsp"></jsp:include>
        </div>
        <div id="many1" style="display: none">
           <jsp:include page="warefind_many1.jsp"></jsp:include>
        </div>
        
    </body>
</html>