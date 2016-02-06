<%-- 
    Document   : warefind_many
    Created on : 2013-12-10, 17:21:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery淘宝商品列表多条件查询</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>

</head>
<body>
    <br><br><br><br><br><br><h1>请选择</h1><br><br>
	<ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>行业：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_brand&value=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business1" target="_self">business1</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business2">business2</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business3">business3</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business4">business4</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business5">business5</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_brand&value=business6">business6</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select1">
				<dt>类型：</dt>
				<dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_type&value=all">全部</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_type&value=large">large</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_type&value=middle">middle</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_type&value=small">small</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
				<dt>行业：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_business&value=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_business&value=car">car</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_business&value=plane">plane</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_business&value=cloth">cloth</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_business&value=computer">computer</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_business&value=book">book</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_business&value=food">food</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
				<dt>进价：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_pricein&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_pricein&value1=0&value2=9"><10</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_pricein&value1=10&value2=19">10~20</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_pricein&value1=20&value2=29">20~30</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_pricein&value1=30&value2=39">30~40</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_pricein&value1=40&value2=49">40~50</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
				<dt>售价：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_priceout&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=0&value2=9"><10</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=10&value2=19">10~20</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=20&value2=29">20~30</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=30&value2=39">30~40</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=40&value2=49">40~50</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_priceout&value1=50&value2=59">50~60</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
				<dt>库存量：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_real&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_real&value1=0&value2=5000"><5000</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_real&value1=5000&value2=6000">5000~6000</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_real&value1=6000&value2=7000">6000~7000</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_real&value1=7000&value2=8000">7000~8000</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_real&value1=8000&value2=9000">8000~9000</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_real&value1=9000&value2=100000">>9000</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
                            <dt>销售量：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_sell&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=0&value2=9"><10</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=10&value2=99">10~100</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=100&value2=500">100~500</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=500&value2=1000">500~1000</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=1000&value2=5000">1000~5000</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_sell&value1=5000&value2=100000">>5000</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
                            <dt>生产日期：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_indate&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2010-01-01&value2=2010-12-31"><2010</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2011-01-01&value2=2011-12-31">2011</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2012-01-01&value2=2012-12-31">2012</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-01-01&value2=2013-03-31">2013-1~3</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-04-01&value2=2013-06-30">2013-4~6</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-07-01&value2=2013-09-30">2013-7~9</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-10-01&value2=2013-12-31">2013-10~12</a></dd>
			</dl>
		</li>
                <li class="select-list">
			<dl id="select2">
                            <dt>入库日期：</dt>
                                <dd class="select-all selected"><a href="warefind_many_query.jsp?condition=ware_indate&value1=all&value2=all">全部</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2010-01-01&value2=2010-12-31"><2010</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2011-01-01&value2=2011-12-31">2011</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2012-01-01&value2=2012-12-31">2012</a></dd>
				<dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-01-01&value2=2013-03-31">2013-1~3</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-04-01&value2=2013-06-30">2013-4~6</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-07-01&value2=2013-09-30">2013-7~9</a></dd>
                                <dd><a href="warefind_many_query.jsp?condition=ware_indate&value1=2013-10-01&value2=2013-12-31">2013-10~12</a></dd>
			</dl>
		</li>
		<!--<li class="select-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
			</dl>
		</li>-->
	</ul>
</body>
</html>
