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
    <title>卖房估值详情页</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
    <style type="text/css">

    </style>
</head>
<body>

<section class="house-detail-hd">
    <div class="detail-hd-info">
        <div class="big-name" id="ResidentialAreaName">${xiaoquName}</div>
        <input type="hidden" id="pointX" value="${x}"/>
        <input type="hidden" id="pointY" value="${y}"/>
        <input type="hidden" value="${xiaoquName}" id="hiddenResidentialAreaName"/>
        <input type="hidden" value="${openid}" id="openid"/>
        <input type="hidden" value="${weiTuoPingGuMianJi}" id="weiTuoPingGuMianJi"/>
        <small class="small-name" id="Address">${address}</small>
        <span class="attention-pic grade-2-5"></span>
    </div>
    <a class="entrust-assess pa" href="Weituopinggu/jumpWeituo?openid=${openid}&ResidentialAreaName=${xiaoquName}&weiTuoPingGuMianJi=${weiTuoPingGuMianJi}">委托评估</a>
</section>

<section>
    <ul class="tab-con clear cols-5" id="detailTab">
        <li class="active"><a href="javascript:;">基本信息</a></li>
        <li><a href="javascript:;">成交周期</a></li>
        <li><a href="javascript:;">案例</a></li>
        <li><a href="javascript:;">价格走势</a></li>
        <li><a href="javascript:;">资金管理</a></li>
    </ul>
</section>

<section class="house-deetail-con" id="detailTabCon">
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
                    <c:if test="${junjiahuanbi>0}">
                    <span class="proportion"><em class="red">${junjiahuanbi}%</em><b class="gico up"></b></span>
                    </c:if>
                    <c:if test="${junjiahuanbi<0}">
                    <span class="proportion"><em class="green">${junjiahuanbi}%</em><b class="gico down"></b></span>
                    </c:if>
                    <c:if test="${junjiahuanbi==0}">
                    <span class="proportion">--</span>
                    </c:if>
                    <div class="last-year">同比去年:
                    <c:if test="${junjiatongbi>0}">
                    <span class="proportion"><em class="red">${junjiatongbi}%</em><b class="gico up"></b></span>
                    </c:if>
                    <c:if test="${junjiatongbi<0}">
                    <span class="proportion"><em class="green">${junjiatongbi}%</em><b class="gico down"></b></span>
                    </c:if>
                    <c:if test="${junjiatongbi==0}">
                    <span class="proportion">--</span>
                    </c:if>
                    </div>
                </div>

            </li>
            <li class="item">
                <div class="item-title">总<span class="t2">价</span>:</div>
                <div class="item-con">
                    <span class="red blod">${zongjia}</span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">市场单价:</div>
                <div class="item-con">
                    <span class="red blod">${shichangdanjia}</span>元/㎡
                    <div class="tag-panel">
                        <a class="tag-btn btn-g" id="zhunque" href="javascript:;">单价准确</a>
                        <a class="tag-btn btn-b" id="buzhun" href="javascript:;">单价不准</a>
                    </div>
                </div>
            </li>
            <li class="item">
                <div class="item-title">租<span class="t2">金</span>:</div>
                <div class="item-con">
                    <span class="red blod">${zujingjunjia}</span>元
                </div>
            </li>
        </ul>
        <section class="detail-title">价格分析</section>
        <article class="article-con">
            <p>本小区此类户型</p>
            <p>市场合理价格范围为<mark class="red blod">${lowLimitPrice} - ${upperLimitPrice}</mark>元/㎡。</p>
            <c:if test="${yxdj!=''}">
                <c:if test="${yxdj_db>upperLimitPrice}">
	            <p>亲，您的预售价格 <mark class="red">高于</mark></p>
	            <p>目前市场上的合理价格范围，</p>
	            <p><mark class="red">很难</mark>成交。</p>
                </c:if>
                <c:if test="${yxdj_db<lowLimitPrice}">
	            <p>亲，您的预售价格 <mark class="red">偏低</mark>，</p>
	            <p>不符合目前市场上的合理价格范围，</p>
	            <p><mark class="red">很容易</mark>成交。</p>
                </c:if>
                <c:if test="${yxdj_db>lowLimitPrice&&yxdj<upperLimitPrice}">
	            <p>亲，您的预售价格 <mark class="red">符合</mark></p>
	            <p>目前市场上的合理价格范围，在双方自愿磋商的情况下，
	            <mark class="red">有望实现</mark>成交。</p>
                </c:if>
            </c:if>
        </article>
    </section><!-- /.basic-info end-->

    <section class="panel bargain-space">
        <section class="cartogram-panel">
            <h3>成交周期分布图</h3>

            <div class="space-pic-con" id="cjzqChart" style="width: 100%; height: 300px;">

            </div>
        </section>
        <div class="detail-title">成交周期分析</div>
        <article class="article-con">
            估价对象的成交时间为 <mark class="red">${chengjaoqujian}</mark> ，属于 <mark class="red">${zhouqikuaiman}</mark> ，${chengjaoqujianMiaoshu_2}
        <mark class="red">${gaodibijiao}</mark> <br>${chengjaoqujianMiaoshu_3}
        <c:if test="${flag==true}">，${chengjaoqujianMiaoshu_4}。</c:if>
        </article>
    </section><!-- /.bargain-space end-->

    <section class="panel casus-panel">
        <section class="casus-analyze">
            <div class="casus-hd">
                <h3>案例分析</h3>
                <div class="casus-tab" id="casusTab">
                	<a class="item active" href="javascript:;">估价案例</a>
                    <a class="item" href="javascript:;">挂牌案例</a>
                    <a class="item" href="javascript:;">成交案例</a>
                </div>
            </div>

            <section class="casus-table" id="casusTabCon">
            	<section class="panel">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                        <tr>
                            <td>案例时间</td>
                            <td>面积㎡</td>
                            <td>居室类型</td>
                            <td>单价(元/㎡)</td>
                            <td>总价(万元)</td>
                        </tr>
                        </thead>
                        <tbody id="xjalTbadyList">
                        </tbody>
                    </table>
                    <div id="pagexjalUl" style="text-align: center; margin: 10px auto;"></div>
                </section>
                
                <section class="panel">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <td>案例时间</td>
                                <td>面积㎡</td>
                                <td>居室类型</td>
                                <td>单价(元/㎡)</td>
                                <td>总价(万元)</td>
                            </tr>
                        </thead>
                        <tbody id="gpalTbadyList">
                            
                        </tbody>
                    </table>
                    <div id="pagegpalUl" style="text-align: center; margin: 10px auto;"></div>
                </section>

                <section class="panel">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                        <tr>
                            <td>案例时间</td>
                            <td>面积㎡</td>
                            <td>居室类型</td>
                            <td>单价(元/㎡)</td>
                            <td>总价(万元)</td>
                        </tr>
                        </thead>
                        <tbody id="cjalTbadyList">
                        
                        </tbody>
                    </table>
                    <div id="pagecjalUl" style="text-align: center; margin: 10px auto;"></div>
                </section>
            </section>
        </section>
        <div class="detail-title">案例分析</div>
        <article class="article-con">
            <p>该类房产户型，市场合理价格区间 <mark class="red">${hlscjg_min} - ${hlscjg_max}</mark> 元/㎡。</p>
            <p>本小区近期的挂牌、成交走势分析</p>
            <c:if test="${gpal_avg=='0'}">
            <p><mark class="red">暂无挂牌案例，也没有成交案例</mark></p>
            </c:if>
            <c:if test="${gpal_avg!='0'&&cjal_avg=='0'}">
            <p>①当前挂牌均价为<mark class="red">${gpal_avg}</mark>元/㎡</p>
            <p>挂牌的案例密集的分布在<mark class="red">${guapaijunjiaqujian}</mark>元/㎡之间。</p>
            </c:if>
            <c:if test="${gpal_avg!='0'&&cjal_avg!='0'}">
            <p>①当前挂牌均价为<mark class="red">${gpal_avg}</mark>元/㎡</p>
            <p>挂牌的案例密集的分布在<mark class="red">${guapaijunjiaqujian}</mark>元/㎡之间。</p>
            <p>②成交均价为<mark class="red">${cjal_avg}</mark>元/㎡</p>
            <p>成交案例主要分布在<mark class="red">${chengjiaojunjiaqujian}</mark>元/㎡之间。</p>
            </c:if>
        </article>
    </section><!-- /.casus-panel end-->

    <section class="panel price-trend">
        <section class="cartogram-panel">
            <h3>2015价格走势图</h3>

            <div class="space-pic-con" style="width: 100%; height: 300px;" id="jgzsChartls">

            </div>
        </section>

        <div class="detail-title">历史价格走势分析</div>
        <article class="article-con">
            <p>近期，该小区房产价格呈现
            <c:if test="${junjiahuanbi>0}"><mark class="red">上涨
            </mark>的态势，</p>
            <p>环比上个月<mark class="red">上升 ${junjiahuanbi}%</mark> 。</p>
            </c:if>
            <c:if test="${junjiahuanbi<0}"><mark class="green">下滑
            </mark>的态势，</p>
            <p>环比上个月<mark class="green">下降 ${junjiahuanbi}%</mark> 。</p>
            </c:if>
            <c:if test="${junjiahuanbi==0}">平稳</mark>的态势，</p>
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
            <p>③${xiaoquName}(小区)房产价格大体呈现
            <c:if test="${!communityBilistuts}">
            <mark class="green">下滑</mark>的态势。</p>
            </c:if>
            <c:if test="${communityBilistuts}">
            <mark class="red">上涨</mark>的态势。</p>
            </c:if>
        </article>

        <section class="cartogram-panel">
            <h3>未来价格走势图</h3>

            <div class="space-pic-con" id="jgzsChartwl" style="width: 100%; height: 300px;">

            </div>
        </section>

        <div class="detail-title">未来价格走势分析</div>
        <article class="article-con">
            <p>预测未来半年内，${xiaoquName}房产价格将
            <c:if test="${!communityBilistuts}">
            <mark class="green">${xiaoquFutureStuts}</mark></p>
            </c:if>
            <c:if test="${communityBilistuts}">
            <mark class="red">${xiaoquFutureStuts}</mark></p>
            </c:if>
        </article>
    </section><!-- /.price-trend end-->

    <section class="panel funds-manage">
        <h3 class="title">资金管理</h3>
        <section class="funds-table">
            <table cellpadding="0" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <td>单位</td>
                        <td>性质</td>
                        <td>收益率</td>
                        <td>收益额(万元)</td>
                    </tr>
                </thead>
                <tbody>
                <c:if test="${zjglList!=null}">
                    <c:forEach items="${zjglList}" var="z">
                        <tr>
                            <td><c:out value="${z.danwei}"/></td>
                            <td><c:out value="${z.xingzhi}"/></td>
                            <td><c:out value="${z.shouyilv}"/></td>
                            <td><c:out value="${z.shouyie}"/></td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>
        </section>

    </section><!-- /.funds-manage end-->

</section>
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
<script src="content/js/echarts-all.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
        loadguapaianli(1);
    	loadxunjiaanli(1);
    	loadchengjiaoanli(1);
    	var guid = '${xjId}';
        var shichangdanjia = '${shichangdanjia}';
        var residentialAreaID = '${xiaoquID}';
        var residentialAreaName = '${xiaoquName}';
        var openid = '${openid}';
        $("#zhunque").on("tap",function(){
            $.ajax({
                    type: "GET",
                    url: "GuzhiBuyer/xunjiaFankui",
                    data: {
                        "cityName": "北京市",
                        "residentialAreaID": residentialAreaID,
                        "originID": guid,
                        "residentialAreaName": residentialAreaName,
                        "priceType": "市场单价",
                        "price": shichangdanjia,
                        "isAccurate": "True",
                        "openid": openid,
                    },
                    dataType: "json",
                    success: function (msg) {
                        if (msg["success"] == "true"){
                        
                        alert("反馈成功");
                        } else {
                        alert("反馈失败");
                        }
                    }, error: function () {
                    alert("反馈失败");
                    }
                });
        });
        
        $("#buzhun").on("tap",function(){
        
            var val=prompt("请输入您认为的合理单价", shichangdanjia);
            if (val!=null && val!="")
            {
            buzhunfankui(val);
            }
        });
        
        function buzhunfankui(val){
        $.ajax({
                    type: "GET",
                    url: "GuzhiBuyer/xunjiaFankui",
                    data: {
                        "cityName": "北京市",
                        "residentialAreaID": residentialAreaID,
                        "originID": guid,
                        "residentialAreaName": residentialAreaName,
                        "priceType": "市场单价",
                        "price": val,
                        "isAccurate": "False",
                        "openid": openid,
                    },
                    dataType: "json",
                    success: function (msg) {
                        if (msg["success"] == "true"){
                        
                        alert("反馈成功");
                        } else {
                        alert("反馈失败");
                        }
                    }, error: function () {
                    alert("反馈失败");
                    }
                });
        }
    });
    /**********************************挂牌案例start*********************************/
function loadguapaianli(curPage){
	var  xiaoquName=$("#hiddenResidentialAreaName").val();
	$.ajax({
		type : "POST",
		url : "GuzhiSaler/loadGuapaianli_noLogin",
		data:{
			"CityName": "beijing",//动态获取城市名称
			"curPage":curPage,
			"pageSize":5,
			"timespan":6,
			"xiaoqumingcheng":xiaoquName
		},
		dataType:"json",
		async:false,
		success : function(msg) {
			var listTr=$("#gpalTbadyList");
			listTr.html("");
			var xqmc = xiaoquName;
			var data=eval(msg);
			for(var i=0;i<data.list.length;i++){
				listTr.append("<tr><td>"+getDate_gpal(data.list[i].caseTime)+"</td><td>"+data.list[i].area+"</td><td>"+getJushileixing_gpal(data.list[i].roomNumType)+"</td><td>"+data.list[i].price+"</td><td>"+data.list[i].totalPrice+"</td></tr>");
			}
			pagerUtil_gpal(data.curPage, data.end, data.pageSize,
				data.start,  data.totalPage, data.totalRow);

		},error: function  () {
		}
	});
}

function getDate_gpal(tm){
	//var tt=new Date(parseInt(tm)).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " ").split(" ")[0];
	var ttt = new Date(parseInt(tm)).toISOString().substring(0,10).replace(/-/,"/").replace(/-/,"/");;
	return ttt;
}

function getJushileixing_gpal(tm){
	var tt;
	if(tm==1){
		tt="一居室";
	}else if(tm==2){
		tt="二居室";
	}else if(tm==3){
		tt="三居室";
	}else if(tm==4){
		tt="四居室";
	}else if(tm==5){
		tt="五居室";
	}else{
		tt="其他";
	}
	return tt;
}

var colorFlag_gpal=1;
function pagerUtil_gpal(curPage, end, pageSize, start, totalPage, totalRow) {
	var pageUL = $("#pagegpalUl");
	pageUL.attr("class","page");
	pageUL.html("");
	//pageUL.append("<strong>当前页 " + curPage + " 共 " + totalPage + " 页/共" + totalRow + "条</strong>");
	if(totalRow==""||totalRow==0){
		pageUL.append("<div style='margin: 10px 20px;line-height: 24px;  text-align: center;'>该小区没有一条挂牌数据</div>");  
	}else{
		pageUL.append("<a href='javascript:;' onclick='upLoadPage_gpal(" + curPage+ ")'>上一页</a>");
	}
	
	//显示分页提示个数
	var Flag=5;
	if(curPage<=3){
		if(totalPage<5){
			for(var j=0;j<totalPage;j++){
				pageUL.append("<a href='javascript:;' id=gpal_"+ (j + 1)+" onclick='loadguapaianli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}else{
			for(var j=0;j<Flag;j++){
				pageUL.append("<a href='javascript:;' id=gpal_"+ (j + 1)+" onclick='loadguapaianli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}
		colorFlag_gpal=curPage;
	} else if(curPage>totalPage-3){
		for(var j=totalPage-5>=0?totalPage-5:totalPage-4;j<totalPage;j++ ){
			pageUL.append("<a href='javascript:;' id=gpal_"+ (j + 1)+" onclick='loadguapaianli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
		}
		colorFlag_gpal=curPage;
	}else{
		for(var j=curPage-2;j<curPage+3;j++ ){
			pageUL.append("<a href='javascript:;' id=gpal_"+ (j + 1)+" onclick='loadguapaianli(" + j + ")'>" + j  + "</a>");
		}
		colorFlag_gpal=curPage+1;
	}
if(totalRow==""||totalRow==0){
		
	}else{
		pageUL.append("<a href='javascript:;' onclick='DownLoadPage_gpal("+ curPage + ',' + totalPage + ")'>下一页</a>");
	}
	//pageUL.append("<a href='javascript:;' onclick='DownLoadPage_gpal("+ curPage + ',' + totalPage + ")'>下一页</a>");
	$('#gpal_'+colorFlag_gpal).attr("class","on");
}
function upLoadPage_gpal(curPage) {
	if (curPage > 1) {
		var startPage = curPage - 1;
		loadguapaianli(startPage);
	}
}

function DownLoadPage_gpal(curPage, totalPage) {
	if (curPage < totalPage) {
		var endPage = curPage + 1;
		loadguapaianli(endPage);
	}
}
/**********************************挂牌案例end*********************************/

/**********************************成交案例start*********************************/
function loadchengjiaoanli(curPage){
	var  xiaoquName=$("#hiddenResidentialAreaName").val();
	$.ajax({
		type : "POST",
		url : "GuzhiSaler/loadChengjiaoanli_noLogin",
		data:{
			"CityName": "beijing",//动态获取城市名称
			"curPage":curPage,
			"pageSize":5,
			"timespan":6,
			"xiaoqumingcheng":xiaoquName
		},
		dataType:"json",
		async:false,
		success : function(msg) {
			//console.log(msg);
			var listTr=$("#cjalTbadyList");
			listTr.html("");
			var xqmc = xiaoquName;
			var data=eval(msg);
			for(var i=0;i<data.list.length;i++){
				listTr.append("<tr><td>"+getDate_gpal(data.list[i].caseTime)+"</td><td>"+data.list[i].area+"</td><td>"+getJushileixing_cjal(data.list[i].roomNumType)+"</td><td>"+data.list[i].price+"</td><td>"+data.list[i].totalPrice+"</td></tr>");
			}
			pagerUtil_cjal(data.curPage, data.end, data.pageSize,
				data.start, data.totalPage, data.totalRow);
		},error: function  () {
		}
	});
}

function getDate_cjal(tm){
	var tt=new Date(parseInt(tm)).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " ").split(" ")[0];
	return tt;
}

function getJushileixing_cjal(tm){
	var tt;
	if(tm==1){
		tt="一居室";
	}else if(tm==2){
		tt="二居室";
	}else if(tm==3){
		tt="三居室";
	}else if(tm==4){
		tt="四居室";
	}else if(tm==5){
		tt="五居室";
	}else{
		tt="其他";
	}
	return tt;
}

var colorFlag_cjal=1;
function pagerUtil_cjal(curPage, end, pageSize, start, totalPage, totalRow) {
	var pageUL = $("#pagecjalUl");
	pageUL.attr("class","page");
	pageUL.html("");
	if(totalRow==""||totalRow==0){
		pageUL.append("<div style='margin: 10px 20px;line-height: 24px;  text-align: center;'>该小区没有一条成交案例数据</div>");  
	}else{
		pageUL.append("<a href='javascript:;' onclick='upLoadPage_cjal(" + curPage+ ")'>上一页</a>");
	}
	//显示分页提示个数
	var Flag=5;
	if(curPage<=3){
		if(totalPage<5){
			for(var j=0;j<totalPage;j++){
				pageUL.append("<a href='javascript:;' id=cjal_"+ (j + 1)+" onclick='loadchengjiaoanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}else{
			for(var j=0;j<Flag;j++){
				pageUL.append("<a href='javascript:;' id=cjal_"+ (j + 1)+" onclick='loadchengjiaoanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}
		colorFlag_cjal=curPage;
	} else if(curPage>totalPage-3){
		for(var j=totalPage-5>=0?totalPage-5:totalPage-4;j<totalPage;j++ ){
			pageUL.append("<a href='javascript:;' id=cjal_"+ (j + 1)+" onclick='loadchengjiaoanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
		}
		colorFlag_cjal=curPage;
	}else{
		for(var j=curPage-2;j<curPage+3;j++ ){
			pageUL.append("<a href='javascript:;' id=cjal_"+ (j + 1)+" onclick='loadchengjiaoanli(" + j + ")'>" + j  + "</a>");
		}
		colorFlag_cjal=curPage+1;
	}
	if(totalRow==""||totalRow==0){
		
	}else{
		pageUL.append("<a href='javascript:;' onclick='DownLoadPage_cjal("+ curPage + ',' + totalPage + ")'>下一页</a>");
	}
	$('#cjal_'+colorFlag_cjal).attr("class","on");
}
function upLoadPage_cjal(curPage) {
	if (curPage > 1) {
		var startPage = curPage - 1;
		loadchengjiaoanli(startPage);
	}
}

function DownLoadPage_cjal(curPage, totalPage) {
	if (curPage < totalPage) {
		var endPage = curPage + 1;
		loadchengjiaoanli(endPage);
	}
}
/**********************************成交案例end*********************************/
/**********************************询价案例start*********************************/
function loadxunjiaanli(curPage){
	var  xiaoquName=$("#hiddenResidentialAreaName").val(); //ResidentialAreaName
	$.ajax({
		type : "POST",
		url : "GuzhiSaler/loadXunjiaanli_noLogin",
		data:{
			"CityName": "beijing",//动态获取城市名称
			"curPage":curPage,
			"pageSize":5,
			"timespan":6,
			"xiaoqumingcheng":xiaoquName
		},
		dataType:"json",
		async:false,
		success : function(msg) {
			var listTr=$("#xjalTbadyList");
			listTr.html("");
			var data=eval(msg);
			for(var i=0;i<data.list.length;i++){
				listTr.append("<tr><td>"+getDate_xjal(data.list[i].CreateDateTime)+"</td><td>"+data.list[i].area+"</td><td>"+getJushileixing_xjal(data.list[i].roomType)+"</td><td>"+(data.list[i].unitPrice==null?"--":data.list[i].unitPrice)
				+"</td><td>"+(data.list[i].totalPrice==null?"--":data.list[i].totalPrice)+"</td></tr>");
			}
			pagerUtil_xjal(data.curPage, data.end, data.pageSize,
				data.start,  data.totalPage, data.totalRow);
			$("#ajaxloading_xjal").hide();
		},error: function  () {
			$("#ajaxloading_xjal").hide();
		}
	});
}

function getDate_xjal(tm){
    var tt = tm.replace(/-/,"/").replace(/-/,"/");
	return tt;
}

function getJushileixing_xjal(tm){
	var tt;
	if(tm==1){
		tt="一居室";
	}else if(tm==2){
		tt="二居室";
	}else if(tm==3){
		tt="三居室";
	}else if(tm==4){
		tt="四居室";
	}else if(tm==5){
		tt="五居室";
	}else{
		tt="其他";
	}
	return tt;
}

var colorFlag_xjal=1;
function pagerUtil_xjal(curPage, end, pageSize, start, totalPage, totalRow) {
	var pageUL = $("#pagexjalUl");
	pageUL.attr("class","page");
	pageUL.html("");
	//pageUL.append("<strong>当前页 " + curPage + " 共 " + totalPage + " 页/共" + totalRow + "条</strong>");
	if(totalRow==""||totalRow==0){
		pageUL.append("<div style='margin: 10px 20px;line-height: 24px;  text-align: center;'>该小区没有一条询价案例数据</div>");  
	}else{
		pageUL.append("<a href='javascript:;' onclick='upLoadPage_xjal(" + curPage+ ")'>上一页</a>");
	}
	
	//pageUL.append("<a href='javascript:;' onclick='upLoadPage_xjal(" + curPage+ ")'>上一页</a>");
	//显示分页提示个数
	var Flag=5;
	if(curPage<=3){
		if(totalPage<5){
			for(var j=0;j<totalPage;j++){
				pageUL.append("<a href='javascript:;' id=xjal_"+ (j + 1)+" onclick='loadxunjiaanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}else{
			for(var j=0;j<Flag;j++){
				pageUL.append("<a href='javascript:;' id=xjal_"+ (j + 1)+" onclick='loadxunjiaanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
			}
		}
		colorFlag_xjal=curPage;
	} else if(curPage>totalPage-3){
		for(var j=totalPage-5>=0?totalPage-5:totalPage-4;j<totalPage;j++ ){
			pageUL.append("<a href='javascript:;' id=xjal_"+ (j + 1)+" onclick='loadxunjiaanli(" + (j + 1)+ ")'>" + (j + 1) + "</a>");
		}
		colorFlag_xjal=curPage;
	}else{
		for(var j=curPage-2;j<curPage+3;j++ ){
			pageUL.append("<a href='javascript:;' id=xjal_"+ (j + 1)+" onclick='loadxunjiaanli(" + j + ")'>" + j  + "</a>");
		}
		colorFlag_xjal=curPage+1;
	}
	if(totalRow==""||totalRow==0){
	}else{
		pageUL.append("<a href='javascript:;' onclick='DownLoadPage_xjal("+ curPage + ',' + totalPage + ")'>下一页</a>");
	}
	//pageUL.append("<a href='javascript:;' onclick='DownLoadPage_xjal("+ curPage + ',' + totalPage + ")'>下一页</a>");
	$('#xjal_'+colorFlag_xjal).attr("class","on");
}
function upLoadPage_xjal(curPage) {
	if (curPage > 1) {
		var startPage = curPage - 1;
		loadxunjiaanli(startPage);
	}
}

function DownLoadPage_xjal(curPage, totalPage) {
	if (curPage < totalPage) {
		var endPage = curPage + 1;
		loadxunjiaanli(endPage);
	}
}

/**********************************询价案例end*********************************/
    var jgzsChartls = echarts.init(document.getElementById('jgzsChartls'));
    var jgzsChartwl = echarts.init(document.getElementById('jgzsChartwl'));
    var cjzqChart = echarts.init(document.getElementById('cjzqChart'));
    var residentialAreaID = '${xiaoquID}';
    var residentialAreaName = '${xiaoquName}';
    var yixiangjiage = '${yxdj}';
    var scdj_yjkj = '${scdj_yjkj}';
    var guid = '${xjId}';
    var area = '${weiTuoPingGuMianJi}';
    var roomType = '${juShiLeiXing}';
    var shichangdanjia = '${shichangdanjia}';
    
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
	
	function loadcjzqChart(){
		$.getJSON("http://app.fungugu.com/appraiseController/getDealCyclePic",{"scdj":shichangdanjia,"room_type":roomType,"house_type":'住宅',"area":area,"guid":guid,"yxdj":yixiangjiage,"cname":residentialAreaName,"city":'beijing',"scdj_yjkj":scdj_yjkj},function(data){
			 cjzqChart.setOption(data,true);
		});
	}
	$(function() {
		loadChartls();//历史价格走势echarts图
		loadChartwl();//未来价格走势echarts图
		loadcjzqChart();//成交周期
	});
</script>
</body>
</html>