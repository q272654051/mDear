<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>MainDear</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="content/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type='text/javascript' src='content/js/jquery.min.js'></script>

  </head>
  
  <body>
  <!--start header-->
<div class="h_bg">
<div class="wrap">
<div class="wrapper">
<div class="header">
	<div class="logo">
		 <a href="index.jsp"><img src="/content/images/logo.png"> </a>
	</div>
	<div class="cssmenu">
	<ul>
	   <li id="home"><a href="index.jsp"><span>首页</span></a></li>
	   <li id="about"><a href="about.jsp"><span>About</span></a></li>
	   <li class="has-sub" id="services"><a href="service.jsp"><span>Services</span></a>
	      <ul>
	         <li class="has-sub"><a href="service.jsp"><span>Service 1</span></a>
	            <ul>
	               <li><a href="service.jsp"><span>Sub Item</span></a></li>
	               <li class="last"><a href="service.jsp"><span>Sub Item</span></a></li>
	            </ul>
	         </li>
	         <li class="has-sub"><a href="service.jsp"><span>Service 2</span></a>
	            <ul>
	               <li><a href="service.jsp"><span>Sub Item</span></a></li>
	               <li class="last"><a href="service.jsp"><span>Sub Item</span></a></li>
	            </ul>
	         </li>
	      </ul>
	   </li>
	   <li class="last" id="contact"><a href="contact.jsp"><span>Contact</span></a></li>
	 <div class="clear"></div>
	 </ul>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>
</div>
</body>
<script type="text/javascript">
$(function(){
	$("#home").click(function(){
		$("#home").addClass("active");
		console.log("home");
	});
	$("#about").click(function(){
		console.log("about");
		$("#about").addClass("active");
	});
	$("#services").click(function(){
		console.log("services");
		$("#services").addClass("active");
	});
	$("#contact").click(function(){
		console.log("contact");
		$("#contact").addClass("active");
	});
});
</script>
</html>
