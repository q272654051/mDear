<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<jsp:include page="content/jsp/header.jsp" />
<!DOCTYPE HTML>
<html>
<head>
<title>MainDear</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="content/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--slider-->
<link href="content/css/camera.css" rel="stylesheet" type="text/css"
	media="all" />
<script type='text/javascript' src='content/js/jquery-1.8.2.min.js'></script>
<script type='text/javascript' src='content/js/jquery.min.js'></script>
<script type='text/javascript' src='content/js/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='content/js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='content/js/camera.min.js'></script>
<script type='text/javascript' src='content/js/jsp/index.js'></script>
<script>
	jQuery(function() {

		jQuery('#camera_wrap_1').camera({
			thumbnails : true
		});

		jQuery('#camera_wrap_2').camera({
			height : '400px',
			loader : 'bar',
			pagination : false,
			thumbnails : true
		});
	});
</script>
</head>
<body>

	<!-- start slider -->
	<div class="slider_bg">
		<div class="wrap">
			<div class="wrapper">
				<div class="slider">
					<!-- #camera_wrap_1 -->
					<div class="fluid_container">
						<div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
							<div data-thumb="content/images/thumbs/slider1.jpg"
								data-src="content/images/slider/slider1.jpg"></div>
							<div data-thumb="content/images/thumbs/slider2.jpg"
								data-src="content/images/slider/slider2.jpg"></div>
							<div data-thumb="content/images/thumbs/slider3.jpg"
								data-src="content/images/slider/slider3.jpg"></div>
							<div data-thumb="content/images/thumbs/slider4.jpg"
								data-src="content/images/slider/slider4.jpg"></div>
						</div>
						<!-- #camera_wrap_1 -->
						<div class="clear"></div>
					</div>
					<!-- end #camera_wrap_1 -->
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- start content -->
	<div class="content_bg">
		<div class="wrap">
			<div class="wrapper">
				<div class="main">
					<!-- start content_left -->
					<div class="content_left">
						<div class="search">
							<h2>搜索</h2>
							<form>
								<input type="text" value="" placeholder="Enter Your search...">
								<input type="submit" value="">
							</form>
						</div>
						<div class="text1-nav">
							<h2>main menu</h2>
							<ul>
								<li class="active"><a href="">The standard chunk of
										Lorem</a>
								</li>
								<li><a href="loginController/login">libero euismod viverra sitth</a>
								</li>
								<li><a href="">The standard chunk of Lorem</a>
								</li>
								<li><a href="">libero euismod viverra sitth</a>
								</li>
								<li><a href="">The standard chunk of Lorem</a>
								</li>
								<li><a href="">libero euismod viverra sitth</a>
								</li>
							</ul>
						</div>
						<div class="search1">
							<h2>登录</h2>
							<form id="loginfrom" action="">
								<label>账号:</label> <input type="text" id="username" name="username" />
								<label>密码:</label> <input type="password" id="pwd" name="pwd" />
							</form>
								<button type="submit" id="login" class="submit" onclick="login()">登录</button>
								<button type="submit" id="register" class="submit" onclick="register()">注册</button>
						</div>
					</div>
					<!-- start content_right -->
					<div class="content_right">
						<div class="gallery">
							<h2>Our latest gallery</h2>
							<section>
								<ul class="lb-album">
									<li><a href="#image-1"> <img
											src="content/images/gallery1.jpg" alt=""> <span>
										</span> </a>
										<div class="lb-overlay" id="image-1">
											<img src="content/images/gallery1.jpg" alt=""> <a
												href="#page" class="lb-close"> </a>
										</div></li>
									<li><a href="#image-2"> <img
											src="content/images/gallery2.jpg" alt=""> <span>
										</span> </a>
										<div class="lb-overlay" id="image-2">
											<img src="content/images/gallery2.jpg" alt=""> <a
												href="#page" class="lb-close"> </a>
										</div></li>
									<li><a href="#image-3"> <img
											src="content/images/gallery3.jpg" alt=""> <span>
										</span> </a>
										<div class="lb-overlay" id="image-3">
											<img src="content/images/gallery3.jpg" alt="image03"> <a
												href="#page" class="lb-close"> </a>
										</div></li>
									<li><a href="#image-4"> <img
											src="content/images/gallery4.jpg" alt=""> <span>
										</span> </a>
										<div class="lb-overlay" id="image-4">
											<img src="content/images/gallery4.jpg" alt="image04"> <a
												href="#page" class="lb-close"> </a>
										</div></li>
									<div class="clear"></div>
								</ul>
							</section>
						</div>
						<div class="copyrights">
							Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
						</div>
						<div class="image group">
							<div class="grids_of_2">
								<div class="grid images_3_of_1">
									<img src="content/images/pic1.jpg">
								</div>
								<div class="grid span_2_of_3">
									<h3>Lorem Ipsum is simply</h3>
									<p class="para">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit, sed do eiusmod tempor incididunt ut labore
										et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum
										dolor sit amet, consectetur adipisicing elit,</p>
									<div class="button">
										<span><a href="details.jsp">Read More</a>
										</span>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="grids_of_2 top">
								<div class="grid images_3_of_1">
									<img src="content/images/pic2.jpg">
								</div>
								<div class="grid span_2_of_3">
									<h3>Mauris is dummy text</h3>
									<p class="para">There are many variations of passages of
										Lorem Ipsum available, but the majority have suffered
										alteration in some form, by injected humour, or randomised
										words which don't look even slightly believable. If you are
										going to use a passage of Lorem Ipsum, you need to be sure
										there isn't anything embarrassing hidden in the middle of
										text. All the Lorem Ipsum generators on the Internet tend to
										repeat predefined chunks as necessary,</p>
									<div class="button">
										<span><a href="details.jsp">Read More</a>
										</span>
									</div>
								</div>
								<div class="clear"></div>
							</div>
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