<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-image:url("image/3.jpg");
	}
	#full{
		width:80%;
		height:1000px;
		margin-left:10%;
		background-color:#fff;
		
	}
	#title{
		background-image:url("image/101.gif");
		background-repeat: no-repeat;
		height:154px;
	}
	#left{
	    float:left;
	    width:25%;
	    padding-left:25px;
	    padding-top:50px;
	    background-color:#DFDFDA;
	    height:800px;
	    margin-right:10px;
	}
	#right{
	    float:right;
	    margin-left:10px;
	}
	#main{
	    margin:20px 10px 0 10px;
	    padding:0 10px 0 10px;
	}
</style>
</head>
<body>
<div id="full">
   <div id="title"></div>
   <div id="left">
       <form name="loginform" method="post" action="loginServlet">
       账户：<input type="text" name="userID" size="25"><br/><br/>
      密码：<input type="password" name="userPWD" size="27"><br/><br/>
     用户：<select name="job" style="width:187px;">
           <option>请选择</option>
           <option value="Student">学生</option>
           <option value="Teacher">老师</option>
           <option value="Administrator">管理员</option>
       </select><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" name="reset" value="重置">&nbsp;&nbsp;&nbsp;
       <input type="submit" name="submit" value="登陆">
       </form>
   </div>
   <div id="right"><img src="image/201.JPG" ></div>
   <div id="main">
    
    <div>
                    郑州大学创建于1956年，是新中国成立后国家创办的第一所综合性大学
		，坐落于中国历史文化名城、由原郑州大学、郑州工业大学、河南医科大学于2000年合并组建的郑州大学，
                   
                   学校涵盖哲学、理学、工学、医学、文学、历史学、法学、经济学、管理学、艺术学等13大学科门类。
                   郑州大学是首批国家“211工程”重点大学，教育部首批“卓越计划”重点建设高校。
                   曾入选世界500强学术机构，享有河南省“高等教育旗帜”的美誉，被国务院支持创建“全国一流大学”。
                   郑州大学是北方校园的杰出代表，被誉为“中国最美大学校园之一”
                   郑州大学创建于1956年，是新中国成立后国家创办的第一所综合性大学
		，坐落于中国历史文化名城、由原郑州大学、郑州工业大学、河南医科大学于2000年合并组建的郑州大学，
                   
                   学校涵盖哲学、理学、工学、医学、文学、历史学、法学、经济学、管理学、艺术学等13大学科门类。
                   郑州大学是首批国家“211工程”重点大学，教育部首批“卓越计划”重点建设高校。
                   曾入选世界500强学术机构，享有河南省“高等教育旗帜”的美誉，被国务院支持创建“全国一流大学”。
                   郑州大学是北方校园的杰出代表，被誉为“中国最美大学校园之一”
                   郑州大学创建于1956年，是新中国成立后国家创办的第一所综合性大学
		，坐落于中国历史文化名城、由原郑州大学、郑州工业大学、河南医科大学于2000年合并组建的郑州大学，
                   
                   学校涵盖哲学、理学、工学、医学、文学、历史学、法学、经济学、管理学、艺术学等13大学科门类。
                   郑州大学是首批国家“211工程”重点大学，教育部首批“卓越计划”重点建设高校。
                   曾入选世界500强学术机构，享有河南省“高等教育旗帜”的美誉，被国务院支持创建“全国一流大学”。
                   郑州大学是北方校园的杰出代表，被誉为“中国最美大学校园之一”
     </div>
   </div>
</div>
</body>
</html>