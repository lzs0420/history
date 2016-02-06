<%-- 
    Document   : material
    Created on : 2014-9-10, 15:47:42
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="com.bean.Material"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles_lackrecord.css" />
        <title>JSP Page</title>
    </head>
    <script type="text/javascript">
        function fun_sure(var1){
            var temp=document.getElementById(var1).title;
            var num=prompt("输入购书数量","");
            if (num!==null && num!==""){
             // alert(temp+'&num='+num);
                location.href=temp+'&num='+num;
                //document.getElementById(s).innerHTML='已购买';
            }


        }
        
    </script>
    
    <style type="text/css">
        
        .mid{text-align: center;width: 72px}
        .mdate{text-align: center;width: 108px}
        .isbn{text-align: center;width: 108px}
        .bname{text-align: center;width: 108px}
        .bprice{text-align: center;width: 36px}
        .bauthor{text-align: center;width: 72px}
        .bpress{text-align: center;width: 108px}
        .num{text-align: center;width: 36px}
        .sure{text-align: center;width: 72px}
        
    </style>
    <body>
        <%
            String mid,mdate,bid,bname,bauthor,bpress;
            int num,bprice;
            List l=(List)request.getAttribute("l");
            Material m=new Material();         
        %>
        <table align="center" border="1">
            <tr>
                <%--  <td>
                    <table border="1" width="700px">
                        <tr>--%>
                            <td class="mid"><strong>待购书单号</strong></td>
                            <td class="mdate"><strong>代购单日期</strong></td>
                            <td class="isbn"><strong>ISBN</strong></td>
                            <td class="bname"><strong>书名</strong></td>
                            <td class="bprice"><strong>价格</strong></td>
                            <td class="bauthor"><strong>作者</strong></td>
                            <td class="bpress"><strong>出版商</strong></td>
                            <td class="num"><strong>数量</strong></td>
                            <td class="sure"><strong>确认购书</strong></td>
                            <%--        </tr>
                    </table>
                </td>--%>
            </tr>
         <%--     <tr>
               <td>
            <table border="1" width="700px">--%>
                <%
                for(int i=0;i<l.size();i++){
                    
                m=(Material)l.get(i);
                mid=m.getM_id();
                mdate=m.getM_date();
                bid=m.getB_id();
                bname=m.getB_name();
                bprice=m.getB_price();
                bauthor=m.getB_author();
                bpress=m.getB_press();
                num=m.getB_no();
                %>
                <tr>
                    <td class="mid"><%=mid%></td>
                    <td class="mdate"><%=mdate%></td>
                    <td class="isbn"><%=bid%></td>
                    <td class="bname"><%=bname%></td>
                    <td class="bprice"><%=bprice%></td>
                    <td class="bauthor"><%=bauthor%></td>
                    <td class="bpress"><%=bpress%></td>
                    <td class="num"><%=num%></td>
                    <td class="sure"><a href="#" title="msureServlet?mid=<%=mid%>&bid=<%=bid%>" onclick="fun_sure(<%=mid%>)" id="<%=mid%>">确认</a></td>
                </tr>
                <%}%>
                <%--  </table>
                </td>
            </tr>--%>
        </table>
    </body>
</html>

