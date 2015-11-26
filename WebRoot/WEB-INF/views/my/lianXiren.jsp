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
    <title>看房联系人列表</title>
    <link rel="stylesheet" href="content/css/base.css"/>
    <script type="text/javascript" src="content/js/zepto.min.js"></script>
    <script type="text/javascript" src="content/js/touch.js"></script>
    <script type="text/javascript" src="content/js/funApp.js"></script>
</head>
<body>

<header class="header full-center">
    <h3 class="title">看房联系人</h3>
</header>

<section class="person-content">
    <section class="option-hd clear pv">
        <h3 class="fl">看房联系人列表</h3>
        <a class="entrust-assess fr" onclick="addkflxr()">新增联系人</a>
    </section>
<!--     <section class="search-bd clear">
        <i class="icon_ser fl"></i>
        <input class="engine fl" type="text" placeholder="请输入姓名/电话进行搜索"/>
        <a class="btn-engine fl" href="javascript:;">搜索</a>
    </section>
 -->
    <ul class="list-panel">
        <c:if test="${KanfanglianxirenList!=null}">
            <c:forEach items="${KanfanglianxirenList}" var="z">
            <li class="item">
            <div class="name"><c:out value="${z.lianXiRenName}"/></div>
            <div class="tel">
                   <c:if test="${z.lianXiRenTel=='--'||z.lianXiRenTel=='null-null-null'}">
                       <c:out value="${z.shouJi}"/>
                   </c:if>
                   <c:if test="${z.lianXiRenTel!='--'&&z.lianXiRenTel!='null-null-null'&&z.shouJi!=''}">
                       <c:out value="${z.lianXiRenTel}/${z.shouJi}"/>
                   </c:if>
                   <c:if test="${z.lianXiRenTel!='--'&&z.shouJi==''}">
                       <c:out value="${z.lianXiRenTel}"/>
                   </c:if>
            </div>
            <div></div>
            <!-- <i class="icon_edit"></i> -->
            </li>
          <!--        <tr id="${z.lianXiRenId}">
                    <td>
                        <a href="javascript:doUpdateByID('${z.lianXiRenId}');">修改</a>/<a
                            href="javascript:doRemove('${z.lianXiRenId}','${z.lianXiRenName}');" class="dele">删除</a>/
                        <c:if test="${z.moRenLianXiRen==0}">
                            <a href="javascript:doSheweimoren('${z.lianXiRenId}');">设为默认</a>
                        </c:if>
                        <c:if test="${z.moRenLianXiRen==1}">
                            <span class="btn btn-red btn-sm">默认</span>
                        </c:if>
                    </td>
                </tr>-->
            </c:forEach>
        </c:if>
    </ul>
</section>

<!-- <section class="btns-panel full-center">
    <a class="btn btn-blue" href="javascript:;">返回</a>
</section>
 -->
<script type="text/javascript">
    function addkflxr(){
    	var openid = '${openid}';
    	window.location = "Lianxiren/jumpAddkflxr?openid="+openid;
    	}
</script>
</body>
</html>