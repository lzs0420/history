<%-- 
    Document   : Display_booktable
    Created on : 2014-9-5, 15:00:39
    Author     : Administrator
--%>

<%@page import="com.service.LoginService"%>
<%@page import="com.bean.BookTable"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_booktable.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            LoginService u=(LoginService)session.getAttribute("LoginService");
            String btid,uname,uphone,bid,bname,btdate,btsure;
            float bprice;
            int bstore,num,value;
            value=u.getValue();
            List l=(List)request.getAttribute("l");
            BookTable bt;
        %>
        <div id="container">
        <table align="center">
            <tr>
                <td>
             <table border="1">
                 <tr>
                     <td class="btid">
                    <strong>编号</strong>
                </td>
                <td class="date">
                    <strong>生成日期</strong>
                </td>
                <%if(value==2){%>
                <td class="name">
                    <strong>姓名</strong>
                </td>
                <td class="phone">
                    <strong>电话号码</strong>
                </td><%}%>
                <td class="isbn">
                    <strong>ISBN</strong>
                </td>
                <td class="bname">
                    <strong>教材名</strong>
                </td>
                <td class="price">
                    <strong>价格</strong>
                </td>
                <td class="num">
                    <strong>数量</strong>
                </td>
                <%if(value==2){%>
                <td class="store">
                    <strong>库存</strong>
                </td>
                <td class="op">
                    <strong>生成缺书单</strong>
                </td>
                <td class="op">
                    <strong>是否发书</strong>
                </td><%}else {%>
                <td class="op">
                    <strong>总价</strong>
                </td>
                <td class="op">
                    <strong>是否缺书</strong>
                </td>
                <%}%>
                 </tr>
             </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table border="1">
        <%
            for(int i=0;i<l.size();i++){
            bt=(BookTable)l.get(i);
            btid=bt.getBT_id();
            uname=bt.getU_name();
            uphone=bt.getU_phone();
            bid=bt.getB_id();
            bname=bt.getB_name();
            bprice=bt.getB_price();
            bstore=bt.getB_store();
            num=bt.getB_no();
            btdate=bt.getBT_date();    
            btsure=bt.getBT_sure();
        %>
        <tr>
            <td class="btid">
                <%=btid%>
            </td>
            <td class="date">
                <%=btdate%>
            </td>
            <%if(value==2){%>
            <td class="name">
                <%=uname%>
            </td>
            <td class="phone">
                <%=uphone%>
            </td><%}%>
            <td class="isbn">
                <%=bid%>
            </td>
            <td class="bname">
                <%=bname%>
            </td>
            <td class="bprice">
                <%=bprice%>
            </td>
            <td class="num">
                <%=num%>
            </td>
            <%if(value==2){%>
            <td class="store">
                <%=bstore%>
            </td>
            <%if(num>bstore){%>
            <td class="op">
                <%if(btsure.equals("yes")){%>
                    <p><font color="blue">已缺书</font></p>
                <%} else{%>
                <input type="button" value="缺书" onclick="location.href='lackbook?btid='+<%=btid%>">
                <%}%>
            </td>
            <td class="op">
                <p><font color="red">不能发书</font></p>
            </td>
            <%} else {%>
            <td class="op">
                <p><font color="#c0c0c0">不缺书</font></p>
            </td>
            <td class="op">
                <input type="button" value="发行" onclick="location.href='createorder?btid='+<%=btid%>">
            </td>
            <%}}else{%>
            <td class="op">
                <%=bprice*num%>
            </td>
            <td class="op">
                <%if(btsure.equals("yes")){%>
                    <p><font color="red">已缺书</font></p>
                <%} else{%>
                    <p><font color="blue">等待确认</font></p>
                <%}%>
            </td>
            <%}%>
        </tr>
        <%}%>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    </body>
</html>
