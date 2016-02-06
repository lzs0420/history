<%-- 
    Document   : index
    Created on : 2014-9-5, 14:56:03
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.service.LoginService"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>教材管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script type="text/javascript" src="js/inputcheck1.js"></script>
        <link rel="stylesheet" type="text/css" href="css/styles_login.css">
        
        <%
        String check;
        check=request.getParameter("check");
        if(check==null){
        LoginService u=(LoginService)session.getAttribute("LoginService");
        if(session.getAttribute("LoginService")==null)
        {}else{
        String id="",job="";
        int value;
        id=u.getUserID();
        job=u.getJob();
        value=u.getValue();
  
   if(job.equals("User")){
   %>
   <script type="text/javascript">
   window.onload=function(){
			document.getElementById("xmenu0").style.display="block";
                        document.getElementById("t0").style.display="none";
	}
   </script>
   <%} if(job.equals("Admin")&&value==2) {%>
    <script type="text/javascript">
        window.onload=function(){
			document.getElementById("xmenu1").style.display="block";
                         document.getElementById("t0").style.display="none";
	    }
    </script>
<%} if(job.equals("Admin")&&value==3){%>
    <script type="text/javascript">
        window.onload=function(){
			document.getElementById("xmenu2").style.display="block";
                        document.getElementById("t0").style.display="none";
	    }
    </script>
    <%}} }%>
        
        <style type="text/css">
    div{margin:0 auto}
    ul,ol,li {list-style:none}
    a{text-decoration:none;word-wrap:break-word;outline:none;hide-focus:expression(this.hideFocus=true);transition:all 0.2s ease-in-out;-webkit-transition:all 0.2s ease-in-out;-moz-transition:all 0.2s ease-in-out;-o-transition:all 0.2s ease-in-out;-ms-transition:all 0.2s ease-in-out;}
    a:hover{text-decoration:none;}
    .lanmu-content{width:160px;overflow:hidden;}
    .lanmu-list{display:block;}
    .lanmu-list dt{display:block;height:40px;background:#ebebeb;font:bold 14px/40px "宋体"; color:#009999;padding-left:10px;}
    .lanmu-list dd{padding-top:2px;}
    .lanmu-list dd a{display:block;height:33px;background:#f9f9f9;border-bottom:1px solid #eee;border-top:2px solid #fff;border-left:2px solid #999;border-right:2px solid #ebebeb;font:normal 12px/33px Georgia "宋体"; color:#adadad;padding-left:5px; line-height: 33px;}
    .lanmu-list dd a:hover{padding-left:35px;}
    .lanmu-list dd a:hover,.lanmu-list dd a.current{border-left:2px solid #1160ba;background-color:#f6f6f6;color:#1160ba;font-weight:bold;}
    .xmenu{display:none;}
    td{text-align: center}

    </style>
    <script>
	function turn(target){
		form1.action=target;

		form1.submit();
	}

</script>
    </head>
    <body>
        <div id="container">
            <div id="header">
                <img src="css/login.jpg" width="1000" height="200" title="龙哥制造必属精品"/>
            </div>
            <div id="mainmenu">
                <ul>
                <li>首页&nbsp;&nbsp;&nbsp;</li>
                    <li>网站介绍 &nbsp;&nbsp;&nbsp;</li>
                    <li>教材管理系统介绍</li>
                    <li>设为主页 &nbsp;&nbsp;&nbsp;</li>
                    <li>收藏本页&nbsp;&nbsp;&nbsp;</li>
                    <li>联系我们 &nbsp;&nbsp;&nbsp;</li>
                   
                </ul>
            </div>
            <div id="sidebar">
                <table id="t0" ><tr><td>
                <table  style="border-collapse:collapse;margin-top: 7px"><tr><td id="log1" class="log" onclick="select_role1();">学生入口</td><td id="log2" class="log" onclick="select_role2();">教师入口</td><td id="log3" class="log" onclick="select_role3();">管理员入口</td></tr></table>
                <hr/>
                <form action="loginServlet" method="post" name="loginform">
                    <input type="hidden" id="hidden1" name="hidden1" value="User">
                    <table  width="240" id="t1" style="display:block">
                    <tr><td height="50" >学号:</td><td height="50" ><input type='text' name="U_id"></td></tr>
                    <tr><td height="50" >密码:</td><td height="50" ><input type='password' name="U_pwd"></td></tr>
                    <tr><td height="50" colspan='2'><input type="submit" name="submit1" value="登陆" class="login" ></td></tr>
                   <tr><td colspan="2"><table >
                    <tr><td height="50" width="120"><a href="#">学生信息</a></td><td height="50" width='120'><a href="#">院系课程</a></td></tr>
                    <tr><td height="50" ><a href="#">选课系统</a></td><td height="50" ><a href="#">校图书馆</a></td></tr>
                    </table></td></tr>
                </table>
                    <table  width="240" id="t2" style="display:none">
                    <tr><td height="50" >工号:</td><td height="50" ><input type='text' name="U_id1"></td></tr>
                    <tr><td height="50" >密码:</td><td height="50" ><input type='password' name="U_pwd1"></td></tr>
                    <tr><td height="50" colspan='2'><input type='submit' name="submit2" value="登陆" class="login"></td></tr>
                    <tr><td colspan="2"><table>
                    <tr><td height="50" width="120"><a href="#">教师信息</a></td><td height="50" width="120"><a href="#">课程管理</a></td></tr>
                    <tr><td height="50" ><a href="#">教学日历</a></td><td height="50" ><a href="#">校图书馆</a></td></tr>
                    </table></td></tr>
                </table>
                    <table  width="240" id="t3" style="display:none">
                    <tr><td height="50" >账号:</td><td height="50" ><input type='text' name="A_id"></td></tr>
                    <tr><td height="50" >密码:</td><td height="50" ><input type='password' name="A_pwd"></td></tr>
                    <tr><td height="50" colspan='2'><input type='submit' name="submit3" value="登陆" class="login"></td></tr>
                    <tr><td colspan="2"><table>
                    <tr><td height="50" width="120"><a href="#">学生信息</a></td><td height="50" width="120" ><a href="#">教师信息</a></td></tr>
                    <tr><td height="50" ><a href="#">教务系统</a></td><td height="50" ><a href="#">校图书馆</a></td></tr>
                            </table></td></tr>
                </table>
                </form></td></tr></table>
        <table class="xmenu" id="xmenu0" width="240" cellpadding="1" cellspacing="2" border="0"  bgcolor="#999999" align="center">
	<hr>
	<tr><td width="80"></td>
	<td height="80" ><a href="display" target="if" >首页</a></td>
	</tr>
        <tr><td width="80"></td>
	<td height="80" ><a href="displaycartdetail" target="_blank" >购物车</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="80" ><a href="booktable1" target="if" >查看订单</a></td>
	</tr>
	 <tr><td width="80"></td>
	<td height="80" ><a href="pwd.jsp" target="if" >修改密码</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="80" ><a href="#" onclick="javascript:window.location.href='index.jsp?check=exit'">安全退出</a></td>
	</tr>
</table>

<table class="xmenu" id="xmenu1" width="240" cellpadding="1" cellspacing="2" border="0"  bgcolor="#999999" align="center" >
	<tr><td width="80"></td>
	<td height="60" ><a href="display" target="if" >首页</a></td>
	</tr>
        <tr>
            <td width="80"></td>
	<td height="60"  ><a href="booktable" target="if">购书单</a></td>
	</tr>
        
	<tr ><td width="80"></td>
	<td height="60" ><a href="store" target="if" >查看库存</a></td>
	</tr><hr>
	<tr><td width="80"></td>
	<td height="60" ><a href="lackrecord" target="if" >管理缺书单</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="60" ><a href="bookout" target="if" >查看出库单</a></td>
	</tr>
         <tr><td width="80"></td>
	<td height="60" ><a href="pwd.jsp" target="if" >修改密码</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="60" ><a href="#" onclick="javascript:window.location.href='index.jsp?check=exit'">安全退出</a></td>
	</tr>
</table>

<table class="xmenu" id="xmenu2"   width="240" cellpadding="1" cellspacing="2" border="0"  bgcolor="#999999" align="center" >
	
	<hr>
        <tr><td width="80"></td>
	<td height="80" ><a href="display" target="if" >首页</a></td>
	</tr>
        <tr><td width="80"></td>
	<td height="80" ><a href="store" target="if" >查看库存</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="80" ><a href="materialServlet" target="if" >管理待购书单</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="80" ><a href="bookinServlet" target="if" >查看入库单</a></td>
	</tr>
        <tr><td width="80"></td>
	<td height="80" ><a href="pwd.jsp" target="if" >修改密码</a></td>
	</tr>
	<tr><td width="80"></td>
	<td height="80" ><a href="#" onclick="javascript:window.location.href='index.jsp?check=exit'">安全退出</a></td>
	</tr>
</table>
<form name="form1" action="#" method="get" target="if"></form>


	
	<div class="lanmu-content">
	<dl class="lanmu-list">
    	<dt>友情链接</dt>
        <dd><a href="http://www.baidu.com" class='current'  title="百度">百度</a></dd>
        <dd><a href='http://www.google.com' title="谷歌">谷歌</a></dd>
        <dd><a href='http://www.360.com' title="360">360</a></dd>
        <dd><a href='http://www.douding.com' title="豆丁">豆丁</a></dd>
        <dd><a href='http://www.4399.com' title="4399小游戏">4399小游戏</a></dd>
        <dd><a href='http://www.duote.com' title="多特下载">多特下载</a></dd>
        <dd><a href='http://www.youxun.com' title="游讯网">游讯网</a></dd>
        <dd><a href='http://www.w3chool.com' title="JSHTML5/CSS3">w3chool</a></dd>
        <dd><a href='http://www.zzu.edu.cn' title="郑大">郑大</a></dd>    
    </dl>
    </div>
            </div>
            <div id="maincontent">
                <iframe name="if" width="726px" height="800px" src="display"></iframe>
            </div>
            <div id="footer">
                <p>&copysr;2013java与数据库课程设计-411寝室</p>
            </div>
        </div>
    </body>
</html>

