<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>周边小区详情页</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<section class="house-detail-hd">
    <div class="detail-hd-info">
        <div class="big-name">${ResidentialAreaName}</div>
        <small class="small-name">${Address}</small>
        <span class="attention-pic grade-2-5"></span>
    </div>
    <a class="entrust-assess pa" href="Weituopinggu/jumpWeituo?openid=${openid}&ResidentialAreaName=${ResidentialAreaName}">委托评估</a>
</section>

<section class="surrounding-detail">

    <section class="panel basic-info">
        <ul class="basic-list">
            <li class="item">
                <div class="item-title">小区均价:</div>
                <div class="item-con">
                    ${UnitPrice}元/㎡
                </div>
            </li>
            <li class="item">
                <div class="item-title">环比上月:</div>
                <div class="item-con">
                	<c:if test="${RatioByLastMonthForPrice>0}">
                		<span class="proportion"><em class="red"><fmt:formatNumber value="${RatioByLastMonthForPrice*100}" pattern="0.00"/>%</em><b class="gico up"></b></span>
                	</c:if>
                	<c:if test="${RatioByLastMonthForPrice<0}">
                		<span class="proportion"><em class="green"><fmt:formatNumber value="${RatioByLastMonthForPrice*100}" pattern="0.00"/>%</em><b class="gico down"></b></span>
                	</c:if>
                    <div class="last-year">
                        同比去年:
                       <c:if test="${RatioByLastYearForPrice>0}">
                		<span class="proportion"><em class="red"><fmt:formatNumber value="${RatioByLastYearForPrice*100}" pattern="0.00"/>%</em><b class="gico up"></b></span>
                	</c:if>
                	<c:if test="${RatioByLastYearForPrice<0}">
                		<span class="proportion"><em class="green"><fmt:formatNumber value="${RatioByLastYearForPrice*100}" pattern="0.00"/>%</em><b class="gico down"></b></span>
                	</c:if>
                    </div>
                </div>

            </li>
           <!-- <li class="item">
                <div class="item-title">市场单价:</div>
                <div class="item-con">
                    <span class="red blod">24500</span>元/㎡
                    <div class="tag-panel">
                        <a class="tag-btn btn-g" href="javascript:;">单价准确</a>
                        <a class="tag-btn btn-b" href="javascript:;">单价不准</a>
                    </div>
                </div>
            </li>
            
            <li class="item">
                <div class="item-title">租<span class="t2">金</span>:</div>
                <div class="item-con">
                    <span class="red blod">${RentPrice}</span>元
                </div>
            </li>
            -->
        </ul>
    </section><!-- /.basic-info end-->

    <!-- <div class="detail-title">周边配套</div>
    <section class="rim-panel">
        <article class="rim-con">
            <ul class="rim-list">
                <li class="item">
                    <b class="item-pic school"></b><span class="attr">学校：</span><span class="val">车公庄幼儿园、北京进步小学</span>
                </li>
                <li class="item">
                    <b class="item-pic hospital"></b><span class="attr">医院：</span><span class="val">人民医院</span>
                </li>
                <li class="item">
                    <b class="item-pic market"></b><span class="attr">商场：</span><span class="val">物美超市、综合超市、华堂商场</span>
                </li>
                <li class="item">
                    <b class="item-pic bus"></b><span class="attr">公交：</span><span class="val">96路、97路、特10、176路</span>
                </li>
                <li class="item">
                    <b class="item-pic metro"></b><span class="attr">地铁：</span><span class="val">1号线、10号线、6号线</span>
                </li>
            </ul>
        </article>
    </section>
 -->
    <div class="detail-title">历史价格走势</div>

    <section class="cartogram-panel padtop">
        <h3>历史价格走势图</h3>

        <div class="space-pic-con" style="width: 100%; height: 300px;" id="jgzsChartls">

        </div>
    </section>

    <div class="detail-title">历史价格走势分析</div>
    <article class="article-con">
            <p>近期，该小区房产价格呈现
            <c:if test="${RatioByLastMonthForPrice>0}"><mark class="red">上涨
	            </mark>的态势，</p>
	            <p>环比上个月<mark class="red">上升 <fmt:formatNumber value="${RatioByLastMonthForPrice*100}" pattern="0.00"/>%</mark> 。</p>
            </c:if>
            <c:if test="${RatioByLastMonthForPrice<0}"><mark class="green">下滑
	            </mark>的态势，</p>
	            <p>环比上个月<mark class="green">下降 <fmt:formatNumber value="${RatioByLastMonthForPrice*100}" pattern="0.00"/>%</mark> 。</p>
            </c:if>
            <c:if test="${RatioByLastMonthForPrice==0}">平稳</mark>的态势，</p>
            </c:if>
            <br/>
            <p>通过价格走势图分析，近期</p>
            <p>①北京市房产价格大体呈现
            <c:if test="${cityBilistuts}">
            <mark class="red">上涨</mark>的态势。</p>
            </c:if>
            <c:if test="${!cityBilistuts}">
            <mark class="green">下滑</mark>的态势。</p>
            </c:if>
            <p>②${DistrictName}房产价格大体呈现
            <c:if test="${regionBiListuts}">
            <mark class="red">上涨</mark>的态势。</p>
            </c:if>
            <c:if test="${!regionBiListuts}">
            <mark class="green">下滑</mark>的态势。</p>
            </c:if>
            <p>③${ResidentialAreaName}(小区)房产价格大体呈现
            <c:if test="${!communityBilistuts}">
            <mark class="green">下滑</mark>的态势。</p>
            </c:if>
            <c:if test="${communityBilistuts}">
            <mark class="red">上涨</mark>的态势。</p>
            </c:if>
        </article>


    <div class="detail-title">未来价格走势</div>
    <section class="cartogram-panel padtop">
        <h3>未来价格走势</h3>

        <div class="space-pic-con" id="jgzsChartwl" style="width: 100%; height: 300px;">

        </div>
    </section>
    <div class="detail-title">未来价格走势分析</div>
    <article class="article-con">
            <p>预测未来半年内，${ResidentialAreaName}房产价格将
            <c:if test="${!communityBilistuts}">
            <mark class="green">${xiaoquFutureStuts}</mark></p>
            </c:if>
            <c:if test="${communityBilistuts}">
            <mark class="red">${xiaoquFutureStuts}</mark></p>
            </c:if>
        </article>

</section>

<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
<script src="content/js/echarts-all.js" type="text/javascript"></script>
<script type="text/javascript">

    var jgzsChartls = echarts.init(document.getElementById('jgzsChartls'));
    var jgzsChartwl = echarts.init(document.getElementById('jgzsChartwl'));
    var residentialAreaID = '${ResidentialAreaID}';
	function loadChartls(){
		$.getJSON("http://app.fungugu.com/appraiseController/getTrendPic",{"type":'lishi',"residentialAreaID":residentialAreaID,"city":'beijing'},function(data){
			 jgzsChartls.setOption(data,true);
		});
	}
	
	function loadChartwl(){
		$.getJSON("http://app.fungugu.com/appraiseController/getTrendPic",{"type":'weilai',"residentialAreaID":residentialAreaID,"city":'beijing'},function(data){
			 jgzsChartwl.setOption(data,true);
		});
	}
	
	$(function() {
		loadChartls();//历史价格走势echarts图
		loadChartwl();//未来价格走势echarts图
	});
    
</script>
</body>
</html>