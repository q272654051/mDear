<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head lang="en">
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>我的委托</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
	</head>
	<body>
		<header class="header full-center">
   			<h3 class="title">我的委托</h3>
		</header>
		<section class="detail-title" id="data" onchange="dataChange()">
			委托列表
			<select class="min-select">
				<option>全部</option>
				<option>一周</option>
				<option>半月</option>
				<option>一月</option>
				<option>一季</option>
			</select>
			<span class="ico"></span>
		</section>
		<section>
			<ul class="tab-con clear cols-5" id="detailTab">
				<li class="active">
					<a href="javascript:;">全部</a>
				</li>
				<li>
					<a href="javascript:;">已完成</a>
				</li>
				<li>
					<a href="javascript:;">未受理</a>
				</li>
				<li>
					<a href="javascript:;">受理中</a>
				</li>
				<li>
					<a href="javascript:;">已撤单</a>
				</li>
			</ul>
		</section>
		<section id="detailTabCon" class="myweituo">
		 	<section>
				<ul class="mor-house">
					<c:if test="${MyweituoList!=null}">
			            <c:forEach items="${MyweituoList}" var="z">
			            <li>
						<a class="sin" href="Myweituo/jumpWeituoDetail?weituoId=${z.weiTuoPingGuId}&entrustNo=${z.weiTuoPingGuNo}&openid=${openid}&cuidan=${z.isCuidan}&chedan=${z.isChedan}&weiTuoPingGuZhuangTai=${z.weiTuoPingGuZhuangTai}">
							<div class="ver-midd">
								<p class="rim-title">${z.weiTuoXiangMuMingCheng}</p>
								<p class="gray gray-1">委托编号：<em>${z.weiTuoPingGuNo}</em></p>
								<p class="gray gray-1">估值日期：<em>${z.weiTuoPingGuTime}</em></p>
								<p class="gray gray-1">委托状态：<c:if test="${z.weiTuoPingGuZhuangTai==0}">待支付</c:if>
															     <c:if test="${z.weiTuoPingGuZhuangTai==1}"><em class="unaccept">未受理</em></c:if>
															     <c:if test="${z.weiTuoPingGuZhuangTai==2}"><em class="accepted">受理中</em></c:if>
															     <c:if test="${z.weiTuoPingGuZhuangTai==3}"><em class="completed">已完成</em></c:if>
															     <c:if test="${z.weiTuoPingGuZhuangTai==4}">已撤单</c:if></p>
							</div>
						</a>
						</li>
			            </c:forEach>
			        </c:if>
			        <c:if test="${MyweituoList==null}">
			        	<a class="sin">
							<div class="ver-midd">
								<p class="rim-title">当前没有委托记录</p>
							</div>
						</a>
			        </c:if>
				</ul>
		</section>
		<section class="finish">
				<ul class="mor-house">
				    <c:if test="${MyweituoList!=null}">
			            <c:forEach items="${MyweituoList}" var="z">
			            <c:choose> 
			            <c:when test="${z.weiTuoPingGuZhuangTai=='3'}">
			            <li>
						<a class="sin" href="Myweituo/jumpWeituoDetail?weituoId=${z.weiTuoPingGuId}&entrustNo=${z.weiTuoPingGuNo}&openid=${openid}&cuidan=${z.isCuidan}&chedan=${z.isChedan}&weiTuoPingGuZhuangTai=${z.weiTuoPingGuZhuangTai}">
							<div class="ver-midd">
								<p class="rim-title">${z.weiTuoXiangMuMingCheng}</p>
								<p class="gray gray-1">委托编号：<em>${z.weiTuoPingGuNo}</em></p>
								<p class="gray gray-1">估值日期：<em>${z.weiTuoPingGuTime}</em></p>
								<p class="gray gray-1">委托状态：<em class="completed">已完成</em></p>
							</div>
						</a>
						</li>
						</c:when>
						<c:otherwise>
							<!-- <a class="sin">
								<div class="ver-midd">
									<p class="rim-title">当前没有委托记录</p>
								</div>
							</a> -->
						</c:otherwise>
						</c:choose>
			            </c:forEach>
			        </c:if>
			        <c:if test="${MyweituoList==null}">
			        	<a class="sin">
							<div class="ver-midd">
								<p class="rim-title">当前没有委托记录</p>
							</div>
						</a>
			        </c:if>
				</ul>
			</section>
			<section class="not-accept">
				<ul class="mor-house">
					<c:if test="${MyweituoList!=null}">
			            <c:forEach items="${MyweituoList}" var="z">
			            <c:choose> 
			            <c:when test="${z.weiTuoPingGuZhuangTai==1}">
			            <li>
						<a class="sin" href="Myweituo/jumpWeituoDetail?weituoId=${z.weiTuoPingGuId}&entrustNo=${z.weiTuoPingGuNo}&openid=${openid}&cuidan=${z.isCuidan}&chedan=${z.isChedan}&weiTuoPingGuZhuangTai=${z.weiTuoPingGuZhuangTai}">
							<div class="ver-midd">
								<p class="rim-title">${z.weiTuoXiangMuMingCheng}</p>
								<p class="gray gray-1">委托编号：<em>${z.weiTuoPingGuNo}</em></p>
								<p class="gray gray-1">估值日期：<em>${z.weiTuoPingGuTime}</em></p>
								<p class="gray gray-1">委托状态：<em class="unaccept">未受理</em></p>
							</div>
						</a>
						</li>
						</c:when>
						<c:otherwise>
							<!-- <a class="sin">
								<div class="ver-midd">
									<p class="rim-title">当前没有委托记录</p>
								</div>
							</a> -->
						</c:otherwise>
						</c:choose>
			            </c:forEach>
			        </c:if>
			        <c:if test="${MyweituoList==null}">
			        	<a class="sin">
							<div class="ver-midd">
								<p class="rim-title">当前没有委托记录</p>
							</div>
						</a>
			        </c:if>
				</ul>
			</section>
			<section class="acceptting">
				<ul class="mor-house">
					<c:if test="${MyweituoList!=null}">
			            <c:forEach items="${MyweituoList}" var="z">
			            <c:choose> 
			            <c:when test="${z.weiTuoPingGuZhuangTai==2}">
			            <li>
						<a class="sin" href="Myweituo/jumpWeituoDetail?weituoId=${z.weiTuoPingGuId}&entrustNo=${z.weiTuoPingGuNo}&openid=${openid}&cuidan=${z.isCuidan}&chedan=${z.isChedan}&weiTuoPingGuZhuangTai=${z.weiTuoPingGuZhuangTai}">
							<div class="ver-midd">
								<p class="rim-title">${z.weiTuoXiangMuMingCheng}</p>
								<p class="gray gray-1">委托编号：<em>${z.weiTuoPingGuNo}</em></p>
								<p class="gray gray-1">估值日期：<em>${z.weiTuoPingGuTime}</em></p>
								<p class="gray gray-1">委托状态：<em class="accepted">受理中</em></p>
							</div>
						</a>
						</li>
						</c:when>
						<c:otherwise>
							<!-- <a class="sin">
								<div class="ver-midd">
									<p class="rim-title">当前没有委托记录</p>
								</div>
							</a> -->
						</c:otherwise>
						</c:choose>
			            </c:forEach>
			        </c:if>
			        <c:if test="${MyweituoList==null}">
			        	<a class="sin">
							<div class="ver-midd">
								<p class="rim-title">当前没有委托记录</p>
							</div>
						</a>
			        </c:if>
				</ul>
			</section>
			<section  class="">
				<ul class="mor-house">
					<c:if test="${MyweituoList!=null}">
			            <c:forEach items="${MyweituoList}" var="z">
			            <c:choose> 
			            <c:when test="${z.weiTuoPingGuZhuangTai==4}">
			            <li>
						<a class="sin" href="Myweituo/jumpWeituoDetail?weituoId=${z.weiTuoPingGuId}&entrustNo=${z.weiTuoPingGuNo}&openid=${openid}&cuidan=${z.isCuidan}&chedan=${z.isChedan}&weiTuoPingGuZhuangTai=${z.weiTuoPingGuZhuangTai}">
							<div class="ver-midd">
								<p class="rim-title">${z.weiTuoXiangMuMingCheng}</p>
								<p class="gray gray-1">委托编号：<em>${z.weiTuoPingGuNo}</em></p>
								<p class="gray gray-1">估值日期：<em>${z.weiTuoPingGuTime}</em></p>
								<p class="gray gray-1">委托状态：<em>已撤单</em></p>
							</div>
						</a>
						</li>
						</c:when>
						<c:otherwise>
							<!-- <a class="sin">
								<div class="ver-midd">
									<p class="rim-title">当前没有委托记录</p>
								</div>
							</a> -->
						</c:otherwise>
						</c:choose>
			            </c:forEach>
			        </c:if>
			        <c:if test="${MyweituoList==null}">
			        	<a class="sin">
							<div class="ver-midd">
								<p class="rim-title">当前没有委托记录</p>
							</div>
						</a>
			        </c:if>
				</ul>
			</section>
		</section>	
		
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
		$("#data option[value='"+'${data}'+"']").attr("selected",true);
});
       function dataChange(){
        var data = $("#data").val();
        var openid = '${openid}';
        window.location = "Myweituo/jumpMyweituo?startTime="+data+"&openid="+openid;
       }
       
</script>
	</body>
</html>
