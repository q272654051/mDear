<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="content/jsp/header.jsp" />
<!DOCTYPE HTML>
<html>
<head>
<title>404</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="content/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!-- start content -->
<div class="content_bg">
<div class="wrap">
<div class="wrapper">
	<div class="main">
		<div class="page">
			<h3>404</h3>
		</div>
	</div>
</div>
</div>
</div>
</body>
<jsp:include page="content/jsp/footer.jsp" />
</html>