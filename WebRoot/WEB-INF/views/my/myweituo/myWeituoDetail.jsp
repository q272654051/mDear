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
    <title>我的委托-委托详情页</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/funApp.js" ></script>
    </head>
	<body>
		<header class="header full-center">
    			<h3 class="title">我的委托</h3>
		</header>
		<section class="apr-details">
			<div class="result-hd">
				委托详情
			</div>
			 <p>
			 	委托编号：
			 	<em>${weiTuoPingGuNo}</em>
			 	<c:if test="${weiTuoPingGuZhuangTai==0}"><span class="state">未支付</span></c:if>
			 	<c:if test="${weiTuoPingGuZhuangTai==1}"><span class="state">未受理</span></c:if>
			 	<c:if test="${weiTuoPingGuZhuangTai==2}"><span class="state1">受理中</span></c:if>
			 	<c:if test="${weiTuoPingGuZhuangTai==3}"><span class="state3">已完成</span></c:if>
			 	<c:if test="${weiTuoPingGuZhuangTai==4}"><span class="state">已撤单</span></c:if>
			 </p>
			 <p>
			 	评估对象：
			 	<em>${pingguduixiang}</em>
			 </p>
			 <p>
			 	评估面积：
			 	<em>${pinggumianji}</em> 平方米
			 </p>
			 <p>
			 	详细地址：
			 	<em>${xiangxidizhi}</em>
			 </p>
		</section>
		<section class="btns-panel full-center result-btn">
			<c:if test="${weiTuoPingGuZhuangTai!=4}">
				<c:if test="${cuidan==0}"><a class="btn btn-blue" onclick="doCuidan(${weiTuoPingGuNo},'催单')">催单</a></c:if>
				<c:if test="${cuidan==1}"><a class="btn btn-default">已催单</a></c:if>
			</c:if>
			<c:if test="${weiTuoPingGuZhuangTai==1}">
				<c:if test="${chedan==0}"><a class="btn btn-blue" onclick="doCuidan(${weiTuoPingGuNo},'撤单')">撤单</a></c:if>
				<c:if test="${chedan==1}"><a class="btn btn-default">已撤单</a></c:if>
			</c:if>
			<a class="btn btn-blue" onclick="doChange()">修改</a>
		</section>
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
});

/**
 * @author djx
 * @param id
 * @description 催单和撤单
 */
function doCuidan(id,type) {
	var weituoId = '${weituoId}';
	var entrustNo = '${entrustNo}';
	var openid = '${openid}';
	var cuidan = '${cuidan}';
	var chedan = '${chedan}';
    $.ajax({
        type: "POST", //用POST方式传输
        dataType: "json", //数据格式:JSON
        url: 'Myweituo/doWeituopinggu_cd', //目标地址
        data: {
            "city": "beijing",
            "id": weituoId,
            "type": type
        },
        success: function (data) {
            if (data["success"] == "false") {//失败
                alert(data["msg"]);
            } else {
                alert(data["msg"]);
                setTimeout(reAutoLoad,1000);
                        function reAutoLoad(){
                           if(cuidan==0&&chedan==1){
                           window.location.href = "Myweituo/jumpWeituoDetail?weituoId="+weituoId+"&entrustNo="+entrustNo+"&openid="+openid+"&cuidan=1&chedan=1";  //跳转详细页面
                           }
                           if(cuidan==0&&chedan==0){
                           	if(type=="催单"){
                           		window.location.href = "Myweituo/jumpWeituoDetail?weituoId="+weituoId+"&entrustNo="+entrustNo+"&openid="+openid+"&cuidan=1&chedan=0";  //跳转详细页面
                           	}
                           	if(type=="撤单"){
                           		window.location.href = "Myweituo/jumpWeituoDetail?weituoId="+weituoId+"&entrustNo="+entrustNo+"&openid="+openid+"&cuidan=0&chedan=1";  //跳转详细页面
                           	}
                           }
                           if(cuidan==1&&chedan==0){
                           window.location.href = "Myweituo/jumpWeituoDetail?weituoId="+weituoId+"&entrustNo="+entrustNo+"&openid="+openid+"&cuidan=1&chedan=1";  //跳转详细页面
                           }
                        }
            }
        },
        error: function () {
            alert(data["msg"]);
        }
    });
}

/**
 * @author djx
 * @param id
 * @description 修改提示
 */
function doChange() {
	alert("相关委托内容修改，请拨打：010-88395867");
}
</script>
	</body>
</html>
