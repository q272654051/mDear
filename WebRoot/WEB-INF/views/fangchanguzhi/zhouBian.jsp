<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>周边小区</title>
	<link rel="stylesheet" href="content/css/base.css"/>
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script>
  </head>

  <body>
      <!-- appId: ${appId},<br>
      timestamp: ${timestamp}<br>
      nonceStr: ${nonceStr}<br>
      signature: ${signature}<br>
      openid: ${openid}<br> -->
      <input class="" type="hidden" id="openid" value="${openid}" />
		<header class="header full-center">
   			<h3 class="title">周边小区</h3>
		</header>
		<ul class="mor-house">
			<c:if test="${XiaoquList!=null}">
		            <c:forEach items="${XiaoquList}" var="z">
					<li>
						<a href="GuzhiZhoubian/jumpDetail?openid=${openid}&ResidentialAreaID=${z.ResidentialAreaID}&DistrictName=${z.DistrictName}&ResidentialAreaName=${z.ResidentialAreaName}&UnitPrice=${z.UnitPrice}&Address=${z.Address}&RatioByLastYearForPrice=${z.RatioByLastYearForPrice}&RatioByLastMonthForPrice=${z.RatioByLastMonthForPrice}" class="sin">
		                       <!-- <div class="pic"><img src="content/images/rimhouse.png" /></div> -->
							<div class="ver-midd">
								<p class="rim-title">${z.ResidentialAreaName}</p>
								<span class="attention-pic grade-2-5 rank"></span>
								<div class="gray gray-1">
									小区均价：
									<span class="red blod">${z.UnitPrice}</span>
									<span  class="red">元/㎡</span>
								</div>
								<div class="gray-1">
									<span>
										<em class="gray">同比:</em>
										<c:if test="${z.RatioByLastYearForPrice<0}">
										<em class="green blod"><fmt:formatNumber value="${z.RatioByLastYearForPrice*100}" pattern="0.00"/>%</em>
										<b class="gico down"></b>
										</c:if>
										<c:if test="${z.RatioByLastYearForPrice>0}">
										<em class="red blod"><fmt:formatNumber value="${z.RatioByLastYearForPrice*100}" pattern="0.00"/>%</em>
										<b class="gico up"></b>
										</c:if>
									</span>
									<span class="chain">
										<em class="gray">环比:</em>
										<c:if test="${z.RatioByLastMonthForPrice<0}">
										<em class="green blod"><fmt:formatNumber value="${z.RatioByLastMonthForPrice*100}" pattern="0.00"/>%</em>
										<b class="gico down"></b>
										</c:if>
										<c:if test="${z.RatioByLastMonthForPrice>0}">
										<em class="red blod"><fmt:formatNumber value="${z.RatioByLastMonthForPrice*100}" pattern="0.00"/>%</em>
										<b class="gico up"></b>
										</c:if>
									</span>
								</div>
							</div>
						</a>	
					</li>
		            </c:forEach>
		    </c:if>
		    <c:if test="${XiaoquList==null}">
		    <p class="rim-title">周边没有小区</p>
		    </c:if>
		</ul>	
	
  </body>
  <script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
  <script src="content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
  <script>
</script>
  
</html>
