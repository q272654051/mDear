<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-8 footer-left">
					<div class="col-md-4 footer-one">
						<ul>
							<li><a href="about.jsp">关于我们</a></li>
							<li><a href="careers.jsp">Careers</a></li>
							<li><a href="404.jsp">Help</a></li>
							<li><a href="blog.jsp">Blog</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-one">
						<ul>
							<li><a href="#">Terms</a></li>
							<li><a href="#">Payment</a></li>
							<li><a href="#">Shipping</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-one">
						<ul>
							<li><a href="#">LIGHTBOOK</a></li>
							<li><a href="#">CLASSICBOOK</a></li>
							<li><a href="#">PREMIUMBOOK</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 footer-right">
					<div class="footer-two">
						<ul>
							<li><a href="#"><span class="fb"></span></a></li>
							<li><a href="#"><span class="b"></span></a></li>
							<li><a href="#"><span class="cam"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-bottom">
				<p>Copyright &copy; 2015. www.mDear.win All rights reserved.<br>
				星禹记忆|记忆的搬运工<!--  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> --></p>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--footer-->
</html>