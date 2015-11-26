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
    <h3 class="title">添加看房联系人</h3>
</header>

<section class="option-hd">
    <h3>看房联系人</h3>
</section>

<section class="assessment-con">
    <section class="list-panel">
        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">联系人姓名:</div>
                <input class="fill-input" type="text" id="lxrxm" placeholder="请输入联系人姓名" />
            </li>
            <li class="fill-item">
                <div class="fill-title">手机号码:</div>
                <input class="fill-input" type="text" id="lxrdh" placeholder="请输入手机号" />
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
        <a class="btn btn-blue" id="" href="javascript:;" onclick="addKflxr()">确定</a>
    </section>

</section>

<script type="text/javascript">

    function addKflxr(){
        var lxrxm = $("#lxrxm").val();
        var lxrdh = $("#lxrdh").val();
        var openid = '${openid}';
        var isDefault = $("#isDefault").val();
        
        if (!(/^1[3|4|5|7|8]\d{9}$/.test(lxrdh))) {
             alert("请输入正确的手机号！");//提交验证
             return;
        }
        if (lxrxm == "") {
             alert("请输入联系人！");//提交验证
             return;
        }
        window.location = "Lianxiren/doSavelianxiren?openid="+openid+"&linkPersonName="+lxrxm+"&linkPersonPhone="+lxrdh+"&isDefault="+isDefault+"&rukou=weituo";
    }
</script>

</body>
</html>