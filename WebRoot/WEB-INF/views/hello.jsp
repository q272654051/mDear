<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<c:set var="stx" value="${pageContext.request.contextPath }"></c:set>
  <head>
    
    <title>hello</title>
    
  </head>
  
  <body>
  <table>
  	<tr><td>code:<input type="text" name="code" id = "code" value="${code}"></td></tr>
  	<tr><td>state:<input type="text" name="state" id = "state" value="${state}"></td></tr>
  	<tr><td>access_token:<input type="text" name="access_token" id = "access_token" value="${access_token}"></td></tr>
  	<tr><td>openid:<input type="text" name="openid" id = "openid" value="${openid}"></td></tr>
  	<tr><td>昵称:<input type="text" name="nickName" id = "nickName" value="${nickName}"></td></tr>
  	<tr><td><c:choose>
             <c:when test="${sex==1}">
					 性别:<input type="text" name="sex" id = "sex" value="男">
             </c:when>
             <c:otherwise>
					性别:<input type="text" name="sex" id = "sex" value="女">
             </c:otherwise>
        </c:choose>
    </td></tr>
    <tr><td>国家:<input type="text" name="country" id = "country" value="${country}"></td></tr>
    <tr><td>省份:<input type="text" name="province" id = "province" value="${province}"></td></tr>
    <tr><td>城市:<input type="text" name="city" id = "city" value="${city}"></td></tr>
    <tr><td>头像:<img src="${headImgurl}"></tr>
    <tr><td>特权:<input type="text" name="privilege" id = "privilege" value="${privilege}"></td></tr>
  </table>
   url:${stx}
  </body>
</html>
