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
    <title>绑定手机成功</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">绑定手机</h3>
</header>
    <input type="hidden" value="${openid}" id="openid"/>
    <input type="hidden" value="${rukou}" id="rukou"/>
<section class="succeed full-center">
    <img src="content/images/icon_succeed.png" alt=""/>
    <h3>您已经绑定成功</h3>
</section>

<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
    var rukou = '${rukou}';
    var openid = '${openid}';
    if (rukou=="weituo"){
        window.location.href = "Weituopinggu/jumpWeituo?openid="+openid;
    }
    if (rukou=="lianxiren"){
        window.location.href = "Lianxiren/jumpLianxiren?openid="+openid;
    }
    if (rukou=="youjidizhi"){
        window.location.href = "Youjidizhi/jumpYoujidizhi?openid="+openid;
    }
    if (rukou=="myweituo"){
    window.location.href = "Myweituo/jumpMyweituo?openid="+openid;
    }
    if (rukou=="myguzhi"){
    window.location.href = "Myguzhi/jumpMyguzhi?openid="+openid;
    }
    });
</script>
</body>
</html>