<%-- 
    Document   : warefind_single
    Created on : 2013-12-14, 16:06:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="../js/inputcheck.js"></script>
<h2>两个下拉框请选择一个</h2><br>
<form name="form_single" method="post" action="#" target="_self" onsubmit="return check_warefind_single1();">
  单输入条件：  <select name="select_condition1">
        <option value="#" selected>请选择</option>
        <option value="ware_id" onclick="document.getElementById('ware_id').style.display='block';">商品号</option>
        <option value="ware_name" onclick="document.getElementById('ware_name').style.display='block';">商品名</option>
        <option value="ware_type" onclick="document.getElementById('ware_type').style.display='block';">型号</option>
        <option value="ware_business" onclick="document.getElementById('ware_business').style.display='block';">行业</option>
        <option value="ware_brand" onclick="document.getElementById('ware_brand').style.display='block';">品牌</option>
    </select>
   双输入条件： <select name="select_condition2">
        <option value="#" selected>请选择</option>
        <option value="ware_pricein" onfocus="document.getElementById('ware_pricein').style.display='block';">进价</option>
        <option value="ware_priceout" onclick="document.getElementById('ware_priceout').style.display='block';">售价</option>
        <option value="ware_real" onclick="document.getElementById('ware_real').style.display='block';">库存量</option>
        <option value="ware_sell" onclick="document.getElementById('ware_sell').style.display='block';">销售量</option>
        <option value="ware_mfdate" onclick="document.getElementById('ware_mfdate').style.display='block';">生产日期</option>
        <option value="ware_indate" onclick="document.getElementById('ware_indate').style.display='block';">入库日期</option>
    </select>
    <br/><br/>
    
    <div>
        单输入条件输入框：<input type="text" name="input_condition1" >
    </div><br/><br/>
    <!--两种选择框 -->
    <div>
        双输入条件输入框：<input type="text" name="input_condition2" >--<input type="text" name="input_condition3" >之间
    </div><br/><br/>
    <input name="查询" type="submit" value="查询">&nbsp;&nbsp;
                            <input name="重置" type="reset" value="重置"><br/><br/><br/><br/>
</form>

