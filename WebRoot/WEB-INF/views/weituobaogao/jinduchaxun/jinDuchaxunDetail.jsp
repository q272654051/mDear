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
    <title>进度查询</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">进度查询</h3>
</header>

<section class="result-con">
    <div class="result-hd">
        <h3>查询结果</h3>
    </div>
    <section class="result-bd">
        <p class="full-center">编号${BaoGaoBianHao}的查询结果是</p>
        <p class="full-center red">${baoGaoZhuangTai}</p>
        <div class="result-btn full-center">
        <c:if test="">
        </c:if>
        <c:if test="">
        </c:if>
        <c:if test="">
        </c:if>
        <c:if test="">
        </c:if>
        <c:if test="">
        </c:if>
            <a class="btn btn-default" href="javascript:;">业务受理</a>
            <a class="btn btn-default" href="javascript:;">外业勘察</a>
            <a class="btn btn-default" href="javascript:;">报告撰写</a>
            <a class="btn btn-default" href="javascript:;">报告审核</a>
            <a class="btn btn-default" href="javascript:;">发送报告</a>
        </div>
    </section>
</section>

</body>
</html>