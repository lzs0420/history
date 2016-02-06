<%-- 
    Document   : book
    Created on : 2014-9-12, 13:02:44
    Author     : Administrator
--%>

<%@page import="com.bean.Book"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String bname,bid;
            float bprice;
            int bstore,i=0;
            List l=(List)request.getAttribute("l"); 
            Book b;
        %>
        <div id="container">
            <table align="center" cellspacing="25px">
                <%
                    for(;i<l.size();i++){
                       b=(Book)l.get(i);
                       bid=b.getB_id();
                       bname=b.getB_name();
                       bprice=b.getB_price();
                       bstore=b.getB_store();
                    if(i%3==0){
                 %>
                    <tr>
                    <td class="tt"><p align="center"><a href="bookdetail?bid=<%=bid%>"><img src="css/<%=bid%>.jpg"/></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bname%></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bprice%></a></p>
                    </td>
                <%} else if(i%3==1){%>
                    <td class="tt"><p align="center"><a href="bookdetail?bid=<%=bid%>"><img src="css/<%=bid%>.jpg"/></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bname%></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bprice%></a></p>
                    </td>
                <%} else{%>
                    <td class="tt"><p align="center"><a href="bookdetail?bid=<%=bid%>"><img src="css/<%=bid%>.jpg"/></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bname%></a></p>
                                   <p align="center"><a href="bookdetail?bid=<%=bid%>"><%=bprice%></a></p>
                    </td>
                    </tr>
                <%}}if(i%3==1){%>
                    <td></td><td></td></tr>
                <%} if(i%3==2){%>
                    <td></td></tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
