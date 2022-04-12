<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<head>
<meta charset="UTF-8">
<title>Đăng kí tài khoản</title>
</head>
<body>
 <!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 text-center">
                        <h2 class="breadcrumb-title">Tài Khoản</h2>
                        <!-- breadcrumb-list start -->
                        <ul class="breadcrumb-list">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active">Login</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->
           <!-- login area start -->
        <div class="login-register-area pt-100px pb-100px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                        <div class="login-register-wrapper">
                            <div class="login-register-tab-list nav">
                                <a class="active" data-bs-toggle="tab" href="#lg1">
                                    <h4>Đăng Nhập</h4>
                                </a>
                                <a data-bs-toggle="tab" href="#lg2">
                                    <h4>Đăng kí</h4>
                                </a>
                            </div>
                            <div class="tab-content">
                           
                                <div id="lg1" class="tab-pane active">
                                    <div class="login-form-container">
                                        <div class="login-register-form">
                                            <form:form action="dang-nhap" modelAttribute="user" method="POST"> 
                                               <form:input type="email"  path="user" placeholder="Email" />    
                                               <form:input type="password"  path="password" placeholder="Mật khẩu" />
                                                <div class="button-box">
                                                    <div class="login-toggle-btn">
                                                        <input type="checkbox" />
                                                        <a class="flote-none" href="javascript:void(0)">Nhớ tài khoản</a>
                                                        <a href="#">Quên mật khẩu?</a>
                                                    </div>
                                                    <button type="submit"><span>Đăng nhập</span></button>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                                <div id="lg2" class="tab-pane">
                                
                                    <div class="login-form-container">
                                        <div class="login-register-form">
                                            <form:form action="dang-ky" modelAttribute="user" method="POST"> 
                                            	<form:input type="email"  path="user" placeholder="Email" />    
                                             	<form:input type="password"  path="password" placeholder="Mật khẩu" />
                                             	<form:input type="text"  path="display_name" placeholder="Họ và Tên" />
                                             	<form:input type="text"  path="address" placeholder="Địa chỉ" />    
                                                <div class="button-box">
                                                    <button type="submit"><span>Register</span></button>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login area end -->
</body>