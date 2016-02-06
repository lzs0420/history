<%-- 
    Document   : sidebar
    Created on : 2013-12-10, 1:34:08
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="../js/jquery_menu.js"></script>
    </head>
    <body>
        <div id="sidebar">
            <style type="text/css">
    dd {padding:0;margin:0;outline:none;}
    ul,ol,li {list-style:none}
    dd a{text-decoration:none;word-wrap:break-word;outline:none;transition:all 0.2s ease-in-out;-webkit-transition:all 0.2s ease-in-out;-moz-transition:all 0.2s ease-in-out;-o-transition:all 0.2s ease-in-out;-ms-transition:all 0.2s ease-in-out;}
    dd a:hover{text-decoration:none;}
    .lanmu-content{width:160px;overflow:hidden;margin:0}
    .lanmu-content .listmore{display:block;text-align:center;height:25px;width:160px;border-top:0;background:#eee;color:#1594d1;font:normal 12px/25px Tahoma,Verdana;}
    .lanmu-list{display:block;margin:0}
    .lanmu-list dt{display:block;height:40px;background:#0066CC;font:bold 14px/40px "宋体"; color:#fff;padding-left:10px;}
    .lanmu-list dd{padding-top:2px;}
    .lanmu-list dd a{display:block;height:33px;background:#f9f9f9;border-bottom:1px solid #eee;border-top:2px solid #fff;border-left:2px solid #999;border-right:1px solid #eee;font:normal 12px/33px Georgia "宋体"; color:#adadad;padding-left:25px; line-height: 33px;}
    .lanmu-list dd a:hover{padding-left:35px;}
    .lanmu-list dd a:hover,.lanmu-list dd a.current{border-left:2px solid #1160ba;background-color:#f6f6f6;color:#1160ba;font-weight:bold;}

    </style>
	<div class="lanmu-content">
	<dl class="lanmu-list">
    	<dt>点击进入界面</dt>
        <dd><a href='../public/login.html' class='current'  title="首页">首页</a></dd>
        <dd><a href='../public/information.jsp' title="个人信息">个人信息</a></dd>
        <dd><a href='../public/changepassword.jsp' title="修改密码">修改密码</a></dd>
        <dd><a href='../public/warelook.jsp' title="查询物品">查询物品</a></dd>
        <dd><a href='../saleman/formlook_out.jsp' title="查看出库单">查看出库单</a></dd>
        <dd><a href='../saleman/forminsert_out.jsp' title="新增出库单">新增出库单</a></dd>
        <dd><a href='../public/warefind.jsp' title="1">查找商品</a></dd>
        <dd><a href='' title="2">2</a></dd>
        <dd><a href='' title="3">3</a></dd>    
    </dl>
    	<a class="listmore" style="display:none;" href="javascript:;">查看更多 ↓</a>
    </div>
<script type="text/javascript">
    var LanMu = $(".lanmu-list");
    var lanMuSun = LanMu.children('dd');
    if((lanMuSun.size()) > 8){
        LanMu.children("dd:gt(5)").hide();
        $(".listmore").show();
    }
    $(".listmore").bind("click", function(){
       if(!$(".listmore").hasClass('ListMoreOn')){
           $(".listmore").addClass('ListMoreOn');
           LanMu.children("dd:gt(5)").slideDown();
            $(".listmore").html("折叠栏目 ↑")
       }else{
            $(".listmore").removeClass('ListMoreOn');
            LanMu.children("dd:gt(5)").slideUp();
            $(".listmore").html("查看更多 ↓");

       }
    })
</script>
        </div>
    </body>
</html>
