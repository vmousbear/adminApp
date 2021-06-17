<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login Page</title>
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/loginstyle.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icon-font.min.css" type='text/css' />
<link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-open/stylesheet.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-v3.3.1.min.js"></script>
</head>

<body  class="dash-bg">
	<section id="site-content">
		<jsp:include page="login.jsp" /> 
	</section>
	
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
