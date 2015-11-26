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
    <title>卖房估值</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <link href="content/plugin/jquery.autocomplete/jquery.autocomplete.css" rel="stylesheet"/>
</head>
<body>
<input class="fill-input" type="hidden" id="openid"value="${openid}" />
<section class="assessment-con">
    <section class="list-panel">
        <section class="fill-hd">
            <span class="hint-txt imp">必填</span>
            <h3 class="h3">基本估价条件</h3>
        </section>

        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">小区名称:</div>
                <input class="fill-input" type="text" id="name" value="" onblur="onmouseout_xqmc()" placeholder="如：五栋大楼" />
                <input type="hidden" value="" class="inpt" id="hiddenResidentialAreaName" placeholder=""/>
                <input type="hidden" id="xiaoquID" value="" placeholder=""/>
            </li>
            <li class="fill-item">
                <div class="fill-title">建筑面积:</div>
                <input class="fill-input" type="text" id="area" value="" placeholder="如：140" />
                <span class="fill-span">平方米</span>
            </li>
            <li class="fill-item">
                <div class="fill-title">居室类型:</div>
                <select class="fill-select" name="jslx" id="jslx">
                    <option value="0">请选择</option>
                    <option value="一居">一居</option>
                    <option value="二居">二居</option>
                    <option value="三居">三居</option>
                    <option value="四居">四居</option>
                    <option value="五居">五居</option>
                    <option value="其他">其他</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item">
                <div class="fill-title">预售价格:</div>
                <input class="fill-input" type="text" id="yxzj" value="" placeholder="如：500" />
                <span class="fill-span">万元</span>
            </li>
        </ul>
    </section>

    <section class="list-panel">
        <section class="fill-hd">
            <span class="hint-txt not-imp">选填</span>
            <h3 class="h3">详细估价条件</h3>
        </section>

        <ul class="fill-bd">
            <li class="fill-item">
                <div class="fill-title">楼<span class="t3">栋</span>号:</div>
                <input class="fill-input" type="text" id="ldh" placeholder="如：B1、3号楼" />
            </li>
            <li class="fill-item">
                <div class="fill-title">门<span class="t3">牌</span>号:</div>
                <input class="fill-input" type="text" id="hh" placeholder="如：1单元1002" />
            </li>
            <li class="fill-item">
                <div class="fill-title">所在楼层:</div>
                <input class="fill-input" type="text" id="szlc" onblur="validszlc()" placeholder="如：12" />
                <span class="fill-span">层</span>
            </li>
            <li class="fill-item">
                <div class="fill-title">总<span class="t3">楼</span>层:</div>
                <input class="fill-input" type="text" id="zlc" onblur="validZLC()" placeholder="如：17" />
                <span class="fill-span">层</span>
            </li>
            <li class="fill-item">
                <div class="fill-title">建成年代:</div>
                <input class="fill-input" type="text" id="jcnd" placeholder="如：2004" />
                <span class="fill-span">年</span>
            </li>
            <li class="fill-item">
                <div class="fill-title">朝<span class="t2">向</span>:</div>
                <select class="fill-select" name="" id="cx">
                    <option value="">请选择</option>
                    <option value="东">东</option>
                    <option value="西">西</option>
                    <option value="南">南</option>
                    <option value="北">北</option>
                    <option value="东南">东南</option>
                    <option value="东北">东北</option>
                    <option value="东西">东西</option>
                    <option value="南北">南北</option>
                    <option value="西南">西南</option>
                    <option value="西北">西北</option>
                </select>
                <span class="fill-ico"></span>
            </li>
            <li class="fill-item" style="display:none;" id="tsys_dl" >
                <div class="fill-title">特殊因素:</div>
                            <select class="fill-select" id="tsys" >
                                <option value="">请选择</option>
                            </select>
                            <span class="fill-ico"></span>
            </li>
        </ul>

    </section>

    <section class="assessment-foot full-center">
        <a class="btn btn-blue" onclick="doPinggu()">我要评估</a>
        <p class="hint-text">请如实填写估价信息，信息越详实估价结果就越准确</p>
    </section>

</section>

<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="<%=basePath%>content/plugin/jquery.autocomplete/jquery.autocomplete.js"></script>
<script type="text/javascript">
$(function () {
        onmouseout_xqmc();
        //下拉框自动补全
        $("#name").focus(function () {
        $(this).autocomplete("GuzhiSaler/loadLikeSreachxiaoqu_noLogin", {
            width: 200,
            scroll: true,
            matchCase: false,
            scrollHeight: 300,
            delay: 400,//设置延迟加载,因为是远程端调用数据
            dataType: "json",
            extraParams: {
                v: function () {
                    return encodeURIComponent($('#name').val());
                },
                city:function () {
                    return $('#cityname').text();
                }
            },
            parse: function (data) {
                if (data == null && data == "") {
                    return;
                }
                if (eval(data) == null) {
                    return;
                }
                return $.map(eval(data), function (row) {
                    if (row == null) {
                        return;
                    }
                    return {
                        data: row,
                        value: row.SearchFlag == "小区地址" ? row.MatchName : row.ResidentialAreaName, //此处无需把全部列列出来，只是两个关键列
                        result: row.SearchFlag == "小区地址" ? row.MatchName : row.ResidentialAreaName
                    }
                })
            },
            formatItem: function (row, i, max) {
                if (row.SearchFlag == "小区地址") {
                    return row.MatchName;
                }
                return "<span style='float:right;color: #919191;font-family:Microsoft YaHei ! important;'>&nbsp;&nbsp;"
                        + row.DistrictFullName + "</span>" + row.ResidentialAreaName;
            },
            formatResult: function (row, i, max) {
                if (row.SearchFlag == "小区地址") {
                    return row.MatchName;
                }
                return row.MatchName;
            },
            formatMatch: function (row, i, max) {
                if (row.SearchFlag == "小区地址") {
                    return row.MatchName;
                }
                return row.MatchName;
            }
        }).result(function (event, data, formatted) {
            //选择下拉框
            $("#xiaoquID").val(data.ResidentialAreaID);   //在自动补全中获取小区ID
            $("#hiddenResidentialAreaName").val(data.ResidentialAreaName);
        });
     });
     });
    //小区名称填写完毕之后，自动补全特殊因素
    function onmouseout_xqmc() {
        //=======================小区名称直接输入完整时，调用接口获取小区ID=======================
        var xqid = $("#xiaoquID").val();//小区ID
        if(xqid==null||xqid ==""){
            if($("#name").val()!=null&&$("#name").val()!=""&&$("#name").val()!="如：五栋大楼"){
                $.ajax({
                    type: "GET",
                    url: "GuzhiSaler/loadLikeSreachxiaoqu_noLogin",
                    data: {
                        "v": $("#name").val(),
                        "city":"beijing"
                    },
                    dataType: "json",
                    async : false,
                    success: function (msg) {
                        var data = eval(msg);
                        if(data.length>1){
                            for(var i=0;i<data.length;i++){
                                if (data[i].ResidentialAreaID != null && data[i].ResidentialAreaID != "") {
                                    if ($("#name").val() == data[i].MatchName) {
                                        $("#xiaoquID").val(data[i].ResidentialAreaID);
                                        $("#hiddenResidentialAreaName").val(data[i].ResidentialAreaName);
                                        break;
                                    }
                                }
                            }
                        }else{
                            if (data[0].ResidentialAreaID != null && data[0].ResidentialAreaID != "") {
                                if ($("#name").val() == data[0].MatchName) {
                                    $("#xiaoquID").val(data[0].ResidentialAreaID);
                                    $("#hiddenResidentialAreaName").val(data[0].ResidentialAreaName);
                                }
                            }
                        }
                    }
                });
            }
        }
        //==========================================================================================
        $("#tsys").empty();//每次改变小区名称之前，都把特殊因素先清空
        $("#tsys_dl").hide();
        var xqmc = $("#hiddenResidentialAreaName").val();//小区名称;//小区名称
        var xiaoquID = $("#xiaoquID").val();//小区ID
        var louzhuanghao = $("#ldh").val().replace(/( )/g,"")=="如：B1座、3号楼"?"":$("#ldh").val().replace(/( )/g,"");   //楼栋号
        var jzmj = $("#area").val().replace(/( )/g,"")=="如：140"?"":$("#area").val().replace(/( )/g,"");   //建筑面积
        if (xqmc == null || xqmc == "") {
            return;
        } else {
            $.ajax({
                type: "GET",
                url: "GuzhiSaler/findTeshuyinsu_noLogin",
                data: {
                    "city": "beijing",
                    "cname": xqmc
                },
                dataType: "json",
                success: function (msg) {
                    var data = eval(msg);
                    if(data.Data!=null&&data.Data!=""){
                        $("#tsys").append("<option>请选择</option>");
                        for (var v in data.Data) {
                            $("#tsys").append("<option value='" + data.Data[v] + "'>" + data.Data[v] + "</option>");
                        }
                        $("#tsys_dl").show();
                    }
                }, error: function () {
                }
            });
            if (jzmj != null && jzmj != "") {
            }
            //建成年代
/*            jcndArray = [];
            zlcArray = [];
            if (xiaoquID != null && xiaoquID != "") {
                $.ajax({
                    type: "GET",
                    url: "jumpBuyer/findJcndZlc_noLogin",
                    data: {
                        "city": "beijing",
                        "xqid": xiaoquID,
                        "louzhuanghao": louzhuanghao
                    },
                    dataType: "json",
                    success: function (msg) {
                        for (var i = 0; i < msg.jcnds.length; i++) {
                            jcndArray.push(msg.jcnds[i]);
                        }
                        for (var i = 0; i < msg.zlcs.length; i++) {
                            zlcArray.push(msg.zlcs[i]);
                        }
                    }, error: function () {
                    }
                });
            }
*/
        }
    }
    
    //自动获取建成年代
    /*function onmouseon_jcnd() {
        $("#jcnd").autocomplete(jcndArray, {
            scroll: true,
            matchCase: false,
            cacheLength: 1,
            selectFirst: true,//默认选中第一条
            delay: 400,//设置延迟加载,因为是远程端调用数据
//            max: 10,    //列表里的条目数
            minChars: 0,    //自动完成激活之前填入的最小字符
            width: 229,     //提示的宽度，溢出隐藏
            scrollHeight: 200,   //提示的高度，溢出显示滚动条
            matchContains: true,    //包含匹配，就是data参数里的数据，是否只要包含文本框里的数据就显示
            autoFill: false,    //自动填充
            formatItem: function (row, i, max) {
                return row.jcnd;
            },
            formatMatch: function (row, i, max) {
                return row.jcnd;
            },
            formatResult: function (row) {
                return row.jcnd;
            }
        }).result(function (event, row, formatted) {
        });
    }*/

    //自动获取总楼层
    /*function onmouseon_zlc() {
        $("#zlc").autocomplete(zlcArray, {
            scroll: true,
            matchCase: false,
            selectFirst: true,//默认选中第一条
            delay: 400,//设置延迟加载,因为是远程端调用数据
//            max: 10,    //列表里的条目数
            minChars: 0,    //自动完成激活之前填入的最小字符
            width: 229,     //提示的宽度，溢出隐藏
            scrollHeight: 200,   //提示的高度，溢出显示滚动条
            matchContains: true,    //包含匹配，就是data参数里的数据，是否只要包含文本框里的数据就显示
            autoFill: false,    //自动填充
            formatItem: function (row, i, max) {
                return row.zlc;
            },
            formatMatch: function (row, i, max) {
                return row.zlc;
            },
            formatResult: function (row) {
                return row.zlc;
            }
        }).result(function (event, row, formatted) {
        });
    }*/
//-------------------------------文本验证start-----------------------------
    function validszlc() {
        if($("#szlc").val()!=""&&$("#szlc").val()!="如：12"){
            var szlc=	 parseInt($("#szlc").val());
            if(szlc>=-1&&szlc<100&&szlc!=0){
                if(szlc>parseInt($("#zlc").val())){
                    alert("不能大于总楼层!亲");
                    $("#szlc").val("");
                }
                return true;
            }else{
                alert("所在楼层应该为-1或1~99!亲");
                $("#szlc").val("");
                return false;
            }
        }
    }
    function validZLC() {
        if($("#zlc").val()!=""&&$("#zlc").val()!="如：17"){
            var zlc=	 parseInt($("#zlc").val());
            if(zlc>=1&&zlc<100){
                if(zlc<parseInt($("#szlc").val())){
                    alert("不能小于所在楼层!亲");
                    $("#zlc").val("");
                }
                return true;
            }else{
                alert("总楼层应该为1~99!亲");
                $("#zlc").val("");
                return false;
            }
        }
    }
    function validarea() {
        if($("#area").val()!=""&&$("#area").val()!="如：140"){
            var area=	 parseFloat($("#area").val());
            if(area>=1&&area<=9999){
                return true;
            }else{
                alert("建筑面积在1~9999,两位小数!亲");
                $("#area").val("");
                return false;
            }
        }
    }
    function validyxzj() {
        if($("#yxzj").val()!=""&&$("#yxzj").val()!="如：500"){
            var yxzj = parseFloat($("#yxzj").val());
            if (yxzj >= 1 && yxzj < 10000) {
                return true;
            } else {
                alert("预购总价在1到10000之间!亲");
                $("#yxzj").val("");
                return false;
            }
        }
    }
    function validjcnd() {
        if($("#jcnd").val()!=""&&$("#jcnd").val()!="如：2004"){
            var jcnd=parseInt($("#jcnd").val());
            var myDate = new Date();
            if(jcnd>=1900&&jcnd<parseInt(myDate.getFullYear()+1)){
                if(jcnd>parseInt($("#jcnd").val())){
                    alert("建成年代在1900-"+myDate.getFullYear()+"!亲");
                    $("#jcnd").val("");
                }
                return true;
            }else{
                alert("建成年代在1900-"+myDate.getFullYear()+"!亲");
                $("#jcnd").val("");
                return false;
            }
        }
    }
    //-------------------------------文本验证end-----------------------------
function doPinggu() {
        var xiaoquID = $("#xiaoquID").val().replace(/( )/g,"");
        var iptxqmc = $("#name").val().replace(/( )/g,"");
        var xqmc = $("#hiddenResidentialAreaName").val().replace(/( )/g,"");   //小区名称
        var ldh = $("#ldh").val().replace(/( )/g,"")=="如：B1座、3号楼"?"":$("#ldh").val().replace(/( )/g,"");   //楼栋号
        var hh = $("#hh").val().replace(/( )/g,"")=="如：一单元1202"?"":$("#hh").val().replace(/( )/g,"");   //户号
        var szlc = $("#szlc").val().replace(/( )/g,"")=="如：12"?"":$("#szlc").val().replace(/( )/g,"");   //所在楼层
        var zlc = $("#zlc").val().replace(/( )/g,"")=="如：17"?"":$("#zlc").val().replace(/( )/g,"");   //总楼层
        var area = $("#area").val().replace(/( )/g,"")=="如：140"?"":$("#area").val().replace(/( )/g,"");   //建筑面积
        var jslx = $("#jslx").val().replace(/( )/g,"")=="0"?"":$("#jslx").val().replace(/( )/g,"");  //居室类型
        var jcnd = $("#jcnd").val().replace(/( )/g,"")=="如：2004"?"":$("#jcnd").val().replace(/( )/g,"");   //建成年代
        var chaoxiang = $("#cx").val().replace(/( )/g,"");   //朝向
        var tsys = $("#tsys").val()==null?"":$("#tsys").val().replace(/( )/g,"");   //特殊因素
        var yxzj = $("#yxzj").val().replace(/( )/g,"")=="如：500"?"":$("#yxzj").val().replace(/( )/g,"");   //预购总价
        
        if ($("#name").val().replace(/( )/g,"") == ""||$("#name").val().replace(/( )/g,"") == "如：五栋大楼") {
            alert("告诉我你的小区哟^_^");//提交验证
            return;
        }
        
        if (xiaoquID == null || xiaoquID == "") {
            alert("请从下拉列表中选择正确小区");
            return;
        }
        
        var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
        if(pattern.test(ldh)){
            alert("楼栋号不能包含非法字符");
            return;
        }
        if(pattern.test(hh)){
            alert("户号不能包含非法字符");
            return;
        }
        if ($("#area").val().replace(/( )/g,"") == ""||$("#area").val().replace(/( )/g,"") == "如：140") {
            alert("告诉我房子多大呀^_^");
            return;
        }
        if (!validarea()) {
            return;
        }
        if($("#jcnd").val().replace(/( )/g,"")!=""&&$("#jcnd").val().replace(/( )/g,"")!="如：2004"){
            if (!validjcnd()) {
                return;
            }
        }
        if (jslx == "") {
            alert("请选择居室类型");
            return;
        }
        if (yxzj == "") {
            alert("预售总价不能为空");
            return;
        }
        if ($("#yxzj").val().replace(/( )/g,"") != ""&&$("#yxzj").val().replace(/( )/g,"") != "如：500") {
            if (!validyxzj()) {
                return;
            }
        }
        var url = "GuzhiSaler/salerXunjiaDetail_noLogin?xqmc="
                + xqmc
                + "&ldh="
                + ldh
                + "&hh="
                + hh
                + "&szlc="
                + szlc
                + "&zlc="
                + zlc
                + "&area="
                + area
                + "&jslx="
                + jslx
                + "&jcnd="
                + jcnd
                + "&chaoxiang="
                + chaoxiang
                + "&yxzj="
                + yxzj
                + "&tsys="
                + tsys
                + "&iptxqmc="
                + iptxqmc
                + "&xiaoquID="
                + xiaoquID
                + "&openid="
                + '${openid}';
        window.location = url;
        
        setTimeout(function () {
            $("#xiaoquID").val("");//跳转之后，把小区ID设为空，以防返回该页面后 小区名称不完成，也可以询价
            $("#name").val("");
            $("#ResidentialAreaName").val("");
            $("#ldh").val("");
            $("#hh").val("");
            $("#szlc").val("");
            $("#zlc").val("");
            $("#area").val("");
            $("#jcnd").val("");
            $("#yxzj").val("");
            $("#tsys").get(0).selectedIndex = 0;
            //$("#cx").get(0).selectedIndex = 0;
        }, 1000);
}
</script>
</body>
</html>