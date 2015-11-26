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
    <title>我的估值</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    </head>
	<body>
		<header class="header full-center">
    			<h3 class="title">我的估值</h3>
			</header>
		<section >
			<section class="detail-title">
				估值列表
				<select class="min-select" id="data" onchange="dataChange()">
					<option value="1">全部</option>
					<option value="2">一周</option>
					<option value="3">半月</option>
					<option value="4">一月</option>
					<option value="5">一季</option>
				</select>
				<span class="ico"></span>
			</section>
			<section class="search-bd clear hd-bor">
				<i class="icon_ser fl"></i>
				<input class="engine fl" type="text" id="xiaoquname" value="${residentialAreaName }" placeholder="请输入小区名称">
				<a class="btn-engine fl" href="javascript:;" onclick="searchXiaoqu()">搜索</a>		
			</section>
			<ul class="mor-house line3">
			    <c:if test="${count!=0 && count!='0'}">
		            <c:forEach items="${MyguzhiList}" var="z">
		            <li>
					<a class="sin" href="Myguzhi/jumpGuzhiDetail?pingguId=${z.PingGuJiLuId}&openid=${openid}">
                        <!-- <div class="pic">
                            <img src="content/images/rimhouse.png" />
                        </div> -->
						<div class="ver-midd">
							<p class="rim-title">${z.xiaoquName}</p>
							<p class="gray gray-1">单<span class="tow-space"></span>价:<em>${z.ShiChangDanJia}</em>元/㎡</p>
							<p class="gray gray-1">${z.PingGuTime}</em></p>
						</div>
					</a>
					</li>
		            </c:forEach>
		        </c:if>
		        <c:if test="${count=='0' || count==0}">
		        	<a class="sin">
						<div class="ver-midd">
							<p class="rim-title">当前没有询价记录</p>
						</div>
					</a>
		        </c:if>
			</ul>
			
		</section>
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
		$("#data option[value='"+'${data}'+"']").attr("selected",true);
});
       function dataChange(){
        var data = $("#data").val();
        var openid = '${openid}';
        var xiaoquName = $("#xiaoquname").val();
        window.location = "Myguzhi/jumpMyguzhi?startTime="+data+"&openid="+openid+"&residentialAreaName="+xiaoquName;
       }
       
       function searchXiaoqu(){
           var openid = '${openid}';
           var xiaoquName = $("#xiaoquname").val();
           window.location = "Myguzhi/jumpMyguzhi?residentialAreaName="+xiaoquName+"&openid="+openid;
       }
       
</script>
	</body>
</html>
