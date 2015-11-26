<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="content/jsp/header.jsp" />
<!DOCTYPE HTML>
<html>
<head>
<title>Details</title>
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
		<div class="details">
			<h2 class="style">Lorem ipsum dolor sit amet, consectetur</h2>
		<div class="det_pic img_style">
			<img src="vimages/det-pic.jpg" alt="">		
		</div>
		<div class="det-para">
			<p class="top style">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor</p>
			<div class="button top"><span><a href="#">Read More</a></span></div>
		</div>
		</div>
	</div>
</div>
</div>
</div>
</body>
<jsp:include page="content/jsp/footer.jsp" />
</html>