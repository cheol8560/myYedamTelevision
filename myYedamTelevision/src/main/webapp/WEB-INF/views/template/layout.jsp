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
		<!-- cubeportfolio -->
	<link href="${pageContext.request.contextPath}/assets/plugins/cubeportfolio/css/cubeportfolio.min.css" rel="stylesheet" type="text/css"/>
		<!-- End cubeportfolio -->
		<!-- dzsparallaxer -->
	<link href="${pageContext.request.contextPath}/assets/plugins/dzsparallaxer/dzsparallaxer.css" rel="stylesheet" type="text/css"/>
		<!-- End dzsparallaxer -->
		<!-- magnific-popup -->
	<link href="${pageContext.request.contextPath}/assets/plugins/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css"/>
		<!-- End magnific-popup -->
		<!-- scrollbar -->
	<link href="${pageContext.request.contextPath}/assets/plugins/scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css"/>
		<!-- End scrollbar -->
		<!-- owl-carousel -->
	<link href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/assets/owl.carousel.css" rel="stylesheet" type="text/css"/>
		<!-- End owl-carousel -->
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
<body>

<!-- wrapper -->
<div class="wrapper animsition">

	<tiles:insertAttribute name="menu"/>	

	<!--========== PAGE CONTENT ==========-->
    <div class="header-vertical-container">
    
		<!-- Logo -->
		<div class="bg-color-base">
            <div class="container-sm" style="margin-left: 30px; padding-top:10px; padding-bottom:10px;">
                <p class="font-size-36 font-style-italic font-family-droid color-white line-height-2 margin-b-0">
                	My Yedam Television
                </p>
            </div>
        </div>
        <!-- End Logo -->
	
		<tiles:insertAttribute name="content"/>
	
		<tiles:insertAttribute name="footer"/>

	</div>
    <!--========== END PAGE CONTENT ==========-->

</div>
<!-- End wrapper -->

<!-- Sidebar Content Overlay -->
<div class="sidebar-content-overlay"></div>
<!-- End Sidebar Content Overlay -->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top-theme"></a>
<!-- End Back To Top -->

<!--========== JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) ==========-->
<!-- CORE PLUGINS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- END CORE PLUGINS -->

<!-- PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.smooth-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.animsition.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.wow.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.html5.video.vide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery.appear.js"></script>
	<!-- circles-master -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/circles-master/circles.min.js"></script>
	<!-- End circles-master -->
	<!-- counter -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/counter/jquery.counterup.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/counter/waypoints.min.js"></script>
	<!-- End counter -->
	<!-- cubeportfolio -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<!-- End cubeportfolio -->
	<!-- dzsparallaxer -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/dzsparallaxer/dzsparallaxer.js"></script>
	<!-- End dzsparallaxer -->
	<!-- magnific-popup -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- End magnific-popup -->
	<!-- owl-carousel -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl.carousel.min.js"></script>	
	<!-- End owl-carousel -->
	<!-- scrollbar -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- End scrollbar -->
	<!-- End validation -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/validation/additional-methods.min.js"></script>
	<!-- End validation -->
<!-- END PAGE LEVEL PLUGINS -->
	
<!-- PAGE LEVEL SCRIPTS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/playrtc.js"></script>
	<!-- components -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/animated-headline.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/animsition.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/comment-form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/counters.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/form-modal.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/header-vertical-dropdown-toggle.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/login-form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/owl-carousel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/piecharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/progress-bar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/scrollbar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/components/wow.js"></script>
	<!-- components -->
	<!-- portfolio -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/scripts/portfolio/portfolio-4-col-grid.js"></script>
	<!-- End portfolio -->

<!-- END PAGE LEVEL SCRIPTS -->
<!--========== END JAVASCRIPTS ==========-->

</body>
</html>