<%-- 
    Document   : staffchange
    Created on : 2013-12-7, 16:58:19
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.lang.*"%>
<jsp:useBean id="staffchange" scope="session" class="com.jsp.staff"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>修改员工信息</title>
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
        work_id=(String)request.getParameter("work_id");
        staffchange.setWork_id(work_id);
        staffchange.getConn("warehouse_m", "root", "123456");
        sql="select * from staff where work_id='"+work_id+"'";
        ResultSet rs=staffchange.executeQuery1(sql);
        if(rs.next()){
    %>
    </head>
    <body>
        <div align="center"><font color="#000000" size="5">修改员工信息 </font> </div>
        <form name="form_staffchange" method="post" action="#" onsubmit="return check_staffchange();">
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
                            <input type="text" name="name" size="15" value=<%=rs.getString(2)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">年龄</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                             <input type="text" name="age" size="15" value=<%=rs.getInt(3)%>>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">性别</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                              <input type="radio" name="sex" value="male" checked="checked"/>男
                              <input type="radio" name="sex" title="ewlktrjlerkwtgegl" value="female"/>女
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">职位</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <select name="job">
                              <option value="saleman" selected>销售人员</option>
                              <option value="buyer">采购人员</option>
                              <option value="admin">库管人员</option>
                              <option value="manager">经理</option>
                          </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="46%" align="center">初始密码</td>
                        <td width="54%">&nbsp;&nbsp;&nbsp;
                          <input type="text" name="password" size="15" value=<%=rs.getString(6)%>>
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
    <%}
     if(rs!=null) rs.close();
	    staffchange.closeStmt();
	    staffchange.closeConn();
    %>
</html>