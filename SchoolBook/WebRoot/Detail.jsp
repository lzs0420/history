<%-- 
    Document   : Detail
    Created on : 2014-9-4, 15:54:05
    Author     : Administrator
--%>

<%@page import="com.bean.BookDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>教材详情</title>
    </head>
    <body>
        <%if((String)request.getAttribute("suc")=="1"){%>
        <Script type="text/script">alert("添加成功！");</Script>
        <%request.setAttribute("suc", '0');}%>
        <%
            String bookid,bname,bauth,bpress;
            float bprice;
            BookDetail bd=(BookDetail)request.getAttribute("bd");
            bookid=bd.getB_id();
            bname=bd.getB_name();
            bauth=bd.getB_author();
            bprice=bd.getB_price();
            bpress=bd.getB_press();
        %>
        <table width="800" align="center" >
          <tr>
              <td width="350">
                  <table  align="right">
                      <tr>
                          <td>
                              <table >
                                  <tr>
                                      <td>
                                          <img src="css/<%=bookid%>.jpg" />
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                  </table>
              </td>
              <td>
                  <table cellspacing="20" align="left">
                      <tr>
                          <td>
                             <table >
                                 <tr>
                                     <td width="70">
                                         <strong>ISBN</strong>
                                     </td>
                                     <td>
                                         <strong><%=bookid%></strong>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                      <tr>
                          <td>
                             <table >
                                 <tr>
                                     <td width="70">
                                         <strong>书名</strong>
                                     </td>
                                     <td>
                                          <strong><%=bname%></strong>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                      <tr>
                          <td>
                             <table>
                                 <tr>
                                     <td width="70">
                                         <strong>出版社</strong>
                                     </td>
                                     <td>
                                         <strong><%=bpress%></strong>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                      <tr>
                          <td>
                             <table>
                                 <tr>
                                     <td width="70">
                                         <strong>作者</strong>
                                     </td>
                                     <td>
                                          <strong><%=bauth%></strong>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                      <tr>
                          <td>
                             <table>
                                 <tr>
                                     <td width="70">
                                         <strong>价格</strong>
                                     </td>
                                     <td>
                                        <strong><%=bprice%></strong>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                        <tr>
                          <td>
                             <table>
                                 <tr>
                                     <td width="70">
                                         <strong>个数</strong>
                                     </td>
                                     <td>
                                         <input id="val" type="text" value="1"  style='width: 30px;height:30px;text-align: center'>
                                     </td>
                                 </tr>
                             </table>
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
          <tr align="left">
              <td></td>
              <td>
                  <table>
                      <tr>
                          <td>
                              <table>
                                  <tr>
                                      <td>
                                          <button>提交购买</button>
                                      </td>
                                      <td>
                                          <input type="button" onclick="location.href='addcart?bid='+'<%=bookid%>'+'&&number='+document.getElementById('val').value" value="添加购物车"/>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
          <tr>
              <td>
                  <table align="center">
                      <tr>
                          <td>
                           <strong>详细信息</strong>
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
      </table>
 
    </body>
</html>
