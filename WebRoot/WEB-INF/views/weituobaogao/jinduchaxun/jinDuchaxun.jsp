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
    <title>进度查询</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">进度查询</h3>
</header>

<section class="result-con">
    <div class="result-hd">
        <h3>条件输入</h3>
    </div>
    <section class="ipt-panel">
        <input class="input" type="text" name="BaoGaoBianHao" id="BaoGaoBianHao" maxlength="12" placeholder="请输入12位报告编号"/>
    </section>
    <section class="result-btn full-center">
        <a class="btn btn-blue" onclick="doQuery()">查询</a>
    </section>
</section>

<script type="text/javascript">
    //查询按钮
    function doQuery() {
        if ($('#BaoGaoBianHao').val().replace(/( )/g,"") == "" || $('#BaoGaoBianHao').val().replace(/( )/g,"") == "请输入后5位报告编号") {
            alert("请输入12位报告编号！");
            return;
        }
        var bgbh = $('#BaoGaoBianHao').val().replace(/( )/g,"");
        if (bgbh.length!=12) {
            alert("报告编号为12位数！");
            return;
        }
        if (!(/^[0-9]*$/.test(bgbh))) {
         alert("报告编号为12位数字！");
         return;
        }
        var url = "Jinduchaxun/doQuery_noLogin?city=北京&BaoGaoBianHao="+ $('#BaoGaoBianHao').val();
        window.location = url;
    }

</script>

</body>
</html>