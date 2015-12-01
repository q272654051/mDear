<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>	
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="content/css/style_login.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>
<body>
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>
 <!--SIGN UP-->
 <h1>mDear Login Form</h1>
<div class="login-form">
	<!-- <div class="close"> </div> -->
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="content/images/avtar.png" />
	</div>
			<form>
					<input type="text" class="text" id="username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
						<!-- <div class="key"> -->
					<input type="password" value="Password" id="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						<!-- </div> -->
			</form>
			<a href="register.jsp"><font color="white">点击注册</font></a>
			<a href="register.jsp"><font color="white">忘记密码</font></a>
	<div class="signin">
		<input type="submit" onclick="login()" value="登录" >
	</div>
</div>
 <div class="copy-rights">
					<p>Copyright &copy; 2015. www.mDear.win All rights reserved.<br>
				星禹记忆|记忆的搬运工<!--  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> --></p>
			</div>

</body>
<script src="content/js/jquery-1.11.0.min.js"></script>
<script src="content/js/jsp/login.js"></script>
</html>