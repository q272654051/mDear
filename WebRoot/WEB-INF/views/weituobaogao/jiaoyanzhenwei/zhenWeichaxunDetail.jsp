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
    <title>校验结果</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">校验结果</h3>
</header>

<section class="result-con">
    <div class="result-hd">
        <h3>校验结果</h3>
    </div>
    <article class="article-list">
        <div class="verify-result">
            <p>报告编号：${reportNum}</p>
            <p>项目位置：${address}</p>
            <br />
            <p>总<span class="t2"></span>价：${price}万元</p>
            <p>单<span class="t2"></span>价：${pePrice}元</p>
            <br />
            <p>建成年代：${buildedYear}</p>
            <p>产权性质：</p>
            <p>利用现状：</p>
            <p>物理结构是否变化：</p>
        </div>
    </article>
    <section class="result-btn full-center">
        <a class="btn btn-blue" href="javascript:;" onClick="history.back(-1)">返回</a>
    </section>

</section>

</body>
</html>