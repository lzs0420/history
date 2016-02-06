<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user" %>
    <%@page import="com.bean.course" %>
    <%@page import="com.use.courseService" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td{text-align:center; padding-top:5px;}
table{text-align:center; width:100%; margin-top:20px;}
</style>
</head>
<body>
    <%
        courseService cs=new courseService();
        course cou=new course();
        cou.setState(1);
        List l=(List)cs.getAll(cou);
        l=cs.getAll(cou);
    %>
    <form method="post" action="courseSelectServlet">
        <table align="center">
            <tr><td>课程名</td><td>人数</td><td></td><td>课程名</td><td>人数</td><td></td></tr>
            <%int i=0;course cou1=(course)l.get(0);%>
            <tr><td><%=cou1.getCourseName() %></td><td><%=cou1.getPeopleNum()%></td><td><input type="checkbox" name="courseSelect" value="<%=cou1.getCourseID()%>"/></td>
            <%for(i=1;i<=l.size()/2;i++){
            	cou1=(course)l.get(2*i-1);
            	%>
            	<td><%=cou1.getCourseName() %></td><td><%=cou1.getPeopleNum() %></td><td><input type="checkbox" name="courseSelect" value="<%=cou1.getCourseID()%>"/></td></tr>
            	<%if(2*i==l.size()){}else {cou1=(course)l.get(2*i);%>
            	<tr><td><%=cou1.getCourseName() %></td><td><%=cou1.getPeopleNum() %></td><td><input type="checkbox" name="courseSelect" value="<%=cou1.getCourseID()%>"/></td>
                
             <%}}if((2*i-2)==l.size()){%>
             </tr>
             <%} %>
             <tr><td><input type="reset" value="重置"/></td><td><input type="submit" value="选课"/></td></tr>
        </table>
    </form>
</body>
</html>