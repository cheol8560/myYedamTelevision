<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<title>Insert title here</title>
    <head>
        
        <!-- Title -->
        <title>My Yedam Television | 관리자 페이지</title>
        
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/pace-master/themes/blue/pace-theme-flash.css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/uniform/css/uniform.default.min.css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/fontawesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/line-icons/simple-line-icons.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/offcanvasmenueffects/css/menu_cornerbox.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/waves/waves.min.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/switchery/switchery.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/3d-bold-navigation/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/slidepushmenus/css/component.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/weather-icons-master/css/weather-icons.min.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/metrojs/MetroJs.min.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/datatables/css/jquery.datatables.min.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/datatables/css/jquery.datatables_themeroller.css" rel="stylesheet" type="text/css"/>	
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/x-editable/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/assetsAdmin/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css"/>
        	
        <!-- Theme Styles -->
        <link href="${pageContext.request.contextPath}/assetsAdmin/css/modern.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/css/themes/white.css" class="theme-color" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assetsAdmin/css/custom.css" rel="stylesheet" type="text/css"/>
        
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery/jquery-2.1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/3d-bold-navigation/js/modernizr.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/offcanvasmenueffects/js/snap.svg-min.js"></script>
        
       <script>
        function win() {
        	window.open("C:/Users/user/Desktop/modernadmin/themeforest-11004840-modern-responsive-admin-dashboard-template/Source/admin/ui-icons1.html", "", "");  //속성 지정하지 않은 기본창
        	}       
        $(document).ready(function() {
          
            $('#memberTable').DataTable();
            $('#exchangeTable').DataTable();
            $('#noticeTable').DataTable();
            $('#questionTable').DataTable();
            $('#chargeTable').DataTable();
            $('#translateTable').DataTable();
             
        } );
        </script>
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
    </head>


    <body class="page-header-fixed">
        <div class="overlay"></div>
		<main class="page-content content-wrap">
			<tiles:insertAttribute name="header"/>
			<div class="page-inner">
				<tiles:insertAttribute name="content"/>
				<div class="page-footer">
				<tiles:insertAttribute name="footer"/>
				</div>
			</div>
		
		</main>
		 <!-- Javascripts -->
		<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/pace-master/pace.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/switchery/switchery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/uniform/jquery.uniform.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/offcanvasmenueffects/js/classie.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/offcanvasmenueffects/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/waves/waves.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/3d-bold-navigation/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery-counterup/jquery.counterup.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/toastr/toastr.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/flot/jquery.flot.min.js"></script> 
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/flot/jquery.flot.time.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/flot/jquery.flot.symbol.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/flot/jquery.flot.resize.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/curvedlines/curvedLines.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/metrojs/MetroJs.min.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/js/modern.js"></script> 
        <script src="${pageContext.request.contextPath}/assetsAdmin/js/pages/dashboard.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/js/pages/table-data.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/jquery-mockjax-master/jquery.mockjax.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/moment/moment.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/x-editable/bootstrap3-editable/js/bootstrap-editable.js"></script>
        <script src="${pageContext.request.contextPath}/assetsAdmin/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
</body>
</html>