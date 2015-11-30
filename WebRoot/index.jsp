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
					<p>线上下单</p>
					<span class="s-one"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-3.png" alt="" />
					<p>支付费用</p>
					<span class="s-one"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-2.png" alt="" />
					<p>等待收取</p>
					<span class="s-tre"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-4.png" alt="" />
					<p>入库存放</p>
					<span class="s-two"> </span>
				</div>
				<div class="col-md-3 services-left">
					<img src="content/images/service-5.png" alt="" />
					<p>到期送出</p>
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
        	 						<h3>珍藏珍贵记忆</h3>
        					 		<p>刚刚迈入大学的校门，总是憧憬即将来到大学生活，给毕业后的自己写封信或者录个视频吧，我们帮你把记忆存下来，作为毕业纪念给你一份特别的回忆； 刚刚步入婚姻的殿堂，给未来的美满幸福一个承诺吧，我们帮您存下这段美好，几年后你会收到意想不到的惊喜。</p>
         						</div>
    					</div>
  					</div>
  					<div class="col-md-4">
    					<div class="thumbnail">
      						<img src="content/images/ad-2.png" alt="" />
      							<div class="caption">
        	 						<h3>存放纪念价值</h3>
        					 		<p>一组孩童时代的照片，一本儿时的纪念册，到你长大之后突然收到关于自己儿时的记忆，也许是姗姗学步时妈妈的骄傲拍摄，也许是嬉笑打闹时爸爸的无意记录，此时热泪盈眶的你是否会想起多久没有回家看看了。</p>
         						</div>
    					</div>
  					</div>
  					<div class="col-md-4">
    					<div class="thumbnail">
      						<img src="content/images/ad-3.png" alt="" />
      							<div class="caption">
        	 						<h3>传递真挚情感</h3>
        					 		<p>好朋友很多，想在过生日的时候都送上自己真挚的祝福，然而总会有遗忘，现在不用担心了，选好他们喜欢的礼物交给我们，只要给一个时间，无论风雨，情谊保证按时送达。</p>
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
							<h5><!-- <img src="content/images/dolor.png" class="dolor" alt="" /> -->￥129</h5>
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
							<h5><!-- <img src="content/images/dolor.png" class="dolor" alt="" /> -->￥239</h5>
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
							<h5><!-- <img src="content/images/dolor.png" class="dolor" alt="" /> -->￥759</h5>
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