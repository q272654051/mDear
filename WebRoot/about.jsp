<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="content/jsp/header.jsp" />

<!DOCTYPE HTML>
<html>
<head>
<title>About</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="content/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!-- start content -->
<div class="content_bg">
<div class="wrap">
<div class="wrapper">
	<div class="main">
	 	<h2 class="style">About us</h2>
		<div class="about">
			 <div class="cont-grid-img img_style">
	     		<a href="details.jsp"><img src="content/images/about_pic.jpg" alt=""></a>
	     	</div>
	       <div class="cont-grid">
	       <div class="abt-style">
	       	<span>Lorem Ipsum is simply dummy text of the printing </span>
	       	<p class="style top">Lorem Ipsum is simply dummy text of the printing and typesetting industry., Lorem Ipsum  dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit esse when an,Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings,</p>
	       	<p class="style btm">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle.</p>
			<div class="button top"><a href="details.jsp">Read More</a></div>
	       	</div>
	      	 <div class="clear"></div>
	      	</div>
	      	<div class="clear"></div>
	    	<div class="about-p top">
	    		<p class="style">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
		    	<p class="style">Lorem Ipsum is simply dummy text of the printing and typesetting industry., Lorem Ipsum  dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit esse when an,Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings 1500s, </p>
				<p class="style">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit</p>
				<p class="style top">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
				<p class="style">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since dummy text of the printing and usings 1500s,Duis aute irure dolor in reprehenderit in voluptate velit</p>
				<div class="button top"><a href="details.jsp">Read More</a></div>
		</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
</div>
</body>
<jsp:include page="content/jsp/footer.jsp" />
</html>