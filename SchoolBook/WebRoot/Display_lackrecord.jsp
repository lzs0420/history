<%-- 
    Document   : Display_lackrecord
    Created on : 2014-9-10, 12:31:44
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="com.bean.LackRecord"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_lackrecord.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String lrid,lrdate,lrsure,bid,bname;
            int num;
            List l=(List)request.getAttribute("l");
            LackRecord lr=new LackRecord();         
        %>
        <table align="center">
            <tr>
                <td>
                    <table border="1">
                        <tr>
                            <td class="lrid"><strong>缺书单号</strong></td>
                            <td class="lrdate"><strong>缺书日期</strong></td>
                            <td class="isbn"><strong>ISBN</strong></td>
                            <td class="bname"><strong>书名</strong></td>
                            <td class="num"><strong>数量</strong></td>
                            <td class="num"><strong>生成待购书单</strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
            <table border="1">
                <%
                for(int i=0;i<l.size();i++){
                    
                lr=(LackRecord)l.get(i);
                lrid=lr.getLR_id();
                lrdate=lr.getLR_date();
                bid=lr.getB_id();
                bname=lr.getB_name();
                num=lr.getB_no();
                lrsure=lr.getLR_sure();
                %>
                <tr>
                    <td class="lrid"><%=lrid%></td>
                    <td class="lrdate"><%=lrdate%></td>
                    <td class="isbn"><%=bid%></td>
                    <td class="bname"><%=bname%></td>
                    <td class="num"><%=num%></td>
                    <% if(lrsure.equals("yes")){%>
                    <td class="num"><p><font color="blue">已生成</font></p></td>
                    <%} else {%>
                    <td class="num"><p><a href="waitbuy?lrid=<%=lrid%>" style="color: red">生成待购</a></p></td>
                    <%}%>
                </tr>
                <%}%>
            </table>
                </td>
            </tr>
    </body>
</html>
