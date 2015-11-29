<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Single</title>
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
				<div class="col-md-9 blog-left">
					<div class="blog-one">
						<div class="single-left blog-one-top">
							<h3>Quisque a elit pellentesque, cursus urna et, finibus metus. Vivamus lorem lorem, varius eu pretium vitae</h3>
							<ul>
								<li><p>Category : <a href="#"> Vestibulum tincidunt inar</a></p></li>
								<li><p>Wrtitten by <a href="#"> admin</a></p></li>
							</ul>
							<img src="content/images/single.jpg" alt="" />
							<h4>Cras vehicula libero nec lorem aliquet accumsan. Duis ornare lacinia magna in ultricies. Proin iaculis erat sagittis lectus lacinia porttitor.</h4>
							<p>Proin hendrerit tortor ut erat mattis, et scelerisque purus mattis. Maecenas tempor posuere neque, at fermentum justo faucibus id. Nunc ante sem, malesuada id libero non, sagittis molestie eros. Cras dignissim arcu blandit, euismod nisl at, tristique massa.</p>
							<p>Cras vehicula libero nec lorem aliquet accumsan. Duis ornare lacinia magna in ultricies. Proin iaculis erat sagittis lectus lacinia porttitor. Curabitur scelerisque mi non purus venenatis, quis consectetur odio volutpat. Aliquam eu risus risus. Suspendisse dictum semper libero sed euismod. </p>						
						</div>
						<div class="comments">
							<h3>Comments</h3>
							<div class="media">
  			 						<div class="media-left">
    									<a href="#">
      										<img class="media-object" src="content/images/male.png" alt="" />
    									</a>
  									</div>
  									<div class="media-body">
    										<h4 class="media-heading">Nunc consequat aliquet</h4>
    										<p>Phasellus ut ex eu quam interdum ultrices ac congue nunc. Donec ultricies volutpat purus at rutrum. Suspendisse malesuada ligula eu elit aliquet porttitor. Integer ac magna eget lacus venenatis sagittis id vitae massa.</p>
  									</div>
							</div>
							<div class="media">
  			 						<div class="media-left">
    									<a href="#">
      										<img class="media-object" src="content/images/male.png" alt="" />
    									</a>
  									</div>
  									<div class="media-body">
    										<h4 class="media-heading">Fusce scelerisque</h4>
    										<p>Phasellus ut ex eu quam interdum ultrices ac congue nunc. Donec ultricies volutpat purus at rutrum. Suspendisse malesuada ligula eu elit aliquet porttitor. Integer ac magna eget lacus venenatis sagittis id vitae massa.</p>
											<div class="media">
  			 						<div class="media-left">
    									<a href="#">
      										<img class="media-object" src="content/images/male.png" alt="" />
    									</a>
  									</div>
  									<div class="media-body">
    										<h4 class="media-heading">Curabitur vitae libero</h4>
    										<p>Phasellus ut ex eu quam interdum ultrices ac congue nunc. Donec ultricies volutpat purus at rutrum. Suspendisse malesuada ligula eu elit aliquet porttitor. Integer ac magna eget lacus venenatis sagittis id vitae massa.</p>
  									</div>
							</div>  									
  									</div>
							</div>
						</div>
						
						<div class="reply">
							<h3>Leave Your Reply</h3>
							<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"/>
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"/>
							<textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
							<input type="submit" value="Submit" />
						</div>
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