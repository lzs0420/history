<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.bean.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教务管理系统</title>
</head>
<%
   user user1=(user)session.getAttribute("user");
   if(session.getAttribute("user")==null)
   {
	   response.sendRedirect("login.jsp");
   }
   String userID="",job="";
   if(session.getAttribute("user")!=null)
   {
	   userID=user1.getUserID();
	   job=user1.getJob();
   }
   if(job.equals("Student")){
   %>
   <script type="text/javascript">
   window.onload=function(){
			document.getElementById("xmenu0").style.display="block";
			attachXMenu(xmenu0); 
	}
   </script>
<%} if(job.equals("Teacher")){%>
    <script type="text/javascript">
        window.onload=function(){
			document.getElementById("xmenu1").style.display="block";
			attachXMenu(xmenu1); 
	    }
    </script>
<%} if(job.equals("Administrator")){%>
    <script type="text/javascript">
        window.onload=function(){
			document.getElementById("xmenu2").style.display="block";
			attachXMenu(xmenu2); 
	    }
    </script>
    <%} %>
<style>
body{
		background-image:url("image/3.jpg");
	}
	#full{
		width:1000px;
		margin:0px auto;
		background-color:#DFDFDF;
	}
	#title{
		width:1000px;
		height:200px;
	}
	#title1{
		width:1000px;
		height:70px;
		float:left;
		background-image:url("image/wenzi.jpg");
		background-repeat: no-repeat;
		text-align: center;
	}
	#title2{
		width:200px;
		height:70px;
		float:left;

	}
	#title3{
		width:1000px;
		height:120px;
		background-image: url("image/7.jpg");
		clear:left;
		
	}
	#main{
		width:400px;
		height:400px;
		float:left;
		
		padding-left:60px;
		padding-top:100px;
		font-weight:bolder;
		font-size:18px;
		font-size-adjust: none;
		background-image:url("image/2.jpg");
		background-repeat: no-repeat;
		background-position: left;
		}
	#bottom{
		width:1000px;
		height:120px;
		clear:left;
		font-size:medium;
		text-align:center;
		line-height:5px;
		padding:10px;
	}
	a{text-decoration:none;color:white;}
	a:visited{color:white}
/* 先把这个 xmenu 的样式放到css里 */
.xmenu td{font-size:18px;font-family:verdana,arial;font-weight:bolder;color:#ffffff;border:1px solid #336699;background:#336699;filter:blendtrans(duration=0.5);cursor:hand;text-align:center;}
.xmenu{display:none;}
</style>

<script>
/* 
more javascript from http://www.smallrain.net

这是把事件动作绑定到菜单上的函数
*/
function attachXMenu(objid){
	var tds=objid.getElementsByTagName('td');
	for(var i=0;i<tds.length+100;i++){
		with(tds[i]){
			onmouseover=function(){
				with(this){
					filters[0].apply();
					style.background='#FEBD20'; //这是鼠标移上去时的背景颜色
					style.border='1px solid #ffffff'; //边框
					style.color='black'; //文字颜色
					filters[0].play();
				}
			}
			onmouseout=function(){
				with(this){
					filters[0].apply();
					style.background='#336699'; //这是鼠标离开时的背景颜色
					style.border='1px solid #336699'; //边框
					style.color='#ffffff'; //文字颜色
					filters[0].play();
				}
			}
		}
	}
}
	function turn(target){
		form1.action=target;

		form1.submit();
	}


</script>

<body>
<div id="full">
<div id="title">
				<div id="title1">
				</div>
					<div id="title2">
							
					</div>
						<div id="title3">
			
						</div>
			
		</div>

<!--菜单从这里开始, 注意要把class设置成和css里相同的, 还要为它设一个id-->
<table class="xmenu" id="xmenu0" width="180"  cellpadding="1" cellspacing="2" border="0" bgcolor="#00000" align="left">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p align="center"><%=userID%>已登录&nbsp;&nbsp;</p>
	<tr>
	<td height="50" onclick="turn('information.jsp');">个人信息</td>
	</tr>
	<tr >
	<td height="50" onclick="turn('passwordChange.jsp');"><a href="passwordChange.jsp" target="if" >修改密码</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('scoreSearch.jsp');"><a href="scoreSearch.jsp" target="if" >成绩查询</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('courseSelect.jsp');"><a href="courseSelect.jsp" target="if" >网上选课</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('teacherComment.jsp');"><a href="teacherComment.jsp" target="if" >网上评教</a></td>
	</tr>
	<tr>
	<td height="50" onclick="javascript:window.location.href='login.jsp?userID=<%=userID%>'"><a href="javascript:window.location.href='login.jsp?userID=<%=userID%>'">安全退出</a></td>
	</tr>
</table>

<table class="xmenu" id="xmenu1" width="180"  cellpadding="1" cellspacing="2" border="0" bgcolor="#00000" align="left">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p align="center"><%=userID%>已登录&nbsp;&nbsp;</p>
	<tr>
	<td height="50" onclick="turn('information.jsp');"><a href="information.jsp" target="if" >个人信息</a></td>
	</tr>
	<tr >
	<td height="50" onclick="turn('passwordChange.jsp');"><a href="passwordChange.jsp" target="if" >修改密码</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('courseScoreSearch.jsp');"><a href="courseScoreSearch.jsp" target="if" >课程成绩查看</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('studentComment.jsp');"><a href="studentComment.jsp" target="if" >网上评教</a></td>
	</tr>
	<tr>
	<td height="50" onclick="javascript:window.location.href='login.jsp?userID=<%=userID%>'"><a href="javascript:window.location.href='login.jsp?userID=<%=userID%>'">安全退出</a></td>
	</tr>
</table>

<table class="xmenu" id="xmenu2" width="180"  cellpadding="1" cellspacing="2" border="0" bgcolor="#00000" align="left">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p align="center"><%=userID%>已登录&nbsp;&nbsp;</p>
	<tr>
	<td height="50" onclick="turn('studentServlet');"><a href="studentServlet" target="if" >学生管理</a></td>
	</tr>
	<tr >
	<td height="50" onclick="turn('teacherServlet');"><a href="teacherServlet" target="if" >教师管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('courseServlet');"><a href="courseServlet" target="if" >课程管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('majorServlet');"><a href="majorServlet" target="if" >专业管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('studentCourseServlet');"><a href="studentCourseServlet" target="if" >成绩管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="javascript:window.location.href='login.jsp?userID=<%=userID%>'"><a href="javascript:window.location.href='login.jsp?userID=<%=userID%>'">安全退出</a></td>
	</tr>
</table>
<form name="form1" action="#" method="get" target="if"></form>
<script>attachXMenu(xmenu0); 
      //在上面这个table结束的地方执行事件动作的绑定, 这里的这个xmenu0就是那个table的id</script>
<br>
	<br>
	<br>
	<br>
	<iframe name="if" width="800px" height="500px"></iframe>
	</div>
</body>
</html>