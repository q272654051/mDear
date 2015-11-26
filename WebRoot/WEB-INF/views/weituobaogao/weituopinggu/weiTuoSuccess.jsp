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
    <title>委托成功</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">委托成功</h3>
</header>

<section class="succeed full-center">
    <img src="content/images/icon_succeed.png" alt=""/>
    <h3 class="green">恭喜您委托成功</h3>
    <p>房估估已成功收到您的委托，您的委托编号为</p>
    <p><b class="red">${pinggubianhao}</b></p>
    <p>我们客服人员将在1小时内与您取得联系，</p>
    <p>确定相关委托事宜和收费情况，请您保持通讯畅通。</p>
</section>


</body>
</html>