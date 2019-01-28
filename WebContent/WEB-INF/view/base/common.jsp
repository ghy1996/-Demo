<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<meta charset="UTF-8">

<link href="<%=basePath%>/static/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=basePath%>/static/js/jquery-3.2.1.js"></script>
<script src="<%=basePath%>/static/js/bootstrap/js/bootstrap.min.js"></script>