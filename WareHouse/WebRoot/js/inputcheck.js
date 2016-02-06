// JavaScript Document
 function check_login(){
//检查用户名和密码是否为空
    if(document.loginform.work_id.value === ""){
        alert("请输入员工号!");
        document.loginform.work_id.focus();
            return false;
    }

    var user = document.loginform.work_id.value;
        if ( user.charAt(0) === ' ' || user.charAt(user.length -1) ===' ' || user.charAt(user.length -1) === '\t')
    {
         alert("员工号头尾都不能为空格！！");
         document.loginform.work_id.focus();
         return false;
    }
        if(user.length!==5) 
        {
            alert("账号长度错误");
            document.loginform.work_id.focus();
            return false;
         }

         if(document.loginform.password.value.length>10) 
        {
            alert("密码长度错误");
            document.loginform.password.focus();
            return false;
         }

    if(document.loginform.password.value === ""){
        alert("输入密码。");
        document.loginform.password.focus();
            return false;
    }
    //loginform.action=loginform.selec.options[loginform.selec.selectedIndex].value;
    loginform.action="../process";
    loginform.submit();
    return true;
}

//修改密码检查输入
function check_changepassword(){
    var oldpassword=document.form_changepassword.oldpassword.value;
    var newpassword1=document.form_changepassword.newpassword1.value;
    var newpassword2=document.form_changepassword.newpassword2.value;
    
    if(oldpassword===""||newpassword1===""||newpassword2===""){
        alert("密码不能为空！");
        return false;
    }
    
    if(oldpassword.length>10||newpassword1.length>10||newpassword2.length>10){
        alert("密码超过长度！");
        return false;
    }
    
    if(newpassword1!==newpassword2){
        alert("两次输入密码不同！");
        document.form_changepassword.newpassword2.focus();
        return false;
    }
    
    if(newpassword1===oldpassword){
        alert("不能与旧密码相同！");
        document.form_changepassword.newpassword2.focus();
        return false;
    }
    
    form_changepassword.action="changepassword_query.jsp";
    form_changepassword.submit();
    return true;
    
}

//检查密码找回信息
function check_passwordfind(){
     if(document.form_passwordfind.answer.value==="请在这里输入答案"){
        alert("答案不能为空！");
        return false;
    }
    form_passwordfind.action="passwordfind_query.jsp";
    form_passwordfind.submit();
    return true;
}

//自动出库单生成价格
function priceout(){
    document.form_forminsert_out.out_price.value=price*document.form_forminsert_out.out_quantity.value;
}

//检查新增出库单信息
function check_forminsert_out(){
     if(document.form_forminsert_out.ware_id.value===""){
        alert("商品号不能为空！");
        return false;
    }
    if(document.form_forminsert_out.ware_id.value.length!==5){
        alert("商品号长度错误！");
        return false;
    }
    if(document.form_forminsert_out.out_quantity.value===""){
        alert("数量不能为空！");
        return false;
    }
    form_forminsert_out.action="forminsert_out_query.jsp";
    form_forminsert_out.submit();
    return true;
}

//检查新增入库单信息
function check_forminsert_in(){
     if(document.form_forminsert_in.ware_id.value===""){
        alert("商品号不能为空！");
        return false;
    }
    if(document.form_forminsert_in.ware_id.value.length!==5){
        alert("商品号长度错误！");
        return false;
    }
    if(document.form_forminsert_in.in_quantity.value===""){
        alert("数量不能为空！");
        return false;
    }
    form_forminsert_in.action="forminsert_in_query.jsp";
    form_forminsert_in.submit();
    return true;
}


//检查修改出库单信息
function check_formchange_out(){
     if(document.form_formchange_out.ware_id.value===""){
        alert("商品号不能为空！");
        return false;
    }
    if(document.form_formchange_out.ware_id.value.length!==5){
        alert("商品号长度错误！");
        return false;
    }
    if(document.form_formchange_out.out_quantity.value===""){
        alert("数量不能为空！");
        return false;
    }
    if(document.form_formchange_out.out_price.value===""){
        alert("价格不能为空！");
        return false;
    }
    form_formchange_out.action="formchange_out_query.jsp";
    form_formchange_out.submit();
    return true;
}

//检查修改入库单信息
function check_formchange_in(){
     if(document.form_formchange_in.ware_id.value===""){
        alert("商品号不能为空！");
        return false;
    }
    if(document.form_formchange_in.ware_id.value.length!==5){
        alert("商品号长度错误！");
        return false;
    }
    if(document.form_formchange_in.in_quantity.value===""){
        alert("数量不能为空！");
        return false;
    }
    if(document.form_formchange_in.in_price.value===""){
        alert("价格不能为空！");
        return false;
    }
    form_formchange_in.action="formchange_in_query.jsp";
    form_formchange_in.submit();
    return true;
}



//检查查询物品（普通）时 下拉框 选择
function check_warelook(){
     if(document.form_warelook.order.value==="#"){
        alert("请选择查询次序！");
        return false;
    }
    if(document.form_warelook.select_require.value==="#"){
        alert("请选择查询名称！");
        return false;
    }
    form_warelook.action="warelook_query.jsp";
    form_warelook.submit();
    return true;
}

//检查查询物品（管理员）时 下拉框 选择
function check_warelook1(){
     if(document.form_warelook1.order.value==="#"){
        alert("请选择查询次序！");
        return false;
    }
    if(document.form_warelook1.select_require.value==="#"){
        alert("请选择查询名称！");
        return false;
    }
    form_warelook1.action="warelook1_query.jsp";
    form_warelook1.submit();
    return true;
}



//检查查找物品时 *下拉框 选择 和 *输入框 输入
function check_warefind_single(){
    var c1=document.form_single.select_condition1.value;
    var c2=document.form_single.select_condition2.value;
    var i1=document.form_single.input_condition1.value;
    var i2=document.form_single.input_condition2.value;
    var i3=document.form_single.input_condition3.value;
     if(c1==="#"&&c2==="#"){
        alert("请选择查找方式！");
        return false;
    }
    if(c1!=="#"&&c2!=="#"){
        alert("只能选择一个条件！！");
        return false;
    }
    if(i1===""&&c1!=="#"){
        alert("请输入查找条件！");
        return false;
    }
    if((i2===""||i3==="")&&c2!=="#"){
        alert("请输入查找条件！");
        return false;
    }
    form_single.action="warefind_single_query.jsp";
    form_single.submit();
    return true;
}

function check_warefind_single1(){
    var c1=document.form_single.select_condition1.value;
    var c2=document.form_single.select_condition2.value;
    var i1=document.form_single.input_condition1.value;
    var i2=document.form_single.input_condition2.value;
    var i3=document.form_single.input_condition3.value;
     if(c1==="#"&&c2==="#"){
        alert("请选择查找方式！");
        return false;
    }
    if(c1!=="#"&&c2!=="#"){
        alert("只能选择一个条件！！");
        return false;
    }
    if(i1===""&&c1!=="#"){
        alert("请输入查找条件！");
        return false;
    }
    if((i2===""||i3==="")&&c2!=="#"){
        alert("请输入查找条件！");
        return false;
    }
    form_single.action="warefind_single_query1.jsp";
    form_single.submit();
    return true;
}


function check_staffinsert(){
    var s1=document.form_staffinsert.name.value;
    var s2=document.form_staffinsert.age.value;
    var s3=document.form_staffinsert.sex.value;
    var s4=document.form_staffinsert.job.value;
    var s5=document.form_staffinsert.password.value;
    if(s1===""||s2===""||s3===""||s4===""||s5===""){
        alert("员工信息不能为空！");
        return false;
    }
    if(s2<=0){
        alert("年龄错误！");
        return false;
    }
    if(s5.length>10){
        alert("初始密码长度错误！");
        return false;
    }
    form_staffinsert.action="staffinsert_query.jsp";
    form_staffinsert.submit();
    return true;
}


function check_staffchange(){
    var s1=document.form_staffchange.name.value;
    var s2=document.form_staffchange.age.value;
    var s3=document.form_staffchange.sex.value;
    var s4=document.form_staffchange.job.value;
    var s5=document.form_staffchange.password.value;
    if(s1===""||s2===""||s3===""||s4===""||s5===""){
        alert("员工信息不能为空！");
        return false;
    }
    if(s2<=0){
        alert("年龄错误！");
        return false;
    }
    if(s5.length>10){
        alert("修改密码长度错误！");
        return false;
    }
    form_staffchange.action="staffchange_query.jsp";
    form_staffchange.submit();
    return true;
}


function check_wareinsert(){
    var w1=document.form_wareinsert.ware_name.value;
    var w2=document.form_wareinsert.ware_type.value;
    var w3=document.form_wareinsert.ware_business.value;
    var w4=document.form_wareinsert.ware_brand.value;
    var w5=document.form_wareinsert.ware_pricein.value;
    var w6=document.form_wareinsert.ware_priceout.value;
    var w7=document.form_wareinsert.ware_min.value;
    var w8=document.form_wareinsert.ware_real.value;
    var w9=document.form_wareinsert.ware_sell.value;
    var w10=document.form_wareinsert.ware_mfdate.value;
    var w11=document.form_wareinsert.ware_indate.value;
     if(w1===""||w2===""||w3===""||w4===""||w5===""||w6===""||w7===""||w8===""||w9===""||w10===""||w11===""){
        alert("商品信息不能为空！");
        return false;
    }
    if(w5<0||w6<0||w7<0||w8<0||w9<0){
        alert("不能为负数！");
        return false;
    }
    if(w5>w6){
        alert("进价和售价错误！");
        return false;
    }
    if(w7>w8){
        alert("小于最小库存量！");
        return false;
    }
    if(w10.length!==10||w11.length!==10){
        alert("日期格式错误！");
        return false;
    }
    var num="0123456789";
    for(var i=0;i<10;i++)
    {
        if((num.indexOf(w10.charAt(i))===-1||num.indexOf(w11.charAt(i))===-1)&&i!==4&&i!==7){
            alert("日期格式错误！");
            return false;
        }
        if((i===4||i===7)&&(w10.charAt(i)!=="-"||w11.charAt(i)!=="-")){
            alert("日期格式错误！");
            return false;
        }
    }
    form_wareinsert.action="wareinsert_query.jsp";
    form_wareinsert.submit();
    return true;
}



function check_warechange(){
    var w1=document.form_warechange.ware_name.value;
    var w2=document.form_warechange.ware_type.value;
    var w3=document.form_warechange.ware_business.value;
    var w4=document.form_warechange.ware_brand.value;
    var w5=document.form_warechange.ware_pricein.value;
    var w6=document.form_warechange.ware_priceout.value;
    var w7=document.form_warechange.ware_min.value;
    var w8=document.form_warechange.ware_real.value;
    var w9=document.form_warechange.ware_sell.value;
    var w10=document.form_warechange.ware_mfdate.value;
    var w11=document.form_warechange.ware_indate.value;
     if(w1===""||w2===""||w3===""||w4===""||w5===""||w6===""||w7===""||w8===""||w9===""||w10===""||w11===""){
        alert("商品信息不能为空！");
        return false;
    }
    if(w5<0||w6<0||w7<0||w8<0||w9<0){
        alert("不能为负数！");
        return false;
    }
    if(w5>w6){
        alert("进价和售价错误！");
        return false;
    }
    if(w7>w8){
        alert("小于最小库存量！");
        return false;
    }
    if(w10.length!==10||w11.length!==10){
        alert("日期格式错误！");
        return false;
    }
    var num="0123456789";
    for(var i=0;i<10;i++)
    {
        if((num.indexOf(w10.charAt(i))===-1||num.indexOf(w11.charAt(i))===-1)&&i!==4&&i!==7){
            alert("日期格式错误！");
            return false;
        }
        if((i===4||i===7)&&(w10.charAt(i)!=="-"||w11.charAt(i)!=="-")){
            alert("日期格式错误！");
            return false;
        }
    }
    form_warechange.action="warechange_query.jsp";
    form_warechange.submit();
    return true;
}