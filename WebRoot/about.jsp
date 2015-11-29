<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>about</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="PhotoBook Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="content/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="content/css/style.css" rel='stylesheet' type='text/css' />
<script src="content/js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="content/js/move-top.js"></script>
<script type="text/javascript" src="content/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<jsp:include page="content/jsp/header.jsp"></jsp:include>
	<!--who-->
	<div class="who">
		<div class="container">
			<div class="who-top advantage-top">
				<h3><span>W</span>HO WE ARE</h3>
			</div>
			<div class="who-bottom">
				<div class="col-md-6 who-left">
					<img src="content/images/about-1.jpg" alt="" />
				</div>
				<div class="col-md-6 who-right">
					<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ulla mco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
					<p>Fermentum cursus odio orci a dui. Nam vulputate purus erat, vitae feugiat justo suscipit at. Proin sit amet ornare risus, eu rutrum magna.Etiam congue tellus nec elit consectetur sagittis eget quis erat.</p>
					<p>Praesent luctus ex quis arcu fringilla, sed ultricies tortor vehicula. Sed molestie in justo vel accumsan. Nunc ut velit feugiat, viverra ligula eu, consectetur magna.</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--who-->
	<!--what-->
	<div class="what">
		<div class="container">
			<div class="what-top advantage-top">
				<h3><span>W</span>HAT WE OFFER</h3>
			</div>
			<div class="what-bottom">
				<div class="col-md-4 what-left">
					<div class="what-one">
						<img src="content/images/arw.png" alt="" />
					</div>
					<div class="what-two">
						<h4><a href="#">Nam vulputate purus</a></h4>
						<p>Vestibulum luctus, quam sit amet aliquet hendrerit, nunc tellus lacinia nibh, sit amet porttitor velit ante sed orci.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 what-left">
					<div class="what-one">
						<img src="content/images/arw.png" alt="" />
					</div>
					<div class="what-two">
						<h4><a href="#">Consectetur adipiscing elit</a></h4>
						<p>Vestibulum luctus, quam sit amet aliquet hendrerit, nunc tellus lacinia nibh, sit amet porttitor velit ante sed orci.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 what-left">
					<div class="what-one">
						<img src="content/images/arw.png" alt="" />
					</div>
					<div class="what-two">
						<h4><a href="#">Proin sit amet ornare</a></h4>
						<p>Vestibulum luctus, quam sit amet aliquet hendrerit, nunc tellus lacinia nibh, sit amet porttitor velit ante sed orci.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--what-->
	<!--team-->
	<div class="team">
		<div class="container">
			<div class="team-top advantage-top">
				<h3><span>T</span>EAM</h3>
			</div>
			<div class="team-bottom">
				<div class="col-md-3 team-left">
					<img src="content/images/team-1.jpg" alt="" />
					<h4>John Franklin</h4>
					<p>Fusce feugiat malesuada odio orbi nunc odio gravida at. </p>
				</div>
				<div class="col-md-3 team-left">
					<img src="content/images/team-2.jpg" alt="" />
					<h4>Sam Barrow</h4>
					<p>Fusce feugiat malesuada odio orbi nunc odio gravida at. </p>
				</div>
				<div class="col-md-3 team-left">
					<img src="content/images/team-3.jpg" alt="" />
					<h4>Tom Nelson</h4>
					<p>Fusce feugiat malesuada odio orbi nunc odio gravida at. </p>
				</div>
				<div class="col-md-3 team-left">
					<img src="content/images/team-4.jpg" alt="" />
					<h4>Thomas Bishop</h4>
					<p>Fusce feugiat malesuada odio orbi nunc odio gravida at. </p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--team-->
	<jsp:include page="content/jsp/footer.jsp"></jsp:include>
</body>
</html>