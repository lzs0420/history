<%-- 
    Document   : warefind_many_query
    Created on : 2013-12-11, 15:26:02
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="warefind_many_query" scope="session" class="com.jsp.ware" />
        <title>JSP Page</title>
    </head>
    <body>
         
        <jsp:include page="warefind.jsp"></jsp:include>
        <%! String sql,condition,value1,value2;
            ArrayList conditions1,conditions2,values1,values2,values3;
        %>
        <%
           condition=request.getParameter("condition");
           conditions1=(ArrayList)session.getAttribute("conditions");
              values1=(ArrayList)session.getAttribute("values");
              conditions2=(ArrayList)session.getAttribute("conditions01");
                values2=(ArrayList)session.getAttribute("values01");
                values3=(ArrayList)session.getAttribute("values02");
           if(condition.equals("ware_type")||condition.equals("ware_business")||condition.equals("ware_brand")){
              value1=request.getParameter("value");
            if(conditions1==null){
                conditions1=new ArrayList();
                values1=new ArrayList();
            }
            int j=conditions1.indexOf(condition);
            if(value1.equals("all")){
                 if(j!=-1){
                     conditions1.remove(j);
                     values1.remove(j);
                 }else{}
            }
            else{
                if(j!=-1){
                    values1.remove(j);
                    values1.add(j,value1);
                 }
                 else{
                    conditions1.add(condition);
                    values1.add(value1);
                 }
            }
            session.setAttribute("values", values1);
            session.setAttribute("conditions", conditions1);
           }
           else{
                value1=request.getParameter("value1");
                value2=request.getParameter("value2");
                
                if(conditions2==null){
                   conditions2=new ArrayList();
                   values2=new ArrayList();
                   values3=new ArrayList();
                }
                int k=conditions2.indexOf(condition);
                if(value2.equals("all")){
                   if(k!=-1){
                       conditions2.remove(k);
                       values2.remove(k);
                        values3.remove(k);
                   }
               }
               else{
                  if(k!=-1){
                      values2.remove(k);
                      values2.add(k,value1);
                      values3.remove(k);
                      values3.add(k,value2);
                  }
                  else{
                    conditions2.add(condition);
                    values2.add(value1);
                    values3.add(value2);
                  }
              }
                session.setAttribute("values01", values2);
                session.setAttribute("values02", values3);
            session.setAttribute("conditions01", conditions2);
           }
           System.out.println(sql);
            sql="select * from ware where ";
            int i;int u;
            if(conditions2==null&&conditions1!=null){
                if(conditions1.size()==0)
                     sql="select * from ware";
                else{
                     for(i=0;i<conditions1.size()-1;i++){
                          sql+=conditions1.get(i)+"='"+values1.get(i)+"' and ";
                     }
                     sql+=conditions1.get(i)+"='"+values1.get(i)+"'";System.out.println(sql);
                }
            }
            else if(conditions2!=null&&conditions1==null){
                if(conditions2.size()==0)
                     sql="select * from ware";
                else{
                    for(u=0;u<conditions2.size()-1;u++){
                        sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"' and ";
                    }
                    sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"'";
                }
            }
            else{
                if(conditions1.size()==0&&conditions2.size()==0)
                      {sql="select * from ware";}
                else if(conditions1.size()!=0&&conditions2.size()==0)
                      {for(i=0;i<conditions1.size()-1;i++){
                          sql+=conditions1.get(i)+"='"+values1.get(i)+"' and ";
                     }
                     sql+=conditions1.get(i)+"='"+values1.get(i)+"'";System.out.println(sql);}
                 else if(conditions1.size()==0&&conditions2.size()!=0){
                     for(u=0;u<conditions2.size()-1;u++){
                        sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"' and ";
                    }
                    sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"'";
                 }
                else{
                    for(i=0;i<conditions1.size();i++){
                           sql+=conditions1.get(i)+"='"+values1.get(i)+"' and ";
                    }
                    for(u=0;u<conditions2.size()-1;u++){
                           sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"' and ";
                    }
                     sql+=conditions2.get(u)+">='"+values2.get(u)+"' and "+conditions2.get(u)+"<='"+values3.get(u)+"'";
                }
            }
            System.out.println(sql);
            warefind_many_query.getConn("warehouse_m", "root", "123456");
            ResultSet rs=warefind_many_query.executeQuery1(sql);
        %>
         <div align="center"><font color="#000000" size="5">仓库管理系统 </font> </div>
      <table  width="80%" border="1" cellspacing="1" cellpadding="1" align="right" style="margin-right: 25px">
      <tr>
         <td width=10% align=center>商品号</td>
	     <td width=5% align=center>商品名</td>
	     <td width=10% align=center>型号</td>
	     <td width=10% align=center>行业</td>
	     <td width=10% align=center>品牌</td>
	    <td width=5% align=center>进价</td>
            <td width=5% align=center>售价</td>
	     <td width=10% align=center>最小库存</td>
	     <td width=10% align=center>实际库存</td>
	     <td width=5% align=center>销售量</td>
	    <td width=10% align=center>生产日期</td>
	    <td width=10% align=center>入库日期</td>
    </tr><%
	    if(rs.next()) do{
    %>
      <tr>
        <td width=10% align=center>
            <% String ss="img"+rs.getString(1);
               String rr="../images/ware/w"+rs.getString(1)+".jpg";%>
            <a href="ware.jsp?ware_id=<%=rs.getString(1)%>" onmouseout="javascript:document.getElementById('<%=ss%>').style.display='none';" 
                                   onmouseover="javascript:document.getElementById('<%=ss%>').style.display='block';
                                   document.getElementById('<%=ss%>').style.zIndex='1';"><img id='<%=ss%>' src="<%=rr%>"
                                   style="display: none;position: absolute;zIndex:-1"><%=rs.getString(1)%></a></td>
	     <td width=5% align=center><%=rs.getString(2)%></td>
	     <td width=10% align=center><%=rs.getString(3)%></td>
	     <td width=10% align=center><%=rs.getString(4)%></td>
	     <td width=10% align=center><%=rs.getString(5)%></td>
	    <td width=5% align=center><%=rs.getInt(6)%></td>
            <td width=5% align=center><%=rs.getInt(7)%></td>
	     <td width=10% align=center><%=rs.getInt(8)%></td>
	     <td width=10% align=center><%=rs.getInt(9)%></td>
	     <td width=5% align=center><%=rs.getInt(10)%></td>
	    <td width=10% align=center><%=rs.getString(11)%></td>
	    <td width=10% align=center><%=rs.getString(12)%></td>
      </tr>
      <%
	 }while(rs.next());else{%>
           <tr><td colspan="12" align="center" height=38px>没有符合条件的商品。</td></tr>
         <%   }
	    if(rs!=null) rs.close();
	    warefind_many_query.closeStmt();
	    warefind_many_query.closeConn();
    %>
    
      </table>
         <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
