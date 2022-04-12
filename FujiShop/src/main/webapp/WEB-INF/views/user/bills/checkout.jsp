<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<title>Thanh Toán</title>
<style>
.button {
  background-color: #001526;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
</head>
<body>
<!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 text-center">
                        <h2 class="breadcrumb-title">Checkout</h2>
                        <!-- breadcrumb-list start -->
                        <ul class="breadcrumb-list">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active">Checkout</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->
        <!-- checkout area start -->
        <div class="checkout-area pt-100px pb-100px">
            <div class="container">
            
            
                <div class="row">
               
                    <div class="col-lg-7">
                     <form:form action="checkout" modelAttribute="bills" method="POST"> 
                        <div class="billing-info-wrap">
                            <h3>Chi Tiết Thanh Toán</h3>
                            <div class="row">
                               <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Họ và Tên *</label>
                                        <form:input type="text"  path="display_name" placeholder="Mời nhập họ tên" />    
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Email *</label> 
                                        <form:input type="email"  path="user" placeholder="Mời nhập Email" />  
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Liên hệ *</label>
                                         <form:input type="text"  path="phone" placeholder="Mời nhập số điện thoại" />
                                    </div>
                                </div>
                                
                                 <div class="col-lg-12">
                                   <div class="additional-info">
                                    <label>Địa chỉ nhận hàng *</label>
                                    <form:textarea type="text"  path="address" placeholder="Mời nhập địa chỉ" />
                                	</div>
                                </div>
                                <div class="col-lg-12">
                                     <div class="additional-info">
                                    <label>Ghi chú thêm </label>
                                    <form:textarea type="text"  path="note" placeholder="Ghi chú" />
                                </div>
                                </div>
                               
                                
                            </div>
                            
                            <div class="Place-order mt-25">
                                <button class="button" type="submit" > Đặt Hàng</button>
                            </div>
                             
                        </div>
                        </form:form>
                    </div>
                   
                    <div class="col-lg-5 mt-md-30px mt-lm-30px ">
                        <div class="your-order-area">
                            <h3>Đơn hàng</h3>
                            <div class="your-order-wrap gray-bg-4">
                                <div class="your-order-product-info">
                                    <div class="your-order-top">
                                        <ul>
                                            <li>Sản phẩm</li>
                                            <li>Tổng tiền</li>
                                        </ul>
                                    </div>
                                    <div class="your-order-middle">
                                        <ul>
                                            <li><span class="order-middle-left">Product Name X 1</span> <span
                                                class="order-price">$100 </span></li>
                                            <li><span class="order-middle-left">Product Name X 1</span> <span
                                                class="order-price">$100 </span></li>
                                        </ul>
                                    </div>
                                    <div class="your-order-bottom">
                                        <ul>
                                            <li class="your-order-shipping">Shipping</li>
                                            <li>Free ship</li>
                                        </ul>
                                    </div>
                                    <div class="your-order-total">
                                        <ul>
                                            <li class="order-total">Thông thanh toán</li>
                                            <li>$100</li>
                                        </ul>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                   
                </div>
                 
            </div>
        </div>
        <!-- checkout area end -->
</body>