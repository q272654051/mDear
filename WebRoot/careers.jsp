<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>Careers</title>
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
<!--pop-up-box-->
	<script type="text/javascript" src="content/js/modernizr.custom.53451.js"></script>  
	<link href="content/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
	<script src="content/js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--pop-up-box-->
</head>
<body>
	<jsp:include page="content/jsp/header.jsp"></jsp:include>
	<!--career-->
	<div class="career">
		<div class="container">
			<div class="career-top advantage-top">
				<h3><span>C</span>ARRER</h3>
			</div>
			<div class="career-bottom">
				<h4>Career Development Center</h4>
				<div class="career-btm">
					<div class="col-md-6 career-left">
						<img src="content/images/career-1.jpg" alt="" />
						<h5>Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit vam sociis.</h5>
						<p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
						<p>Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. </p>
					</div>
					<div class="col-md-6 career-left career-right">
						<img src="content/images/career-2.jpg" alt="" />
						<span> </span><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent veum molestie lacus. Aenean nonummy hendrerit mauris.</p>
						<span> </span><p>Fusce feugiat malesuada odio. Morbi nunc odio, gida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. </p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!--career-->
	<!--video-->
	<div class="video">
		<div class="container">
			<div class="video-top advantage-top">
				<h3><span>B</span>EST PERFORMANCES</h3>
			</div>
			<div class="video-bottom">
				<a class="play-icon popup-with-zoom-anim" href="#small-dialog5"><span> </span></a><br />
			</div>
		</div>
	</div>
	<!--video-->
	<!--video-->
				<div id="small-dialog5" class="mfp-hide">
					<iframe src="https://player.vimeo.com/video/87910375" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
				</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>								  
			<!--fea-video-->
	<!--special-->
	<div class="special">
		<div class="container">
			<div class="special-top advantage-top">
				<h3><span>S</span>PECIAL NOTICE</h3>
				<p>Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna.</p>
			</div>
			<div class="special-bottom">
				<div class="col-md-4 special-left">
					<ul>
						<li><a href="#">Mauris fermentum dictum </a></li>
						<li><a href="#">Non sequitur condominium</a></li>
						<li><a href="#">Glorious baklava ex librus</a></li>
						<li><a href="#">Sic tempus fugit esperanto</a></li>
						<li><a href="#">Aliquam erat volutpat</a></li>
					</ul>
				</div>
				<div class="col-md-4 special-left">
					<ul>
						<li><a href="#">Integer rutrum ante</a></li>
						<li><a href="#">Lor separat existentie</a></li>
						<li><a href="#">Omnicos directe al</a></li>
						<li><a href="#">Contendre olypian quarrels</a></li>
						<li><a href="#">Fusce feugiat malesuada</a></li>
					</ul>
				</div>
				<div class="col-md-4 special-left">
					<ul>
						<li><a href="#">Lorem ipsum dolor sit amet</a></li>
						<li><a href="#">Praesent veum molestie lacus</a></li>
						<li><a href="#">Duis ultricies pharetra magna</a></li>
						<li><a href="#">Cras maximus nisi lectus</a></li>
						<li><a href="#">Quisque fringilla cursus</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--special-->		
	<jsp:include page="content/jsp/footer.jsp"></jsp:include>
</body>
</html>