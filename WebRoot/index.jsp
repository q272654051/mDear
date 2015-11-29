<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>星禹记忆</title>
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
	<!--banner-->
	<div class="banner">
		<div class="container">
			<div class="banner-top">
				<div class="jumbotron">
  					<h1>记忆的搬运工</h1>
  					<p>将你的记忆存起来吧！</p>
  					<div class="banner-btn">
  						<a class="btn btn-primary btn-lg" href="#" role="button">开启记忆的旅行</a>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--banner-->
	<!--services-->
	<div class="services">
		<div class="container">
			<div class="services-top">
				<div class="col-md-3 services-left">
					<img src="content/images/service-1.png" alt="" />
					<p>Download photos</p>
					<span class="s-one"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-2.png" alt="" />
					<p>Design photobook</p>
					<span class="s-one"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-3.png" alt="" />
					<p>Pay for service</p>
					<span class="s-tre"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-4.png" alt="" />
					<p>Get your photobook</p>
					<span class="s-two"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-5.png" alt="" />
					<p>Get your photobook</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--services-->
	<!--advantage-->
	<div class="advantage">
		<div class="container">
			<div class="advantage-top">
				<h3><span>A</span>DVANTAGE</h3>
			</div>
			<div class="advantage-bottom">
				<div class="row">
  					<div class="col-md-4">
    					<div class="thumbnail">
      						<img src="content/images/ad-1.png" alt="" />
      							<div class="caption">
        	 						<h3>Import photos from</h3>
        					 		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ora incidunt ut labore.</p>
         						</div>
    					</div>
  					</div>
  					<div class="col-md-4">
    					<div class="thumbnail">
      						<img src="content/images/ad-2.png" alt="" />
      							<div class="caption">
        	 						<h3>Photo editing</h3>
        					 		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ora incidunt ut labore.</p>
         						</div>
    					</div>
  					</div>
  					<div class="col-md-4">
    					<div class="thumbnail">
      						<img src="content/images/ad-3.png" alt="" />
      							<div class="caption">
        	 						<h3>Templates</h3>
        					 		<p>Lorem ipsum dolor sit amet, consectetur adipisicing. Ut enim ad minim, nostrud exercitation ullamco laboris nisi ut aliquip ex commodo.</p>
         						</div>
    					</div>
  					</div>
  					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="ad-btn">
				<a href="#">开启记忆的旅行</a>
			</div>
		</div>
	</div>
	<!--advantage-->
	<!--solutions-->
	<div class="solutions">
		<div class="container">
			<div class="solutions-top">
				<h3><span>R</span>EADY SOLUTIONS</h3>
			</div>
			<div class="solutions-bottom">
				<div class="col-md-4 solutions-left">
					<div class="solution-one">
						<h4><span>L</span>ight<span>B</span>ook</h4>
						<div class="s-bottom">
							<ul>
								<li><img src="content/images/correct.png" alt="" /> <p>15×10 cm</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>12 pages</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>binding on the clip</p></li>
							</ul>
							<h5><img src="content/images/dolor.png" class="dolor" alt="" />129</h5>
						</div>
						<div class="s-btn">
							<a href="#">点击封存记忆</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 solutions-left">
					<label> </label>
					<div class="solution-one">
						<h4><span>C</span>lassic<span>B</span>ook</h4>
						<div class="s-bottom">
							<ul>
								<li><img src="content/images/correct.png" alt="" /> <p>15×10 cm</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>12 pages</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>binding on the clip</p></li>
							</ul>
							<h5><img src="content/images/dolor.png" class="dolor" alt="" />239</h5>
						</div>
						<div class="s-btn">
							<a href="#">点击封存记忆</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 solutions-left">
					<div class="solution-one">
						<h4><span>P</span>remium<span>B</span>ook</h4>
						<div class="s-bottom">
							<ul>
								<li><img src="content/images/correct.png" alt="" /> <p>15×10 cm</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>12 pages</p></li>
								<li><img src="content/images/correct.png" alt="" /> <p>binding on the clip</p></li>
							</ul>
							<h5><img src="content/images/dolor.png" class="dolor" alt="" />759</h5>
						</div>
						<div class="s-btn">
							<a href="#">点击封存记忆</a>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--solutions-->
	<!--testimonials-->
	<div class="testimonials">
		<div class="container">
			<div class="testimonials-top">
				<h3><span>T</span>estimonials</h3>
			</div>
			<div class="testimonials-bottom">
				<img src="content/images/test-1.png" alt="" />
				<div class="test-text">
					<h4>John Doe</h4>
					<p>Wedding photographer</p>
				</div>
				<div class="test-btm">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>				
					<div class="next">
						<a href="#">Next testimonial</a>
					</div>				
				</div>	
				<div class="t-btn">
					<a href="#">开启记忆的旅行</a>
				</div>		
			</div>
		</div>
	</div>
	<!--testimonials-->
	<!--terms-->
	<div class="terms">
		<div class="container">
			<div class="terms-top">
				<div class="col-md-4 terms-left">
					<div class="term-one">
						<h4>Terms</h4>
						<div class="term-bottom">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla.</p>
						</div>	
					</div>
				</div>
				<div class="col-md-4 terms-left">
					<div class="term-one">
						<h4>PAYMENT</h4>
						<div class="term-bottom">
							<p>Payment methods:</p>
							<ul>
								<li><p><a href="#">VISA </a></p></li>
								<li><p><a href="#">MasterCard</a></p></li>
								<li><p><a href="#">PayPal</a></p></li>
								<li><p><a href="#">American Express</a></p></li>
							</ul>
						</div>	
					</div>
				</div>
				<div class="col-md-4 terms-left">
					<div class="term-one">
						<h4>SHIPPING</h4>
						<div class="term-bottom">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<h5>Free shipping for PremiumBook</h5>						
						</div>	
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="ad-btn term-btn">
				<a href="#">开启记忆的旅行</a>
			</div>
		</div>
	</div>
	<!--terms-->
<jsp:include page="content/jsp/footer.jsp"></jsp:include>
</body>
</html>