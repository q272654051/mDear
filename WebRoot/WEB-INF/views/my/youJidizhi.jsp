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
    <title>邮寄地址列表</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">邮寄地址</h3>
</header>

<section class="person-content">
    <section class="option-hd clear pv">
        <h3 class="fl">邮寄地址列表</h3>
        <a class="entrust-assess fr" onclick="addyjdz()">新增邮寄地址</a>
    </section>
<!--     <section class="search-bd clear">
        <i class="icon_ser fl"></i>
        <input class="engine fl" type="text" placeholder="请输入姓名/电话进行搜索"/>
        <a class="btn-engine fl" href="javascript:;">搜索</a>
    </section> -->

    <ul class="list-panel recipients-list">
        <c:forEach items='${data }' var="item">
            <li class="item">
                <div class="big-info">
	                <div class="name">${item.shouJianRen}</div>
	                <div class="tel">
	                <c:if test="${item.shouJianRenDianHua!=''}">
	               	 	${item.shouJianRenDianHua }
	               	 	<c:if test="${item.shouJianRenGudingDianHua!=''}">
	               	 	/${item.shouJianRenGudingDianHua }
	                    </c:if>
	                </c:if>
	                <c:if test="${item.shouJianRenDianHua==''}">
		                <c:if test="${item.shouJianRenGudingDianHua!=''}">
		               	 	${item.shouJianRenGudingDianHua }
		                </c:if>
	                </c:if>
	                </div>
	                <small class="address">${item.youJiDiZhi}</small>
                </div>
                <!-- <i class="icon_edit"></i>  -->
            </li>
<!--                 <td><a href="javascript:;"
                       onclick="updateYoujidizhiInfo('${item.youJiDiZhiId}','${item.shouJianRen}','${item.youJifangwei}','${item.youJiDiZhi}','${item.youZhengBianMa}','${item.shouJianRenDianHua}','${item.shouJianRenGudingDianHua }','${item.moRenShouJianDiZhi }')">修改</a>/<a
                        href="javascript:void(0);"
                        onclick="deleteyouJiInfo('${item.youJiDiZhiId}')">删除</a>/
                        <c:if test="${item.moRenShouJianDiZhi!='1' }">
                        	 <a href="javascript:;" onclick="sheweiMoRen('${item.kehuId}','${item.youJiDiZhiId}')">设为默认</a>
                    	</c:if>
                       
                    <c:if
                            test="${item.moRenShouJianDiZhi=='1' }">
                        <span class="btn btn-red btn-sm" >默认</span>
                    </c:if></td>
                     -->
        </c:forEach>
    </ul>
</section>
<!-- 
<section class="btns-panel full-center">
    <a class="btn btn-blue" href="javascript:;">返回</a>
</section>
 -->

<script type="text/javascript">
    function addyjdz(){
    	var openid = '${openid}';
    	window.location = "Youjidizhi/jumpAddyjdz?openid="+openid;
    	}
</script>
</body>
</html>