<%-- 
    Document   : staffinsert
    Created on : 2013-12-7, 16:22:08
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<jsp:useBean id="staffinsert" scope="session" class="com.jsp.staff"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>新增员工</title>
        <% 
            String temp=(String)session.getAttribute("job");
            temp="../public/sidebar_"+temp+".jsp";
        %>
        <jsp:include page="../public/public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp%>"></jsp:include>
        </div>
        <jsp:include page="../public/return.jsp"></jsp:include>
    <%! String sql,work_id;%>
    <%
        staffinsert.getConn("warehouse_m", "root", "123456");
        sql="select work_id from staff";
        ResultSet rs=staffinsert.executeQuery1(sql);
        rs.last();
        work_id=rs.getString(1);
        work_id=staffinsert.stringadd(work_id);
        staffinsert.setWork_id(work_id);
        staffinsert.closeStmt();
         staffinsert.closeConn();
    %>
    </head>
    <body>
        <div align="center"><font color="#000000" size="5">新员工信息 </font> </div>
        <form name="form_staffinsert" method="post" action="#" onsubmit="return check_staffinsert();">
                <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
      <tr>
                        <td width="46%" align="center">员工号</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <%=work_id%>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">员工名</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="name" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">年龄</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                             <input type="text" name="age" size="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">性别</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="sex" value="male"/>男
                              <input type="radio" name="sex" title="ewlktrjlerkwtgegl" value="female"/>女
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">职位</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <select name="job">
                              <option value="saleman">销售人员</option>
                              <option value="buyer">采购人员</option>
                              <option value="admin">库管人员</option>
                              <option value="manager">经理</option>
                          </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">初始密码</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="password" size="15">
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" align="center">
                        <input type="submit" name="submit" value="提交">
                            &nbsp;&nbsp;&nbsp;
                          <input type="reset" name="reset" value="清空">
                          </td>
                    </tr>
            </table>
        </form>
        <jsp:include page="../public/footer.jsp"></jsp:include>
    </body>
</html>
