<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <p class=\"MsoListParagraph\" style=\"margin-left: 0px; text-indent: 0px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><span style=\"font-size: 20px; line-height: 175%; font-family: Wingdings;\">l<span style=\"font-size: 20px; line-height: normal; font-family: &&mt;39;Times New Roman&&mt;39;;\">&nbsp; </span></span><strong><span style=\"font-size: 20px; line-height: 175%; font-family: 宋体;\">现状：</span></strong></span><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 18px; color: rgb(0, 112, 192);\"><strong><span style=\"color: rgb(0, 112, 192); line-height: 175%; font-family: 宋体;\">成交情况： 二手房成交量环比下跌三成，价格仍涨</span></strong></span><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 1.75em; text-align: justify;\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\">深圳二手住宅成交量经历上个季度疯狂增长后，7月终于达到了顶峰，虽然当前政策环境依旧宽松，但楼市受股市暴跌及房价上涨过快的影响，购房者进入楼市热情趋缓，根据云房数据库数据统计，8月深圳二手住宅共成交11978套，环比下降28%，逐渐回落到稳健的水平。即使在成交量下跌三成的基础上，房价依旧表现出上升态势，但价格涨幅趋缓。据统计，深圳二手住宅成交均价为32929元/㎡，环比上涨2.4%，涨幅相较于之前有明显回落。</span></p><p style=\"text-align:center;line-height:175%\"><img src=\"/js/editor/upload/image/20150909/6357741806249462601073673.png\" title=\"blob.png\" alt=\"blob.png\" width=\"600\" height=\"314\" border=\"0\" vspace=\"0\" style=\"width: 600px; height: 314px;\"/></p><p style=\"text-indent:43px;line-height:175%\"><span style=\"font-size: 18px; color: rgb(0, 112, 192);\"><strong><span style=\"color: rgb(0, 112, 192); line-height: 175%; font-family: 宋体;\">横向对比：</span></strong></span><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent:43px;line-height:175%\"><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\">1.</span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\">成交量</span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 1.75em; text-align: justify;\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\">横向对比深圳各区成交量情况，<strong>龙岗区</strong>继续蝉联8月成交量排行榜首，<strong>宝安区</strong>、<strong>罗湖区</strong>分别位列第二、三位。从当月成交量占比来看，<strong>龙岗区</strong>涨幅2%；<strong>福田</strong>及<strong>南山</strong>占有量均连续数月呈下滑态势，8月分别下滑1%及3%，似乎人们对这二区的热情一路下滑；而<strong>盐田区</strong>则略得宠爱，继续维持7月上涨趋势，本月成交量占比提高1%。</span></p><p style=\"text-align:center;line-height:175%\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\"><img src=\"/js/editor/upload/image/20150909/6357741815796020581645310.png\" title=\"blob.png\" alt=\"blob.png\" width=\"600\" height=\"242\" border=\"0\" vspace=\"0\" style=\"width: 600px; height: 242px;\"/></span></p><p style=\"text-indent:43px;line-height:175%\"><span style=\"font-size: 16px;\"><strong><span style=\"font-size: 21px; line-height: 175%; font-family: 宋体;\">&nbsp;</span></strong><strong><span style=\"font-size: 21px; line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent:43px;line-height:175%\"><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\">2.</span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\">成交均价</span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\">8月<strong>南山区</strong>及<strong>福田区</strong>二手住宅均价依旧并驾齐驱，分别为42938元/㎡、42886元/㎡，而<strong>盐田区</strong>多年以来价格起伏不大，价格排行从深圳的榜首位置一路下滑，本月均价30695元/㎡。</span></p><p style=\"text-align:center;line-height:175%\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\"><img src=\"/js/editor/upload/image/20150909/6357741817663768082403754.png\" title=\"blob.png\" alt=\"blob.png\" width=\"600\" height=\"315\" border=\"0\" vspace=\"0\" style=\"width: 600px; height: 315px;\"/></span></p><p style=\"text-indent: 43px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 18px; color: rgb(0, 112, 192);\"><strong><span style=\"color: rgb(0, 112, 192); line-height: 175%; font-family: 宋体;\">小区监测：可园的成交热情最稳定</span></strong></span><span style=\"font-size: 16px;\"><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\">8月成交量下跌明显，根据云房数据库监测数据显示，可园的成交热情最稳定，虽然相较上月数量上有减少，但是在本月成交量逆水行舟，夺得魁首，均价为29887元/㎡；蛇口花园城均价54920元/㎡，成交量暴跌，已恢复到年初的程度；而上月的冠军中海康城花园，本月只能屈居第二，均价为22452元/㎡。</span></p><p style=\"text-align:center;line-height:175%\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\"><img src=\"/js/editor/upload/image/20150909/6357741819946179947500160.png\" title=\"blob.png\" alt=\"blob.png\" width=\"600\" height=\"311\" border=\"0\" vspace=\"0\" style=\"width: 600px; height: 311px;\"/></span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0px; text-indent: 0px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><span style=\"font-size: 20px; line-height: 175%; font-family: Wingdings;\">l<span style=\"font-size: 20px; line-height: normal; font-family: &&mt;39;Times New Roman&&mt;39;;\">&nbsp; </span></span><strong><span style=\"font-size: 20px; line-height: 175%; font-family: 宋体;\">市场预测：量涨价稳</span></strong></span><span style=\"font-size: 16px;\"><strong><span style=\"font-size: 21px; line-height: 175%; font-family: 宋体;\"></span></strong><strong><span style=\"font-size: 21px; line-height: 175%; font-family: 宋体;\"></span></strong></span></p><p style=\"text-indent: 43px; line-height: 175%; text-align: justify;\"><span style=\"font-size: 16px; line-height: 175%; font-family: 宋体;\">对于深圳来讲，虽然金九银十是传统旺季，九月的成交量相比八月将会有所上升，但价格方面由于过去半年的房价涨幅程度过于剧烈，维持现状局面的可能性更大。即便是8月最后一天三部委联合发布修改公积金二套住房首付比例3改2（北上广深自主决定），以深圳暴涨至今的情况看来，该政策落实几率微不可见，房价已趋于平稳，未来或有下降可能。</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>
  </body>
</html>
