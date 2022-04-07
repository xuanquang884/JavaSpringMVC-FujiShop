<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<!DOCTYPE html>
<html lang="zxx" dir="ltr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<title><decorator:title default="FuJIShop"/></title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Hmart-Smart Product eCommerce html Template">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/assets/StyleUser/images/favicon(1).ico"/>" />
    <!-- CSS
    ============================================ -->
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/font.awesome.css" />">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/pe-icon-7-stroke.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/swiper-bundle.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/venobox.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/StyleUser/css/jquery-ui.min.css"/>">
    <!-- Style CSS -->
    <link rel="stylesheet"href="<c:url value="/assets/StyleUser/css/style.css"/>">
    <!-- Minify Version -->
    <!-- <link rel="stylesheet" href="assets/css/plugins.min.css">
    <link rel="stylesheet" href="assets/css/style.min.css"> -->
    <decorator:head/>
</head>
<body>
    <div class="main-wrapper">
            <header>
            <!-- Header top area start -->
            <div class="header-top">
                <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col">
                            <div class="welcome-text">
                                <p>World Wide Completely Free Returns and Shipping</p>
                            </div>
                        </div>
                        <div class="col d-none d-lg-block">
                            <div class="top-nav">
                                <ul>
                                    <li><a href="tel:0123456789"><i class="fa fa-phone"></i> +012 3456 789</a></li>
                                    <li><a href="mailto:demo@example.com"><i class="fa fa-envelope-o"></i> demo@example.com</a></li>
                                    <li><a href="my-account.html"><i class="fa fa-user"></i> Đăng Nhập</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
    
		<decorator:body></decorator:body>
		
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	
	<script src="<c:url value="/assets/StyleUser/js/vendor/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/vendor/jquery-3.6.0.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/vendor/jquery-migrate-3.3.2.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/vendor/modernizr-3.11.2.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/jquery.countdown.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/swiper-bundle.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/scrollUp.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/venobox.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/assets/StyleUser/js/plugins/mailchimp-ajax.js"/>"></script>
    
    <script src="<c:url value="/assets/StyleUser/js/main.js"/>"></script>
	</div>
</body>
</html>