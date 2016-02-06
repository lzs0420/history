<%-- 
    Document   : index
    Created on : 2015-5-9, 12:31:14
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校园植物管理</title>
</head>

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
		height:100px;
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
</style>
 <script type="text/javascript">
        window.onload=function(){
			
			attachXMenu(xmenu0); 
	    }
    </script>
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
	<tr>
        <td height="50" onclick="turn('plantFind');"><a href="plantFind" target="if" >植物管理</a></td>
	</tr>
	<tr >
	<td height="50" onclick="turn('addressFind');"><a href="addressFind" target="if" >地址管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('pictureFind');"><a href="pictureFind" target="if" >图片管理</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('flagGetAll');"><a href="flagGetAll" target="if" >确认开花</a></td>
	</tr>
	<tr>
	<td height="50" onclick="turn('userplantFind');"><a href="userplantFind" target="if" >确认植物</a></td>
	</tr>
	<tr>
	<td height="50" onclick="javascript:window.location.href='index.jsp'"><a href="javascript:window.location.href='index.jsp'">安全退出</a></td>
	</tr>
</table>

<form name="form1" action="#" method="get" target="if"></form>
<script>attachXMenu(xmenu0); 
      //在上面这个table结束的地方执行事件动作的绑定, 这里的这个xmenu0就是那个table的id</script>

	
	<iframe name="if" width="800px" height="500px"></iframe>
	</div>
</body>
</html>