<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- HEAD -->
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>My Yedam Television</title>
	
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<!-- GLOBAL MANDATORY STYLES -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:100,400,700,500,300,300italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/plugins/et-line/et-line.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	
	<!-- BEGIN THEME PLUGINS STYLE -->
	<link href="${pageContext.request.contextPath}/assets/plugins/scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/plugins/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/plugins/dzsparallaxer/dzsparallaxer.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/plugins/cubeportfolio/css/cubeportfolio.min.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME PLUGINS STYLE -->
	
	<!-- THEME STYLES -->
	<link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/css/global.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/assets/css/custom.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
	
	<!-- THEME -->
	<link href="${pageContext.request.contextPath}/assets/css/theme/base.css" rel="stylesheet" type="text/css" id="style-color"/>
	<!-- END THEME -->
	
	<!-- BEGIN JQUERY -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.min.js"></script>
	<!-- END JQUERY -->
	
	<!-- FAVICON -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/favicon.ico"/>
	<!-- END FAVICON -->
	
</head>
<!-- END HEAD -->
<tiles:insertAttribute name="body"/>
</html>