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
    <title>绑定手机</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">绑定手机</h3>
</header>

<section class="bind-phone-bd">
    <form action="" name="" id="bindPhone">
    <input type="hidden" value="${openid}" id="openid"/>
    <input type="hidden" value="${rukou}" id="rukou"/>
    <ul class="list-panel">
        <li class="item phone-item">
            <i class="icon-tel"></i>
            <input class="item-input" name="phone" id="phone" value="" type="text" maxlength="11" placeholder="请输入手机号">
            <a class="clear-btn" href="javascript:;"></a>
            <a class="get-yzm pa" id="getyzm" href="javascript:;">获取验证码</a>
        </li>
        <li class="item yzm-item">
            <i class="icon-yzm"></i>
            <input class="item-input" name="yzm" id="yzm" type="text" value="" placeholder="请输入验证码">
            <a class="clear-btn"></a>
        </li>
    </ul>
    </form>
</section>

<section class="bind-phone-foot btns-panel full-center">
    <a class="btn btn-blue" id="bind" href="javascript:;" >绑定手机号</a>
    <p class="hint-text">仅限房估估会员进行手机绑定</p>
</section>

<script src="content/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        // 清空文本框
        new clearInput().init("bindPhone");
        // 获取验证码
        $("#getyzm").on("tap",function(){
            var phone = $("#phone").val();   //手机号(文本框值)
            if ($("#phone").val().replace(/( )/g,"") == ""
             || $("#phone").val() == "请输入手机号码") {
             alert("请输入手机号码！");//提交验证
             scrollTo("#phone",-30);
             return;
            }
            if (!(/^1[3|4|5|7|8]\d{9}$/.test($("#phone").val().replace(/( )/g,"")))) {
             alert("请输入正确的手机号！");//提交验证
             return;
            }
            if( !$(this).hasClass("disable") ){
                new _timer()._init(this,60);
            //向后台发送处理数据
            $.ajax({
                type: "POST", //用POST方式传输
                dataType: "json", //返回数据形式为json
                url: "Bangdingshouji/getyzm_noLogin", //目标地址
                data: "phone=" + phone,
                success: function (data) {
                    alert(data["others"]);
                },
                error: function () {
                    alert("发送失败");
                }
            });
            }
        });
    
    $("#bind").click(function(){
        var phone = $("#phone").val();   
        var openid = '${openid}';
        var rukou = '${rukou}';
        var yzm = $("#yzm").val();    //验证码(文本框值)
         if ($("#phone").val().replace(/( )/g,"") == ""
             || $("#phone").val() == "请输入手机号码") {
             alert("请输入手机号码！");//提交验证
             scrollTo("#phone",-30);
             return;
         }
         if (!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test($("#phone").val().replace(/( )/g,"")))) {
             alert("请输入正确的手机号！");//提交验证
             return;
         }
         $.ajax({
            type: "POST", //用POST方式传输
            dataType: "json", //数据格式:JSON
            url: "Bangdingshouji/bindPhone_noLogin", //目标地址
            data: {
                "yzm": yzm,
                "openid": openid,
                "phone": phone
            },
            success: function (data) {      //加载成功
                if (data["success"] == "true") {
                    setTimeout(reAutoLoad,1000);
                        function reAutoLoad(){
                           window.location.href = "Bangdingshouji/jumpSuccess?rukou="+rukou+"&openid="+openid;  //跳转成功页面
                        }
                } else {
                    alert("绑定失败！请重试");
                }
            },
            error: function () {
                alert("绑定失败！请重试");
            }
        });
    
    });
    });
</script>

</body>
</html>