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
    <title>校验真伪</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">校验真伪</h3>
</header>

<section class="result-con">
    <div class="result-hd">
        <h3>条件输入</h3>
    </div>
    <section class="ipt-panel">
        <input class="input" type="text" id="pgbh" maxlength="12" placeholder="请输入12位报告编号"/>
        <input class="input" type="text" id="wtfName" placeholder="请输入委托方名称"/>
    </section>
    <section class="result-btn full-center">
        <a class="btn btn-blue" href="javascript:;" onclick="doQuery()">确认</a>
    </section>
    <article class="article-list">
        <p>
            <i class="ico_radio"></i>
            <span class="text"><mark class="red">报告编号栏</mark>请填写诸如<mark class="red">000121231000</mark>而不是121231000。</span>
        </p>
        <br/>
        <p>
            <i class="ico_radio"></i>
            <span class="text"><mark class="red">委托方名称</mark>请参考报告上的委托方全称及顺序填写；若有两人以上请都填上，并以空格加以分隔。</span>
        </p>
        <br/>
        <p>
            <i class="ico_radio"></i>
            <span class="text">查询过程中有任何问题,请致电400-017-2707(个人业务)</span>
        </p>
    </article>

</section>
<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">

//查询按钮
    function doQuery() {
        if ($("#pgbh").val().replace(/( )/g,"") == "" || $("#pgbh").val().replace(/( )/g,"") == "请输入12位报告编号") {
            alert("请输入正确的12位报告编号!");
            return;
        }
        if ($("#wtfName").val().replace(/( )/g,"") == "" || $("#wtfName").val().replace(/( )/g,"") == "请输入委托方名称") {
            alert("请输入委托方名称！");
            return;
        }
        var pgbh = $("#pgbh").val().replace(/( )/g,"");
        if (pgbh.length!=12) {
            alert("报告编号为12位数！");
            return;
        }
        
        if (!(/^[0-9]*$/.test(pgbh))){
            alert("报告编号为12位数字！");
            return;
        }
        var pgbh = $("#pgbh").val();
        var wtfName = $("#wtfName").val();


        var url = "Zhenweichaxun/doTestQuery_noLogin?city=北京&pgbh="+ pgbh+"&wtfName="+wtfName;
        window.location = url;
    }
</script>
</body>
</html>