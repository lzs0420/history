<%-- 
    Document   : Display_cart
    Created on : 2014-9-10, 13:20:12
    Author     : Administrator
--%>

<%@page import="com.bean.CartDetail"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_cart.css" />
        <title>购物车</title>
    </head>
    <body>
        <div id="container">
        <div id="header"><img src="css/login.jpg"  width="1000" height="200"></div>
        <div id="maincontent">
            <%
                String cid,bid,bname,bauth,bpress;
                int num;
                float bprice;
                CartDetail cd=new CartDetail();
                List l=(List)request.getAttribute("l");
            %>
            <form action="createbooktable" name="form1" method="get">
            <table align="center">
                <tr>
                    <td>
                        <table border="1">
                            <tr>
                                <td class="check">
                                    <input type="checkbox" name="allcheck">
                                </td> 
                                <td class="cno">
                                    <strong>编号</strong>
                                </td>
                                <td class="isbn">
                                    <strong>ISBN</strong>
                                </td>
                                <td class="bname">
                                    <strong>书名</strong>
                                </td>
                                <td class="auth">
                                    <strong>作者</strong>
                                </td>
                                <td class="press">
                                    <strong>出版社</strong>
                                </td>
                                <td class="price">
                                    <strong>价格</strong>
                                </td>
                                <td class="num">
                                    <strong>数量</strong>
                                </td>
                                <td class="op">
                                    <strong>操作</strong>
                                </td>
                            </tr>
                        </table>      
                    </td>
                </tr>
                <tr>
                    <td>
                        <table border="1">
                            <%
                              for(int i=0;i<l.size();i++)
                              {
                                  cd=(CartDetail)l.get(i);
                                  cid=cd.getC_id();
                                  bid=cd.getB_id();
                                  bname=cd.getB_name();
                                  bauth=cd.getB_auth();
                                  bpress=cd.getB_press();
                                  bprice=cd.getB_price();
                                  num=cd.getB_no();                                 
                            %>
                            <tr>
                                <td class="check"><input type="checkbox" name="checkbuy" value="<%=cid%>"></td>
                                <td class="cno"><%=i+1%></td>
                                <td class="isbn"><%=bid%></td>
                                <td class="bname"><%=bname%></td>
                                <td class="auth"><%=bauth%></td>
                                <td class="press"><%=bpress%></td>
                                <td class="price"><%=bprice%></td>
                                <td class="num"><%=num%></td>
                                <td class="op"><input type="button" value="删除" onclick="location.href='deletecart?cid='+<%=cid%>"></td>
                            </tr>
                            <%}%>
                        </table>
                    </td>
                </tr>
                <tr>
                    <table>
                        <tr>
                            <td><hr></td>
                        </tr>
                        <tr>
                            <td align="right"><input type="submit" value="全部提交" style="width: 80px;height: 40px;"></td>
                        </tr>
                    </table>
                </tr>
            </table>
             </form>
        </div>
        </div>
    </body>
</html>
