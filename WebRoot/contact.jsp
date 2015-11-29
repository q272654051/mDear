<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
	<!--contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h3><span>C</span>ONTACT</h3>
			</div>
			<div class="contact-bottom">
				<div class="col-md-6 contact-left">
					<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d217800.4942262004!2d75.652658!3d31.465535000000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spunjab+and+sind+bank+near+Zahura%2C+Punjab!5e0!3m2!1sen!2sin!4v1431686778373" frameborder="0" style="border:0"></iframe>
				</div>
				<div class="col-md-6 contact-left">
					<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" />
					<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />
					<input type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" />
					<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
					<div class="submit-btn">
						<input type="submit" value="SUBMIT">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="contact-text">
				<div class="col-md-4 contact-text-left">
					<span class="msg"> </span>
					<p><a href="mailto:example@email.com">mail@user.com</a></p>
				</div>
				<div class="col-md-4 contact-text-left">
					<span class="ph"> </span>
					<p>+1 234 567 9871</p>
				</div>
				<div class="col-md-4 contact-text-left">
					<span class="area"> </span>
					<p>756 gt globel Place,<label>CD-Road,M 07 435.</label></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--contact-->
	<jsp:include page="content/jsp/footer.jsp"></jsp:include>
</body>
</html>