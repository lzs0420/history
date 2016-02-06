<%-- 
    Document   : bookin
    Created on : 2014-9-11, 12:51:03
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="com.bean.Book_in"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_lackrecord.css" />
        <title>JSP Page</title>
    </head>
    
    
    <style type="text/css">
        
        .mid{text-align: center;width: 72px}
        .mdate{text-align: center;width: 108px}
        .isbn{text-align: center;width: 108px}
        .bname{text-align: center;width: 108px}
        .bprice{text-align: center;width: 36px}
        .bauthor{text-align: center;width: 72px}
        .bpress{text-align: center;width: 96px}
        .num{text-align: center;width: 20px}
        .total{text-align: center;width: 32px}
        .aname{text-align: center;width: 72px}
        
    </style>
    <body>
        <%
            String biid,bidate,bid,bname,bauthor,bpress,aid,aname;
            int num,bprice;
            List l=(List)request.getAttribute("l");
            Book_in m=new Book_in();         
        %>
        <table align="center" border="1">
            <tr>
                <%--  <td>
                    <table border="1" width="700px">
                        <tr>--%>
                            <td class="biid"><strong>入库单号</strong></td>
                            <td class="bidate"><strong>入库日期</strong></td>
                            <td class="isbn"><strong>ISBN</strong></td>
                            <td class="bname"><strong>书名</strong></td>
                            <td class="bprice"><strong>价格</strong></td>
                            <td class="bauthor"><strong>作者</strong></td>
                            <td class="bpress"><strong>出版商</strong></td>
                            <td class="num"><strong>数量</strong></td>
                            <td class="total"><strong>总价</strong></td>
                            <td class="aname"><strong>经手人</strong></td>
                            <%--        </tr>
                    </table>
                </td>--%>
            </tr>
         <%--     <tr>
               <td>
            <table border="1" width="700px">--%>
                <%
                for(int i=0;i<l.size();i++){
                    
                m=(Book_in)l.get(i);
                biid=m.getBI_id();
                bidate=m.getBI_date();
                bid=m.getB_id();
                aid=m.getA_id();
                aname=m.getA_name();
                bname=m.getB_name();
                bprice=m.getB_price();
                bauthor=m.getB_author();
                bpress=m.getB_press();
                num=m.getB_no();
                %>
                <tr>
                    <td class="mid"><%=biid%></td>
                    <td class="mdate"><%=bidate%></td>
                    <td class="isbn"><%=bid%></td>
                    <td class="bname"><%=bname%></td>
                    <td class="bprice"><%=bprice%></td>
                    <td class="bauthor"><%=bauthor%></td>
                    <td class="bpress"><%=bpress%></td>
                    <td class="num"><%=num%></td>
                    <td class="total"><%=num*bprice%></td>
                    <td class="aname"><%=aname%></td>
                </tr>
                <%}%>
                <%--  </table>
                </td>
            </tr>--%>
        </table>
    </body>
</html>
