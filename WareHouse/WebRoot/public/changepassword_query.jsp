<%-- 
    Document   : index
    Created on : 2013-11-27, 19:30:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="gbk"%>
<%
  java.sql.Connection conn=null;
  java.lang.String strConn;
  java.sql.PreparedStatement preparedStmt,preparedStmt1=null;
  java.sql.ResultSet sqlRst=null;
  try{
  Class.forName("org.gjt.mm.mysql.Driver").newInstance();
 conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/warehouse_m", "root", "123456");
 preparedStmt=conn.prepareStatement("select work_id,password,name from staff where work_id=?");
 String temp=(String)session.getAttribute("work_id");
 String log="../"+(String)session.getAttribute("log");
  preparedStmt.setString(1,temp);
  sqlRst= preparedStmt.executeQuery();sqlRst.next();
  //if(!sqlRst.next()) {//out.println("�ʺų�����");
  String temp1=request.getParameter("newpassword1");
  //Integer num,c;
  if(sqlRst.getString("password").equals(request.getParameter("oldpassword")))
  { 
      preparedStmt1=conn.prepareStatement("update staff set password = ? where work_id = ?");
      preparedStmt1.setString(1,temp1);
      preparedStmt1.setString(2,temp);
      // num=preparedStmt1.executeUpdate();
     // c=num;
  if(preparedStmt1.executeUpdate()!=0){
 %>
 <h1>�޸�����ɹ���<br>2��󷵻�</h1>
 <h3>�糤ʱ��δ��Ӧ�����<a href=<%=log%>>�˴�</a></h3>
 <script>
     var t1=setTimeout("window.location.href=('<%=log%>')",2000);
 </script>
 <%}else{%>
 <h1>�޸�����ʧ�ܣ�δ֪ԭ�򣡣���<br>5��󷵻�</h1>
 <h3>�糤ʱ��δ��Ӧ�����<a href="javascript:history.back()">�˴�</a></h3>
 <script>
     var t1=setTimeout("history.back()",5000);
 </script>
 <%}}else{%>
 <h1>�������<br>5��󷵻�</h1>
 <h3>�糤ʱ��δ��Ӧ�����<a href="javascript:history.back()">�˴�</a></h3>
 <script>
     var t1=setTimeout("history.back()",5000);
 </script>
  <%}
  }catch(java.sql.SQLException e){
     out.println(e.toString());
 }finally{
      if(sqlRst!=null) try{sqlRst.close();}catch(java.sql.SQLException e1){
     out.println(e1.toString());
      }finally{
          try{
              if(preparedStmt1!=null)preparedStmt1.close();}catch(java.sql.SQLException e2){
     out.println(e2.toString());
              }finally{
              try{if(conn!=null) conn.close();}catch(java.sql.SQLException e3){
     out.println(e3.toString());
              }
          }
      }
  }
  %>
