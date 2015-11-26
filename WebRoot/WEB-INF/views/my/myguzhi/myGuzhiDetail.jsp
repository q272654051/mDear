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
    <title>我的估值-估值详情页</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    </head>
	<body>
		<header class="header full-center">
    			<h3 class="title">我的估值</h3>
		</header>
		<section class="apr-details">
			<div class="result-hd">
				估值详情
			</div>
			 <p>
			 	小区名称：
			 	<em>${xiaoquName }</em>
			 </p>
			 <p>
			 	详细地址：
			 	<em>${xiangXiDiZhi }</em>
			 </p>
			 <p>
			 	单<span class="ch-two"></span>价：
			 	<em>${shiChangDanJia }</em> 元/㎡
			 </p>
			 <p>
			 	总<span class="ch-two"></span>价：
			 	<em>${zongjia }</em> 万元
			 </p>
			 <p>
			 	抵押单价：
			 	<em>${diYaJiaZhi }</em> 元/㎡
			 </p>
		</section>
		<section class="btns-panel full-center result-btn">
			<a class="btn btn-blue" href="Weituopinggu/jumpWeituo?openid=${openid}">委托评估</a>
		<!-- 	<a class="btn btn-blue" href="Weituopinggu//jumpWeituo?openid=${openid}">委托评估</a> -->
			<a class="btn btn-blue" onclick="history.back(-1)">返回</a>
		</section>
	</body>
</html>
