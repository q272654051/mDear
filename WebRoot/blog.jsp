<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Blog</title>
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
	<!--blog-->
	<div class="blog">
		<div class="container">
			<div class="blog-top">
				<div class="p-top advantage-top">
					<h3><span>B</span>log</h3>
				</div>
				<div class="col-md-9 blog-left">
					<div class="blog-one">
						<div class="blog-one-top">
							<h6>07/12</h6>
							<a href="single.jsp"><h3>Aenean non ummy henrerit mauris. Phasellus portasce suscipit varius mium sociis natoque</h3></a>
							<ul>
								<li><p>Category : <a href="#"> Vestibulum tincidunt inar</a></p></li>
								<li><p>Wrtitten by <a href="#"> admin</a></p></li>
							</ul>
						</div>
						<div class="blog-two">
							<div class="col-md-5 blog-two-left">
								<a href="single.jsp"><img src="content/images/press-1.jpg" alt="" /></a>
							</div>
							<div class="col-md-7 blog-two-right">
								<p>Quisque pulvinar et ligula ut aliquam. Curabitur ut vulputate magna. Proin in quam velit. In purus ante, sagittis ut tincidunt eu, pulvinar eu nulla. Etiam orci enim, tincidunt at massa eget, dapibus aliquam ex.  Aliquam malesuada eu tortor ac pharetra.</p>
								<p>Curabitur scelerisque eros odio, in aliquet odio sollicitudin quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								<div class="blog-btn">
									<a href="single.jsp">Read more</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="blog-one">
						<div class="blog-one-top">
							<h6>07/01</h6>
							<a href="single.jsp"><h3>Aenean non ummy henrerit mauris. Phasellus portasce suscipit varius mium sociis natoque</h3></a>
							<ul>
								<li><p>Category : <a href="#"> Vestibulum tincidunt inar</a></p></li>
								<li><p>Wrtitten by <a href="#"> admin</a></p></li>
							</ul>
						</div>
						<div class="blog-two">
							<div class="col-md-5 blog-two-left">
								<a href="single.jsp"><img src="content/images/press-2.jpg" alt="" /></a>
							</div>
							<div class="col-md-7 blog-two-right">
								<p>Quisque pulvinar et ligula ut aliquam. Curabitur ut vulputate magna. Proin in quam velit. In purus ante, sagittis ut tincidunt eu, pulvinar eu nulla. Etiam orci enim, tincidunt at massa eget, dapibus aliquam ex.  Aliquam malesuada eu tortor ac pharetra.</p>
								<p>Curabitur scelerisque eros odio, in aliquet odio sollicitudin quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								<div class="blog-btn">
									<a href="single.jsp">Read more</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="blog-one">
						<div class="blog-one-top">
							<h6>10/09</h6>
							<a href="single.jsp"><h3>Aenean non ummy henrerit mauris. Phasellus portasce suscipit varius mium sociis natoque</h3></a>
							<ul>
								<li><p>Category : <a href="#"> Vestibulum tincidunt inar</a></p></li>
								<li><p>Wrtitten by <a href="#"> admin</a></p></li>
							</ul>
						</div>
						<div class="blog-two">
							<div class="col-md-5 blog-two-left">
								<a href="single.jsp"><img src="content/images/press-3.jpg" alt="" /></a>
							</div>
							<div class="col-md-7 blog-two-right">
								<p>Quisque pulvinar et ligula ut aliquam. Curabitur ut vulputate magna. Proin in quam velit. In purus ante, sagittis ut tincidunt eu, pulvinar eu nulla. Etiam orci enim, tincidunt at massa eget, dapibus aliquam ex.  Aliquam malesuada eu tortor ac pharetra.</p>
								<p>Curabitur scelerisque eros odio, in aliquet odio sollicitudin quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
								<div class="blog-btn">
									<a href="single.jsp">Read more</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="blog-bottom">
						<nav>
	  						<ul class="pagination">
	    						<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
	    						<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
	    						<li><a href="#">2</a></li>
	    						<li><a href="#">3</a></li>
	    						<li><a href="#">4</a></li>
	    						<li><a href="#">5</a></li>
	    						<li class="disabled"><a href="#" aria-label="next"><span aria-hidden="true">Â»</span></a></li>
	    					<div class="clearfix"></div>
	    					</ul>
						</nav>
				</div>
				</div>
				<div class="col-md-3 blog-right">
					<div class="blog-right-one">
						<h3>Categories</h3>
						<ul>
							<li><a href="#">Sed iaculis sagittis maximus</a></li>
							<li><a href="#">Etiam at mi lobortis</a></li>
							<li><a href="#">Nunc tincidunt tellus</a></li>
							<li><a href="#">Quisque pulvinar et ligula</a></li>
							<li><a href="#">Integer tortor urna</a></li>
							<li><a href="#">Proin pretium velit interdum</a></li>
							<li><a href="#">Curabitur venenatis porttitor</a></li>						
						</ul>
					</div>
					<div class="blog-right-one">
						<h3>Archive</h3>
						<ul>
							<li><a href="#">NOVENBER 2012</a></li>
							<li><a href="#">JANUARY 2013</a></li>
							<li><a href="#">MARCH 2013</a></li>
							<li><a href="#">JUNE 2014</a></li>
							<li><a href="#">AUGUST 2014</a></li>
							<li><a href="#">JANUARY 2015</a></li>					
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--blog-->
	<jsp:include page="content/jsp/footer.jsp"></jsp:include>
</body>
</html>