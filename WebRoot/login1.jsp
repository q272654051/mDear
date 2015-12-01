<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="content/css/cs.css" rel="stylesheet" type="text/css" />
<style>
body{
	background-image: url(content/images/back.jpg);
	/*background-repeat: no-repeat;*/
}
</style>
</head>
<title>Login</title>
<body>
<div class="wramp">
	<div class="tab">
	
	<table>
	<tr height="30px"><td> </td></tr>
	<tr height="50px"><td width="100px" align="center" ><img src="content/images/username.png" /></td>
		<td><input type="text" id="username" style="height:30px;width:200px"/></td>
	</tr>
	<tr height="50px">
		<td width="100px" align="center"><img src="content/images/pass.png" /></td>
		<td><input type="password" id="password" style="height:30px;width:200px"/></td>
	</tr>

	<tr height="50px"><td> </td></tr>
	<tr>
	<td align="right"><input type="button" id="login" onclick="login()" value="登录" style="background:#F0E68C;color:black;font-size:24px;font-weight:bold;border-radius:10px;" /></td>
	<td align="right"><input type="button" id="register" onclick="register()" value="注册" style="background:#F0E68C;color:black;font-size:24px;font-weight:bold;border-radius:10px;" /></td>
	</tr>
	</table>
	</div>
</div>

<script src="content/js/jquery-1.11.0.min.js"></script>
<script src="content/js/jsp/login.js"></script>
</body>
</html>