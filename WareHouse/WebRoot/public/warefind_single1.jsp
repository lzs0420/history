<%-- 
    Document   : warefind_single
    Created on : 2013-12-10, 16:47:50
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h2>两个下拉框请选择一个</h2><br>
<form name="form_single">
    <select name="select_condition1">
        <option value="" selected>请选择</option>
        <option value="ware_id" onclick="document.getElementById('ware_id').style.display='block';">商品号</option>
        <option value="ware_name" onclick="document.getElementById('ware_name').style.display='block';">商品名</option>
        <option value="ware_type" onclick="document.getElementById('ware_type').style.display='block';">型号</option>
        <option value="ware_business" onclick="document.getElementById('ware_business').style.display='block';">行业</option>
        <option value="ware_brand" onclick="document.getElementById('ware_brand').style.display='block';">品牌</option>
    </select>
    <input type="button" value="选择" onclick="document.getElementById('ware_id').style.display='block';" >
    <select name="select_condition2">
        <option value="" selected>请选择</option>
        <option value="ware_pricein" onfocus="document.getElementById('ware_pricein').style.display='block';">进价</option>
        <option value="ware_priceout" onclick="document.getElementById('ware_priceout').style.display='block';">售价</option>
        <option value="ware_real" onclick="document.getElementById('ware_real').style.display='block';">库存量</option>
        <option value="ware_sell" onclick="document.getElementById('ware_sell').style.display='block';">销售量</option>
        <option value="ware_mfdate" onclick="document.getElementById('ware_mfdate').style.display='block';">生产日期</option>
        <option value="ware_indate" onclick="document.getElementById('ware_indate').style.display='block';">入库日期</option>
    </select>
    <br>
    
    <div id="ware_id" style="display: none">
        商品号：<input type="text" name="ware_id" >
    </div>
    <div id="ware_name" style="display: none">
        商品名：<input type="text" name="ware_name" >
    </div>
    <div id="ware_type" style="display: none">
        型号：<input type="text" name="ware_type" >
    </div>
    <div id="ware_business" style="display: none">
        行业：<input type="text" name="ware_business" >
    </div>
    <div id="ware_brand" style="display: none">
        品牌：<input type="text" name="ware_brand" >
    </div>
    <!--两种选择框 -->
    
    <div id="ware_pricein" style="display: none">
        进价：<input type="text" name="ware_pricein1" >--<input type="text" name="ware_pricein2" >之间
    </div>
    <div id="ware_priceout" style="display: none">
        售价：<input type="text" name="ware_priceout1" >--<input type="text" name="ware_priceout2" >之间
    </div>
    <div id="ware_real" style="display: none">
        库存量：<input type="text" name="ware_real1" >--<input type="text" name="ware_real2" >之间
    </div>
    <div id="ware_sell" style="display: none">
        销售量：<input type="text" name="ware_sell1" >--<input type="text" name="ware_sell2" >之间
    </div>
    <div id="ware_mfdate" style="display: none">
        生产日期：<input type="text" name="ware_mfdate1" >--<input type="text" name="ware_mfdate2" >之间
    </div>
    <div id="ware_indate" style="display: none">
        入库日期：<input type="text" name="ware_indate1" >--<input type="text" name="ware_indate2" >之间
    </div>
</form>
