<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <title>买房估值详情页</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<section class="house-detail-hd">
    <div class="detail-hd-info">
        <div class="big-name" id="ResidentialAreaName">${xiaoquName}</div>
        <input type="hidden" id="residentialAreaID" value="${xiaoquID}"/>
        <input type="hidden" id="pointX" value="${x }"/>
        <input type="hidden" id="pointY" value="${y }"/>
        <input type="hidden" value="${openid}" id="openid"/>
        <small class="small-name" id="Address">${address}</small>
        <span class="attention-pic grade-2-5"></span>
    </div>
    <!--  <a class="entrust-assess pa" href="#">委托评估</a>-->
</section>

<section>
    <ul class="tab-con clear cols-5" id="detailTab">
        <li class="active"><a href="javascript:;">基本信息</a></li>
        <li><a href="javascript:;">议价空间</a></li>
        <li><a href="javascript:;">购买力</a></li>
        <li><a href="javascript:;">价格走势</a></li>
        <li><a href="javascript:;">周边配套</a></li>
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
	            <p>亲，您真土豪！您的预购价格 <mark class="red">高于</mark></p>
	            <p>目前市场上的合理价格范围，</p>
	            <p><mark class="red">容易购买</mark>此房产。</p>
                </c:if>
                <c:if test="${yxdj_db<lowLimitPrice}">
	            <p>很抱歉！您的预购价格 <mark class="red">偏低</mark>，</p>
	            <p>不符合目前市场上的合理价格范围，</p>
	            <p><mark class="red">很难购买到</mark>此房产。</p>
                </c:if>
                <c:if test="${yxdj_db>lowLimitPrice&&yxdj<upperLimitPrice}">
	            <p>亲，您真棒！您的预购价格 <mark class="red">符合</mark></p>
	            <p>目前市场上的合理价格范围，如果买卖双方进一步协商，</p>
	            <p><mark class="red">有望购买</mark>到此房产。</p>
                </c:if>
            </c:if>
        </article>
    </section><!-- /.basic-info end-->

    <section class="panel bargain-space">
        <section class="cartogram-panel">
            <h3>议价空间分布图</h3>

            <div class="space-pic-con" id="yjkjChart" style="width: 100%; height: 300px;">
            </div>
        </section>
        <div class="detail-title">议价空间分析</div>
        <article class="article-con">
            <p>经市场分析，此类户型市场合理均价为<mark class="red">${price}</mark>元/㎡，</p>
            <p>合理议价浮动范围为<mark class="red">${cjBiLi}~${cjBiLi1}</mark> 。</p>
            <c:if test="${yxdj!=''}">
            ${yxjgStatus}
            </c:if>
            <!--  <p>预购价格<mark class="red">脱离市场合理成交规律</mark> 。源于您输入的预购价格在<mark class="red">低于-9.76%</mark>的</p>
            <p>区域内，<mark class="red">远低于</mark>同类户型合理议价浮动范围，<mark class="red">不符合正常的市场行情</mark> 。</p>-->
        </article>
    </section><!-- /.bargain-space end-->

    <section class="panel purchase-panel">
        <ul class="purchase-list">
            <li class="item">
                <div class="item-title">准备金额:</div>
                <div class="item-con">
                    <span class="red" id="r_zb_min">373</span>-<span class="red" id="r_zb_max">428</span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">首付金额:</div>
                <div class="item-con">
                    <span class="red"><fmt:formatNumber value="${diyazongjia_min*0.3}"  pattern="#"/></span>-
                    <span class="red"><fmt:formatNumber value="${diyazongjia_max*0.3}"  pattern="#"/></span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">抵押差价:</div>
                <div class="item-con">
                    <span class="red">${zongjia-diyazongjia_max  }</span>-
                    <span class="red">${zongjia-diyazongjia_min  }</span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">中介费用:</div>
                <div class="item-con">
                    <span class="red"><fmt:formatNumber value="${zongjia*0.02}"  pattern="#"/></span>-
                    <span class="red"><fmt:formatNumber value="${zongjia*0.03}"  pattern="#"/></span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">契税金额:</div>
                <div class="item-con">
                    <span class="red" id="r_qs_min"></span>万元
                </div>
            </li>
            <li class="item">
                <div class="item-title">营<span class="t3">业</span>税:</div>
                <div class="item-con">
                    <span class="red" id="r_yys"></span>万元
                </div>
            </li>
        </ul>
        <div class="sum-text">此套户型最大贷款总额为<span class="red blod"><fmt:formatNumber value="${diyazongjia_max*0.7  } "  pattern="#"/></span>万元</div>
        <section class="purchase-table">
            <h3 class="big-text">等额本息</h3>
            <table cellspacing="1" cellpadding="1" width="100%">
                <tbody>
                    <tr>
                        <td>还款月数(月)</td>
                        <td>240</td>
                        <td>360</td>
                    </tr>
                    <tr>
                        <td>每月还款(元)</td>
                        <td><fmt:formatNumber value="${benxi2year['monthPayment'] } "  pattern="#.0"/>
                        </td>
                        <td><fmt:formatNumber value="${benxi3year['monthPayment'] } "  pattern="#.0"/>
                        </td>
                    </tr>
                    <tr>
                        <td>总支付利息(万元)</td>
                        <td><fmt:formatNumber value="${benxi2year['totalInterset']/10000 } "  pattern="#.0"/></td>
                        <td><fmt:formatNumber value="${benxi3year['totalInterset']/10000 } "  pattern="#.0"/></td>
                    </tr>
                    <tr>
                        <td>本息合计(万元)</td>
                        <td><fmt:formatNumber value="${benxi2year['totalCash']/10000 } "  pattern="#.0"/></td>
                        <td><fmt:formatNumber value="${benxi3year['totalCash']/10000 } "  pattern="#.0"/></td>
                    </tr>
                    <tr>
                        <td>购房总费用(万元)</td>
                        <td id="benxi2"></td>
                        <td id="benxi3"></td>
                    </tr>
                </tbody>
            </table>
        </section>

        <section class="purchase-table">
            <h3 class="big-text">等额本金</h3>
            <table cellspacing="1" cellpadding="1" width="100%">
                <tbody>
                <tr>
                    <td>还款月数(月)</td>
                    <td>240</td>
                    <td>360</td>
                </tr>
                <tr>
                    <td>每月还款(元)</td>
                    <td><fmt:formatNumber value="${benjin2year['firstMonthPayment'] } "  pattern="#.0"/><br>
                    <span class="decrease">递减<fmt:formatNumber value="${benjin2year['degression'] } "  pattern="#.0"/></span></td>
                    <td><fmt:formatNumber value="${benjin3year['firstMonthPayment'] } "  pattern="#.0"/><br>
                    <span class="decrease">递减<fmt:formatNumber value="${benjin3year['degression'] } "  pattern="#.0"/></span></td>
                </tr>
                <tr>
                    <td>总支付利息(万元)</td>
                    <td><fmt:formatNumber value="${benjin2year['totalInterset']/10000 } "  pattern="#.0"/></td>
                    <td><fmt:formatNumber value="${benjin3year['totalInterset']/10000 } "  pattern="#.0"/></td>
                </tr>
                <tr>
                    <td>本息合计(万元)</td>
                    <td><fmt:formatNumber value="${benjin2year['totalCash']/10000 } "  pattern="#.0"/></td>
                    <td><fmt:formatNumber value="${benjin3year['totalCash']/10000 } "  pattern="#.0"/></td>
                </tr>
                <tr>
                    <td>购房总费用(万元)</td>
                    <td id="benjin2"></td>
                    <td id="benjin3"></td>
                </tr>
                </tbody>
            </table>
        </section>

    </section><!-- /.purchase end-->

    <section class="panel price-trend">
        <section class="cartogram-panel">
            <h3>历史价格走势图</h3>

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

    <section class="panel rim-mating">
        <article class="rim-con">
            <ul class="rim-list">
                <li class="item">
                <c:if test=""></c:if>
                    <b class="item-pic school"></b><span class="attr">学校：</span><span class="val">${xuexiao}</span>
                </li>
                <li class="item">
                    <b class="item-pic hospital"></b><span class="attr">医院：</span><span class="val">${yiyuan}</span>
                </li>
                <li class="item">
                    <b class="item-pic market"></b><span class="attr">商场：</span><span class="val">${shangchang}</span>
                </li>
                <li class="item">
                    <b class="item-pic bus"></b><span class="attr">公交：</span><span class="val">${gongjiao}</span>
                </li>
                <li class="item">
                    <b class="item-pic metro"></b><span class="attr">地铁：</span><span class="val">${ditie}</span>
                </li>
                <li class="item">
                    <b class="item-pic metro"></b><span class="attr">银行：</span><span class="val">${yinhang}</span>
                </li>
            </ul>
        </article>
    </section><!-- /.rim-mating end-->

</section>

<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
<script src="content/js/pages/shuifei_jisuanqi.js" type="text/javascript"></script>
<script src="content/js/echarts-all.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
    	var qs_min;
    	var qs_max;
    	var yys_val;
    	var zb_min;
    	var zb_max;
    	var mj = '${weiTuoPingGuMianJi}';
    	var dy_min = '${diyazongjia_min}';
    	var dy_max = '${diyazongjia_max}';
    	var zongjia = '${zongjia}';
    	var sf_min= (zongjia*0.3).toFixed(0);
    	var sf_max= (zongjia*0.3).toFixed(0);
    	var zj_min= (zongjia*0.02).toFixed(0);
    	var zj_max= (zongjia*0.03).toFixed(0);
    	var cj_min = zongjia - dy_max;
    	var cj_max = zongjia - dy_min;
    	qs_min = qs(1,3,mj,zongjia);
    	yys_val = yys(1,3,mj,zongjia);
    	zb_min = parseInt(qs_min)+parseInt(zj_min)+parseInt(sf_min)+parseInt(cj_min);
    	zb_max = parseInt(qs_min)+parseInt(zj_max)+parseInt(sf_max)+parseInt(cj_max);
    	$("#r_qs_min").text(qs_min);
    	$("#r_zb_min").text(zb_min);
    	$("#r_zb_max").text(zb_max);
    	$("#r_yys").text(yys_val);

    	var benjin2 = parseFloat('${benjin2year['totalCash']/10000 }')+parseFloat(zb_min);
    	var benjin3 = parseFloat('${benjin3year['totalCash']/10000 }')+parseFloat(zb_min);
    	var benxi2 = parseFloat('${benxi2year['totalCash']/10000 }')+parseFloat(zb_min);
    	var benxi3 = parseFloat('${benxi3year['totalCash']/10000 }')+parseFloat(zb_min);

    	$("#benxi2").text(benxi2.toFixed(0));
    	$("#benxi3").text(benxi3.toFixed(0));
    	$("#benjin2").text(benjin2.toFixed(0));
    	$("#benjin3").text(benjin3.toFixed(0));


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
    var jgzsChartls = echarts.init(document.getElementById('jgzsChartls'));
    var jgzsChartwl = echarts.init(document.getElementById('jgzsChartwl'));
    var yjkjChart = echarts.init(document.getElementById('yjkjChart'));
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
	
	function loadyjkjChart(){
		$.getJSON("http://app.fungugu.com/appraiseController/getBargainingSpacePic",{"scdj":shichangdanjia,"room_type":roomType,"house_type":'',"area":area,"guid":guid,"yxdj":yixiangjiage,"cname":residentialAreaName,"city":'beijing',"scdj_yjkj":scdj_yjkj},function(data){
			 yjkjChart.setOption(data,true);
		});
	}
	$(function() {
		loadChartls();//历史价格走势echarts图
		loadChartwl();//未来价格走势echarts图
		loadyjkjChart();//议价空间
	});
    
</script>
</body>
</html>