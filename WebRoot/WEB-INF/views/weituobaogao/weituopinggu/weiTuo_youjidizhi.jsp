<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>委托评估</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">添加邮寄地址</h3>
</header>

<section class="option-hd">
    <h3>邮寄地址</h3>
</section>

<section class="assessment-con">
    <section class="list-panel">
        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">联系人姓名:</div>
                <input class="fill-input" type="text" id="lxrxm" placeholder="请输入联系人姓名" />
            </li>
            <li class="fill-item">
                <div class="fill-title">所在区域:</div>
                <select class="fill-select" name="cityId" id="cityId">
                    <option>请选择</option>
               		<option value="东城区">东城区</option>
               		<option value="西城区">西城区</option>
               		<option value="朝阳区">朝阳区</option>
               		<option value="丰台区">丰台区</option>
               		<option value="石景山区">石景山区</option>
               		<option value="海淀区">海淀区</option>
               		<option value="门头沟区">门头沟区</option>
               		<option value="房山区">房山区</option>
               		<option value="通州区">通州区</option>
               		<option value="顺义区">顺义区</option>
               		<option value="昌平区">昌平区</option>
               		<option value="大兴区">大兴区</option>
               		<option value="怀柔区">怀柔区</option>
               		<option value="平谷区">平谷区</option>
               		<option value="密云县">密云县</option>
               		<option value="延庆县">延庆县</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">详细地址:</div>
                <input class="fill-input" type="text" id="xxdz" placeholder="请详细到门牌号" />
            </li>
            <li class="fill-item">
                <div class="fill-title">手机号码:</div>
                <input class="fill-input" type="text" id="sjhm" placeholder="请输入手机号码" />
            </li>
            <li class="fill-item">
                <div class="fill-title">邮政编码:</div>
                <input class="fill-input" type="text" id="yzbm" placeholder="请输入邮政编码" />
            </li>
        </ul>
    </section>

    <section class="assessment-foot full-center">
        <section class="deal-panel full-left">
            将此联系人设为默认
            <div class="btntap">
	            <a class="btn-deal" href="javascript:;">
	                <i class="ico"></i>
	            </a>
            </div>
        </section>
        <input type="hidden" id="isDefault" value="0" />
        <a class="btn btn-blue" id="" onclick="addYjdz()" href="javascript:;">确定</a>
    </section>

</section>


<!-- <section class="region-con" id="regionCon">
    <section class="option-hd clear">
        <h3 class="fl">选择城市</h3>
        <section class="region-list fl">
        </section>
    </section>
    <section class="region-panel clear">
        <ul class="list-panel city-panel clear" id="cityName">
        </ul>
        <ul class="list-panel district-panel clear" id="districtName">
        </ul>
    </section>

    <section class="btns-panel full-center">
        <a class="btn btn-blue" id="returnRegionBtn" href="javascript:;">返回</a>
    </section>
</section>
 -->
<script type="text/javascript">

    function addYjdz(){
        var lxrxm = $("#lxrxm").val();
        var szqy = $("#cityId").val();
        var xxdz = $("#xxdz").val();
        var sjhm = $("#sjhm").val();
        var yzbm = $("#yzbm").val();
        var openid = '${openid}';
        var isDefault = $("#isDefault").val();
        
        if (!(/^1[3|4|5|7|8]\d{9}$/.test(sjhm))) {
             alert("请输入正确的手机号！");//提交验证
             return;
        }
        if (lxrxm == "") {
             alert("请输入联系人！");//提交验证
             scrollTo("#lxrxm",-30);
             return;
        }
        if (szqy == "") {
             alert("请选择所在区域！");//提交验证
             scrollTo("#cityId",-30);
             return;
        }
        if (xxdz == "") {
             alert("请输入详细地址！");//提交验证
             scrollTo("#xxdz",-30);
             return;
        }
        if (yzbm == "") {
             alert("请输入邮政编码！");//提交验证
             scrollTo("#yzbm",-30);
             return;
        }
        window.location = "Youjidizhi/doSaveyoujidizhi?openid="+openid+"&name="+lxrxm+"&area="+szqy+"&detailAddress="+xxdz+"&phoneNumber="+sjhm+"&postCode="+yzbm+"&isDefault="+isDefault+"&rukou=weituo";
    }
</script>



</body>
</html>