<%-- 
    Document   : Display_store
    Created on : 2014-9-5, 12:41:16
    Author     : Administrator
--%>

<%@page import="com.bean.Book"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_store.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String bid,bname,bauth,bpress;
            float bprice;
            int bstore;
            List l=(List)request.getAttribute("l"); 
            Book b;
        %>
        <div id="container">
            <table align="center" >
            <tr>
                <td>
                    <table border="1" >
                        <tr>
                            <td class="isbn">
                                <strong>ISBN</strong>
                            </td>
                            <td class="name">
                                <strong>书名</strong>
                            </td>
                            <td class="auth">
                                <strong>作者</strong>
                            </td>
                            <td class="price">
                                <strong>价格</strong>
                            </td>
                            <td class="press">
                                <strong>出版社</strong>
                            </td>
                            <td class="store">
                                <strong>库存</strong>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table border="1">
                        <%
                           for(int i=0;i<l.size();i++) {
                           b=(Book)l.get(i);
                           bid=b.getB_id();
                           bname=b.getB_name();
                           bprice=b.getB_price();
                           bauth=b.getB_author();
                           bpress=b.getB_press();
                           bstore=b.getB_store();
                        %> 
                        <tr>
                            <td class="isbn"><%=bid%></td>
                            <td class="name"><%=bname%></td>
                            <td class="auth"><%=bauth%></td>
                            <td class="price"><%=bprice%></td>
                            <td class="press"><%=bpress%></td>
                            <td class="store"><%=bstore%></td>
                        </tr>
                         <%}  %>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    </body>
</html>
