<%-- 
    Document   : passwordfind
    Created on : 2013-12-7, 23:25:07
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="passwordfind" scope="session" class="com.jsp.staff"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="../js/inputcheck.js"></script>
        <title>找回密码</title>
    </head>
    <%! String sql,temp,temp1;%>
     <% 
        String temp1=(String)session.getAttribute("job");
        temp1="sidebar_"+temp1+".jsp";
        temp=(String)session.getAttribute("work_id");
        sql="select question,answer from staff where work_id= "+temp;
        passwordfind.getConn("warehouse_m", "root", "123456");
        ResultSet rs=passwordfind.executeQuery1(sql);
        if(rs.next()){
    %>
    <body>
        <jsp:include page="public.jsp"></jsp:include>
        <div style="float: left">
        <jsp:include page="<%=temp1%>"></jsp:include>
        </div>
            <jsp:include page="return.jsp"></jsp:include>
            <form action="passwordfind_query.jsp" method="post" name="form_passwordfind" onsubmit="return check_passwordfind();">
      <fieldset style="border:solid #990000 3px">
      <legend style="border:solid #0099cc 3px">找回密码</legend>
      问题  ：<%=rs.getString("question")%><br>
      答案  ：<textarea name="answer" rows="2" cols="100" onmousedown="javascript:this.innerHTML='';">请在这里输入答案</textarea><br>
      <input type="reset" class='resetbutton' name="reset" value="重置">
      <input type="submit" class="submitbutton" name="submit" value="修改" >
      </fieldset>
    </form>
    </body>
    <%}
        if(rs!=null)rs.close();
	    passwordfind.closeStmt();
	    passwordfind.closeConn();
    %>
</html>
