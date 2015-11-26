<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="content/jsp/header.jsp" />
<!DOCTYPE HTML>
<html>
<head>
<title>Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="content/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--start lightbox -->
<link rel="stylesheet" type="text/css" href="content/css/jquery.lightbox.css">
<script src="content/js/jquery.min.js"></script>
<script src="content/js/jquery.lightbox.js"></script>
<script>
  // Initiate Lightbox
  $(function() {
    $('.gallery1 a').lightbox(); 
  });
</script>

</head>
<body>
<!-- start content -->
<div class="content_bg">
<div class="wrap">
<div class="wrapper">
	<div class="main">
<div class="ser-main">
		<h2 class="style">Our Services</h2>
		<div class="ser-style top">
			<p class="style">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like. </p>
		</div>
		<div class="ser-grid-list img_style">
		<h5>Service 01</h5>
		<div class="gallery1">
			<a href="content/images/ser_pic1.jpg"><img src="content/images/ser_pic1.jpg" alt=""></a>
		</div>
			<p class="style">Qsi turpis, pellentesque at ultrices in, dapibus in magna. Nunc easi diam risus, placerat ut scelerisque et, placerat ut scelerisque ,Nunc easi diam risus, placerat ut scelerisque et, </p>
			<div class="button top top1"><a href="details.jsp]">Read More</a></div>
		</div>
		<div class="ser-grid-list img_style">
		<h5>Service 02</h5>
		<div class="gallery1">
			<a href="content/images/ser_pic2.jpg"><img src="content/images/ser_pic2.jpg" alt=""></a>
		</div>
			<p class="style">Qsi turpis, pellentesque at ultrices in, dapibus in magna. Nunc easi diam risus, placerat ut scelerisque et,placerat ut scelerisque Nunc easi diam risus, placerat ut scelerisque et, </p>
			<div class="button top top1"><a href="details.jsp">Read More</a></div>
		</div>
		<div class="ser-grid-list img_style">
		<h5>Service 03</h5>
		<div class="gallery1">
			<a href="content/images/ser_pic3.jpg"><img src="content/images/ser_pic3.jpg" alt=""></a>
		</div>
			<p class="style">Qsi turpis, pellentesque at ultrices in, dapibus in magna. Nunc easi diam risus, placerat ut scelerisque etplacet scelerisque ,Nunc easi diam risus, placerat ut scelerisque et, </p>
			<div class="button top top1"><a href="details.jsp">Read More</a></div>
		</div>
		<div class="ser-grid-list img_style">
		<h5>Service 04</h5>
		<div class="gallery1">
			<a href="content/images/ser_pic4.jpg"><img src="content/images/ser_pic4.jpg" alt=""></a>
		</div>
			<p class="style">Qsi turpis, pellentesque at ultrices in, dapibus in magna. Nunc easi diam risus, placerat ut scelerisque etplacet scelerisque ,Nunc easi diam risus, placerat ut scelerisque et, </p>
			<div class="button top top1"><a href="details.jsp">Read More</a></div>
		</div>
		<div class="clear"></div>
		</div>
	</div>
</div>
</div>
</div>
</body>
<jsp:include page="content/jsp/footer.jsp" />
</html>