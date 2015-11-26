<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>周边小区</title>
	<link rel="stylesheet" href="content/css/base.css"/>
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
  </head>

  <body>
      <!-- appId: ${appId},<br>
      timestamp: ${timestamp}<br>
      nonceStr: ${nonceStr}<br>
      signature: ${signature}<br>
      openid: ${openid}<br> -->
      <input class="" type="hidden" id="latitude" value="" />
      <input class="" type="hidden" id="longitude" value="" />
      <input class="" type="hidden" id="timestamp" value="${timestamp}" />
      <input class="" type="hidden" id="nonceStr" value="${nonceStr}" />
      <input class="" type="hidden" id="signature" value="${signature}" />
      <input class="" type="hidden" id="openid" value="${openid}" />
		<header class="header full-center">
   			<h3 class="title">周边小区</h3>
		</header>
		
		<p class="fill-title">微信正在获取地理位置加载附近小区，请稍后。。。</p>
  </body>
  <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
  <script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
  <script src="content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
  <script>
  
  var openid = '${openid}';
  wx.config({
      debug: false,
      appId: '${appId}',
      timestamp: '${timestamp}',
      nonceStr: '${nonceStr}',
      signature: '${signature}',
      jsApiList: [
        'checkJsApi',
        'openLocation',
        'getLocation'
      ]
  });
  wx.ready(function () {
  
    	wx.checkJsApi({
    		jsApiList: [
        	'getLocation'
    		],
    			success: function (res) {
		        if (res.checkResult.getLocation == false) {
		            alert('你的微信版本太低，不支持微信JS接口，请升级到最新的微信版本！');
		            return;
		        }
    	}
		});
    	wx.getLocation({
    		type: 'gcj02',
	    	success: function (res) {
		        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
		        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
		        var speed = res.speed; // 速度，以米/每秒计
		        var accuracy = res.accuracy; // 位置精度
		        
		        $("#latitude").attr("value",latitude);
		        $("#longitude").attr("value",longitude);
		        
		        window.location.href = "GuzhiZhoubian/searchZhoubian?openid="+openid+"&latitude="+latitude+"&longitude="+longitude;
	    	},
	    	cancel: function (res) {
	        	alert('用户拒绝授权获取地理位置');
	    	}
		});
		
        });
        wx.error(function (res) {
            alert("error: "+ res.errMsg);
            alert(location.href.split('#')[0]);
        });
        
</script>
  
</html>
