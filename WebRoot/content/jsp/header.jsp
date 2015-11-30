<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
	<!--header-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="head">
				<div class="header-left">
					<div class="logo">
						<a href="index.jsp"><img src="content/images/logo.png" alt="" /></a>
					</div>
				</div>
				<div class="header-right">
					<c:if test="${sessionScope.customer_info.userName==null }">
						<p><a href="login.jsp">请登录</a></p>
					</c:if>
					<c:if test="${sessionScope.customer_info.userName!=null }">
						<c:choose>
							<c:when test="${sessionScope.customer_info.nickName!=null }"><p>${sessionScope.customer_info.userName }</p></c:when>
							<c:otherwise><p>${sessionScope.customer_info.userName }</p></c:otherwise>
						</c:choose>
					</c:if>
				</div>
				<div class="clearfix"> </div>
				<div class="top-nav">
						<div class="nav-icon">
							<a href="#" class="right_bt" id="activator"><span> </span> </a>
						</div>
						 <div class="box" id="box">
							 <div class="box_content">        					                         
								<div class="box_content_center">
								 	<div class="form_content">
										<div class="menu_box_list">
											<ul>
												<li><a href="index.jsp"><span>首页</span></a></li>
												<li><a href="careers.jsp"><span>Careers</span></a></li>
												<li><a href="blog.jsp"><span>Blog</span></a></li>
												<li><a href="contact.jsp"><span>Contact</span></a></li>
												<li><a href="about.jsp"><span>关于我们</span></a></li>
												<li><a href="404.jsp"><span>Help</span></a></li>
												<div class="clearfix"> </div>
											</ul>
										</div>
										<a class="boxclose" id="boxclose"> <span> </span></a>
									</div>                                  
								</div> 	
							</div>  	  
						</div>
					<!---start-click-drop-down-menu----->
			        <!----start-dropdown--->
			         <script type="text/javascript">
						var $ = jQuery.noConflict();
							$(function() {
								$('#activator').click(function(){
									$('#box').animate({'top':'0px'},900);
								});
								$('#boxclose').click(function(){
								$('#box').animate({'top':'-1000px'},900);
								});
							});
							$(document).ready(function(){
							//Hide (Collapse) the toggle containers on load
							$(".toggle_container").hide(); 
							//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
							$(".trigger").click(function(){
								$(this).toggleClass("active").next().slideToggle("500");
									return false; //Prevent the browser jump to the link anchor
							});
												
						});
					</script>
					<!---//End-click-drop-down-menu----->
					<!--top-nav---->
				</div>
				<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						</form>
				</div>
			</div>
		</div>
	</div>
	<!--//header-->
	<!--search-scripts-->
	<script src="content/js/uisearch.js"></script>
	<script src="content/js/classie.js"></script>	
		<script>
			new UISearch( document.getElementById( 'sb-search' ) );
		</script>
	<!--//search-scripts-->
</html>
