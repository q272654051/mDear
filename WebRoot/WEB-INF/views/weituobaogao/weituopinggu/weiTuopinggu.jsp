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
    <title>委托评估</title>
    <link href="content/css/mobiscroll.custom-2.5.0.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>
<input type="hidden" value="${openid}" id="openid"  />
<input type="hidden" value="${shouji}" id="openid"  />
<header class="header full-center">
    <h3 class="title">委托评估</h3>
</header>

<section class="assessment-con">
    <section class="list-panel">
        <section class="fill-hd">
            <span class="hint-txt imp">必填</span>
            <h3 class="h3">基本委托信息</h3>
        </section>

        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">看房联系人:</div>
                <select class="fill-select" id="kflxr" >
                    <option value="">请选择</option>
                </select>
                <span class="fill-add" onclick="addkflxr()"></span>
                <input type="hidden" value="" id="lxrxm"  />
                <input type="hidden" value="" id="lxrdh"  />
            </li>
            <li class="fill-item">
                <div class="fill-title">邮寄地址:</div>
                <select class="fill-select" id="yjdz" >
                    <option value="">请选择</option>
                </select>
                <span class="fill-add" onclick="addyjdz()"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">估价目的:</div>
                <select class="fill-select" name="inputselect" id="inputselect">
                    <option value="">请选择</option>
                    <option value="抵押消费贷">抵押消费贷</option>
                    <option value="二手房按揭">二手房按揭</option>
                    <option value="移民评估">移民评估</option>
                </select>
                <span class="fill-ico"></span>
            </li>

            <li class="fill-item">
                <div class="fill-title">贷款银行:</div>
                <select class="fill-select" name="dkyhVal" id="dkyhVal">
                    <option value="">请选择</option>
                    <option value="中信银行">中信银行</option>
                    <option value="兴业银行">兴业银行</option>
                    <option value="中国农业银行">中国农业银行</option>
                    <option value="中国工商银行">中国工商银行</option>
                    <option value="中国建设银行">中国建设银行</option>
                    <option value="北京农商银行">北京农商银行</option>
                    <option value="华夏银行">华夏银行</option>
                    <option value="中国银行">中国银行</option>
                    <option value="中国光大银行">中国光大银行</option>
                    <option value="浦发银行">浦发银行</option>
                    <option value="平安银行">平安银行</option>
                    <option value="大连银行">大连银行</option>
                    <option value="渤海银行">渤海银行</option>
                    <option value="上海银行">上海银行</option>
                    <option value="江苏银行">江苏银行</option>
                    <option value="花旗银行">花旗银行</option>
                    <option value="北京银行">北京银行</option>
                    <option value="民生银行">民生银行</option>
                    <option value="南京银行">南京银行</option>
                    <option value="韩亚银行">韩亚银行</option>
                    <option value="韩亚银行">厦门国际银行</option>
                    <option value="富邦华一">富邦华一</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">小区名称:</div>
                <input class="fill-input" type="text" value="${ResidentialAreaName}" id="xmmc" placeholder="如：五栋大楼" />
            </li>
            <li class="fill-item">
                <div class="fill-title">所在区域:</div>
                <select class="fill-select" name="cityId" id="cityId">
                    <option>请选择</option>
               		<option value="东城区">东城区</option>
               		<option value="西城区">西城区</option>
               		<option value="朝阳区">朝阳区</option>
               		<option value="丰台区">丰台区</option>
               		<option value="石景山区">石景山区</option>
               		<option value="海淀区">海淀区</option>
               		<option value="门头沟区">门头沟区</option>
               		<option value="房山区">房山区</option>
               		<option value="通州区">通州区</option>
               		<option value="顺义区">顺义区</option>
               		<option value="昌平区">昌平区</option>
               		<option value="大兴区">大兴区</option>
               		<option value="怀柔区">怀柔区</option>
               		<option value="平谷区">平谷区</option>
               		<option value="密云县">密云县</option>
               		<option value="延庆县">延庆县</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">详细地址:</div>
                <input class="fill-input" type="text" id="xxdz" placeholder="请详细到门牌号" />
                <span class="fill-span"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">建筑面积:</div>
                <input class="fill-input" type="text" id="jzmj" value="${weiTuoPingGuMianJi}" placeholder="请输入建筑面积" />
                <span class="fill-span">平方米</span>
            </li>
        </ul>
    </section>

    <section class="list-panel">
        <section class="fill-hd">
            <span class="hint-txt not-imp">选填</span>
            <h3 class="h3">详细委托信息</h3>
        </section>
        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">看房时间:</div>
                <input class="fill-input" type="text" id="kfsj" name="kfsj" placeholder="请选择"/>
            </li>
            <li class="fill-item">
                <div class="fill-title">看房时间段:</div>
                <select class="fill-select" name="kfsjd" id="kfsjd">
                    <option>请选择</option>
                  	<option value="8:00-12:00">8:00-12:00</option>
                 	<option value="13:00-17:00">13:00-17:00</option>
                </select>
            </li>
            <li class="fill-item">
                <div class="fill-title">期待金额:</div>
                <input class="fill-input" type="text" id="qdxx" placeholder="例：200" />
                <span class="fill-span">万元</span>
            </li>
            <li class="fill-item">
                <div class="fill-title">贷款成数:</div>
                <select class="fill-select" name="chengshu" id="chengshu">
                    <option>请选择</option>
                  	<option value="一成">一成</option>
                 	<option value="二成">二成</option>
                 	<option value="三成">三成</option>
                 	<option value="四成">四成</option>
                 	<option value="五成">五成</option>
                 	<option value="六成">六成</option>
                 	<option value="七成">七成</option>
                 	<option value="八成">八成</option>
                 	<option value="九成">九成</option>
                 	<option value="十成">十成</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">资料提供:</div>
                <select class="fill-select" name="zlsqfs" id="zlsqfs">
                    <option>请选择</option>
                  	<option value="邮箱发送">发送至 pingguziliao@crea.com.cn</option>
                 	<option value="现场收取">现场提供给评估人员</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">备注信息:</div>
                <input class="fill-input" type="text" id="bzxx" placeholder="此项服务需要收取服务费" />
                <span class="fill-span"></span>
            </li>
        </ul>
    </section>

    <section class="assessment-foot full-center">
        <section class="deal-panel full-left">
            我已阅读并同意 <a class="blue" href="Weituopinggu/jumpXieyi">《委托协议书》</a>
            <div class="btntap">
	            <a class="btn-deal on" href="javascript:;">
	                <i class="ico"></i>
	            </a>
            </div>
        </section>
        <a class="btn btn-blue" id="assessBtn" onclick="tijiaoWeituo()" href="javascript:;">确认委托</a>
        <p class="hint-text">请如实填写委托信息，委托服务需要收取服务费用</p>
    </section>

</section>
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="content/js/mobiscroll.custom-2.5.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function () {
    	
       loadKflxrList();  //加载看房联系人列表
	   loadYjdzList();   //加载邮寄地址
	   $("#kflxr").bind("change", function () {
	    $("#lxrdh").val($("#kflxr").val());
        var lxrxm = $("#kflxr option:selected").text();
        $("#lxrxm").val(lxrxm);
        });
        $("#kfsj").mobiscroll().date();
			
		var currYear = (new Date()).getFullYear();

      	//初始化日期控件
		var opt = {
			preset: 'date', //日期，可选：date\datetime\time\tree_list\image_text\select
			theme: 'default', //皮肤样式，可选：default\android\android-ics light\android-ics\ios\jqm\sense-ui\wp light\wp
			display: 'modal', //显示方式 ，可选：modal\inline\bubble\top\bottom
			mode: 'scroller', //日期选择模式，可选：scroller\clickpick\mixed
			lang:'zh',
			dateFormat: 'yyyy-mm-dd', // 日期格式
			setText: '确定', //确认按钮名称
			cancelText: '取消',//取消按钮名籍我
			dateOrder: 'yyyymmdd', //面板中日期排列格式
			dayText: '日', monthText: '月', yearText: '年', //面板中年月日文字
			showNow: false,  
          		nowText: "今",  
           	startYear:currYear, //开始年份  
           	endYear:currYear //结束年份  
		};
        
		$("#kfsj").mobiscroll(opt);
   });
    	function addkflxr(){
    	var openid = '${openid}';
    	window.location = "Weituopinggu/jumpAddkflxr?openid="+openid;
    	}
    	
    	function addyjdz(){
    	var openid = '${openid}';
    	window.location = "Weituopinggu/jumpAddyjdz?openid="+openid;
    	}
     //加载看房联系人列表---------------------------begin ------------------------------
		function loadKflxrList(){
			//调用ajax方法,加载看房联系人列表
			var shouji = '${shouji}';
			$.ajax({
				type : "POST", //用POST方式传输
				dataType : "json", //数据格式:JSON
				url : 'Lianxiren/findKflxrListByShouji', //目标地址
				data : {
					"shouji" : shouji
				},
				success : function(data) {
					if (data["success"] == "true") {
						var jsonList = data["data"];
				    	 for(var i=0;i<jsonList.list.length;i++){
				    	  	 if(jsonList.list[i].moRenLianXiRen==1){
				    	  	    var shouji = (jsonList.list[i].shouJi=="")?jsonList.list[i].lianXiRenTel:jsonList.list[i].shouJi;
				    	  	    $("#kflxr").text(jsonList.list[i].lianXiRenName);
				    	  	    $("#kflxr").val(jsonList.list[i].lianXiRenName);
				    	  	 	$("#lxrxm").val(jsonList.list[i].lianXiRenName);
				    	  	 	$("#lxrdh").val(shouji);
				    	     }
			    	        var shouji = (jsonList.list[i].shouJi=="")?jsonList.list[i].lianXiRenTel:jsonList.list[i].shouJi;
			    	        $("#kflxr").append("<option onclick='lxroption()' value='" + shouji + "'>" + jsonList.list[i].lianXiRenName + "</option>");
			    	        //$("#lxrxm").val(jsonList.list[i].lianXiRenName);
			    	  	 	//$("#lxrdh").val(shouji);
				    	 }
					} else {
						//alert("加载看房联系人失败！");
					}
				},
				error : function() {
					//alert("加载看房联系人失败！");
				}
			});
		}
       //加载看房联系人列表---------------------------end ------------------------------
		//4.加载邮寄地址列表--------------------------------------begin -------------------
		function loadYjdzList(){
			//调用ajax方法,加载看房联系人列表
			var shouji = '${shouji}';
			$.ajax({
				type : "POST", //用POST方式传输
				dataType : "json", //数据格式:JSON
				url : 'Youjidizhi/findYjdzListByKehuID', //目标地址
				data : {
					"shouji" : shouji
				},
				success : function(data) {
					if (data["success"] == "true") {
						var jsonList = data["data"];
				    	 for(var i=0;i<jsonList.list.length;i++){
				    	  	if(jsonList.list[i].moRenShouJianDiZhi==1){
				    	  	    $("#yjdz").val(jsonList.list[i].youJiDiZhi);
				    	  	    $("#yjdz").text(jsonList.list[i].youJiDiZhi);
				    	  	}
				    	  	$("#yjdz").append("<option value='" + jsonList.list[i].youJiDiZhi + "'>" + jsonList.list[i].youJiDiZhi + "</option>");
				    	 }
					} else {
						//alert("加载邮寄地址失败！");
					}
				},
				error : function() {
					//alert("加载邮寄地址失败！");
				}
			});
		}
	    //加载邮寄地址列表--------------------------------end -------------------
		
	//委托模块-------------------------------begin --------------------------
	//(1).提交委托按钮,检查委托必填项是否已经完善
	function tijiaoWeituo(){
		if( $("#assessBtn").hasClass("btn-disable") ){
			return;		
		}
		var gjmdStr =  $("#inputselect").val();
		var dkyh = $("#dkyhVal").val();                             //贷款银行
    	var xmmc = $("#xmmc").val().replace(/\s+/g,"");                                //小区名称
    	var city = $("#cityId").val();
    	var xxdz = $("#xxdz").val().replace(" ","");                                //详细地址
    	var jzmj = $("#jzmj").val();  								//建筑面积
		var lxrxm = $("#lxrxm").val();   					    //联系人姓名
		var lxrdh = $("#lxrdh").val();   							//联系人电话 
		var wylx = "住宅";   			//物业类型
		var yjdz = $("#yjdz").val();             //邮寄地址	
		//看房联系人
		var kflxr = $("#kflxr").val();          //列表中是否有看房联系人或者有选中的	
		var zlsqfs = $("#zlsqfs").val();                            //资料收取方式
		
		var qdxx = "";
		var jinE = $("#qdxx").val().replace(/( )/g,""); 				//期贷金额
		var chengshu = $("#chengshu").val();   //期贷成数
		//var kfsj = $("#kfsj").val();                                //看房时间
		//var kfsjd = $('#kfsjd').val();                            //看房时间段
		//var kfsjd = $("#kfsjd").find("option:selected").text();     //看房时间段
		var bzxx = $("#bzxx").val();                                //备注信息
		
		if(gjmdStr==""||gjmdStr==null||gjmdStr=="请选择"){
			 //layer.tips("请选择估价目的","#gjmd",{tips: [2, '#e84c3d']});
			 alert("请选择估价目的");
			 //scrollTo("#gjmd",-30);
			 scrollTo("#inputselect",-30);
			 return;
		}
		
		//alert(dkyh);
		if(dkyh==""||dkyh==null||dkyh=="请选择"){
			 alert("请选择贷款银行");
			 scrollTo("#dkyh",-30);
			 return;
		}
		
		if(xmmc==""||xmmc==null||xmmc=="请输入小区名称"){
			 alert("请输入小区名称");
			 scrollTo("#xmmc",-30);
			 return;
		}
		
		if(city==""||city==null||city=="请选择"){
			 alert("请选择所在区域");
			 scrollTo("#cityId",-30);
			 return;
		}
		
		if(xxdz==""||xxdz==null||xxdz=="请输入详细地址"){
			 alert("请输入详细地址");
			 scrollTo("#xxdz",-30);
			 return;
		}
		if(xxdz.length>40){
			 alert("你输入的详细地址长度过长");
			 scrollTo("#xxdz",-30);
			 return;
		}
		//验证详细地址特殊字符
		var flagXxdz = check_SpecialCharacters(xxdz,'xxdz');
		if(flagXxdz==false||flagXxdz=="false"){
			scrollTo("#xxdz",-30);
			return false;
		}
		
		
		if(jzmj==""||jzmj==null||jzmj=="请输入建筑面积"){
			 alert("请输入建筑面积");
			 scrollTo("#jzmj",-30);
			 return;
		}
		if(isNaN(jzmj)){
			 alert("建筑面积请输入数字");
			 scrollTo("#jzmj",-30);
			 return;
		}
		if(jzmj<=0){
			 alert("建筑面积请输入大于零的数字");
			 scrollTo("#jzmj",-30);
			 return;
		}
		
		if(kflxr==""||kflxr==null){
			 alert("选择已有的看房联系人");
			 scrollTo("#kflxr",-30);
			 return;
		}
		
		if(yjdz==""||yjdz==null){
			 alert("选择已有的邮寄地址");
			 scrollTo("#yjdz",-30);
			 return;
		}
		
		var flagbzxx = check_SpecialCharacters(bzxx,'bzxx');
		
		if(flagbzxx==false||flagbzxx=="false"){
			return false;
		}
		
		//正式提交委托信息
		tijaoWeituopinggu();
	}
	
	//(3).提交委托
	function tijaoWeituopinggu(){
			//1.获取所有要提交的参数
			var shouji = '${shouji}';
			var gjmd =  $("#inputselect").val();
			var dkyh = $("#dkyhVal").val();                             //贷款银行
	    	var xmmc = $("#xmmc").val().replace(/\s+/g,"");                                //小区名称
	    	var szqy = '';
	    	var province = "北京市";   //省
	    	var city = $("#cityId").val();       //市
	    	szqy = city;
	    	var xxdz = '';
	    	xxdz = szqy+$('#xxdz').val().replace(/\s+/g,"");                                //详细地址
	    	var jzmj = $('#jzmj').val();  								//建筑面积
	    	var wylx = "住宅";   			//物业类型
			var zlsqfs = $("#zlsqfs").val();                            //资料收取方式
			if(zlsqfs=='请选择'){
				zlsqfs='';
			}

			//期贷信息
			var qdxx = "";
			var jinE = $("#qdxx").val().replace(/( )/g,"");   //期贷金额
			var chengshu = $("#chengshu").val();   //期贷成数
			qdxx = jinE+chengshu;
			
			//预约看房时间
			var kfsj = "";
			var kfsj1 = $("#kfsj").val();                                //看房时间
			var kfsj2 = $("#kfsjd").val();                                //看房时间段
			kfsj = kfsj1 + kfsj2;
			//看房联系人
			var lxrxm = $("#lxrxm").val();          //看房联系人姓名
			var lxrdh = $("#lxrdh").val();          //看房联系人电话
			//邮寄地址  
			var yjdz = $("#yjdz").val();
			var bzxx = $("#bzxx").val();                                //备注信息
			if(bzxx=="此项服务需要收取服务费"){
				bzxx="";
			}
			
			var url = "Weituopinggu/doWeituopinggu?shouji="
                + shouji
                + "&gjmd="
                + gjmd
                + "&dkyh="
                + dkyh
                + "&xmmc="
                + xmmc
                + "&xxdz="
                + xxdz
                + "&jzmj="
                + jzmj
                + "&wylx="
                + wylx
                + "&lxrxm="
                + lxrxm
                + "&lxrdh="
                + lxrdh
                + "&yjdz="
                + yjdz
                + "&qdxx="
                + qdxx
                + "&bzxx="
                + bzxx
                + "&zlsqfs="
                + zlsqfs
                + "&kfsj="
                + kfsj;
        window.location = url;
		}
	
	//验证字符串中是否含有特殊字符 
	function check_SpecialCharacters(Str,Id){
		//自定义特殊字符组
		var items = new Array("~", "`", "#", "$", "%", "^", "&", "*", "{", "}", "[", "]", "(", ")");
		    items.push(":", ";", "'", "|", "\\", "<", ">", "?", "/", "<<", ">>", "||", "//");
		    items.push("admin", "administrators", "administrator", "管理员", "系统管理员");
		    items.push("select", "delete", "update", "insert", "create", "drop", "alter", "trancate");
		//接收需要验证的字符串和绑定提示信息的Id 
	    var Str = Str.toLowerCase();
	    var Id = "#"+Id;
	    //验证字符串中是否含有特殊字符 
	    for (var i = 0; i < items.length; i++) {
	        if (Str.indexOf(items[i]) >= 0) {
				alert("您输入的信息含有非法字符！");
	            return false;
	        }
	    }
	    return true; 
	}
	
</script>

</body>
</html>