<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>注册页面</title>
	<style>
	body{
	font-family:Arial, Helvetica, sans-serif;
	background:url(content/images/back.jpg);
	font-size:13px;
	}
	
	#ap1{
		position: absolute;
		background: rgba(255, 255, 255, 0.3) !important;
		border-style:double;
		border-color:black;
		border-radius: 12px;
		left: 700px;
		top: 220px;
		
		width: 40%;
		height: 280px;
	}
	hr{
		size:2px;
	
	}
	td{
		font-size:20px;
	}
	</style>
	</head>
	<body>
		<h1 align="center"><font size="30" color="black">用户注册</font></h1>
<hr><hr />
		<div id="ap1">
				<table>
				<tr align="center"></tr>
				</table>
				<table>
				<tr>
					<td> 用户名 ：</td>
					<td><input type="text" id="username" placeholder="请输入注册用户名" onBlur="username_blur()" /></td>
					<td><div id="username_check"></div></td>
				</tr>
				<tr>
					<td> 密  码 ：</td>
					<td><input type="password" id="password1" placeholder="请输入6-12位密码" onBlur="password1_blur()"/></td>
					<td><div id="password1_check"></div></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" id="password2" placeholder="请确认密码" onBlur="password2_blur()"/></td>
					<td><div id="password2_check"></div></td>
				</tr>
				<tr>
					<td>手机号码：</td>
					<td><input type="text" id="phone" placeholder="输入11位合格号码" onBlur="desc_blur()"/></td>
				</tr>
				<tr><td> </td><td><input type="button" id="checknumber" value="发送验证码"></input></td></tr>
				<tr>
					<td> 验证码 ：</td>
					<td><input type="text" id="number" placeholder="输入收到的手机验证码" onBlur="desc_blur()"/></td>
				</tr>
				<tr>
					<td> 邮箱：</td>
					<td><input type="text" id="email" placeholder="请输入常用邮箱" onBlur="desc_blur()"/></td>
				</tr>
				<!-- <tr><td> 备注：</td>
				<td><textarea rows="10" cols="50" name="introduce" placeholder="多行文本输入框" onBlur="desc_blur()"></textarea></td></tr>
				 -->
				</table>
				<table align="center">
				<tr align="left"><td align="left"><input type="button" onclick="register()" value="点击注册" style="background:#999900;color:black;font-size:24px;font-weight:bold;border-radius:10px;" /></td>
					</tr>
				</table>
				
		</div>		
	</body>
<script src="content/js/jquery-1.11.0.min.js"></script>
<script src="content/js/jsp/register.js"></script>
</html>
