<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Trang Chủ</title>
<body>

        <!-- OffCanvas Menu End -->
        <!-- Hero/Intro Slider Start -->
        <div class="section ">
            <div class="hero-slider swiper-container slider-nav-style-1 slider-dot-style-1">
                <!-- Hero slider Active -->
                
                <div class="swiper-wrapper">
                    <!-- Single slider item -->
                    <c:forEach var="item" items="${slides }">
                    <div class="hero-slide-item slider-height swiper-slide bg-color1" data-bg-image="<c:url value="/assets/StyleUser/images/hero/bg/${item.img }"/>">
                        <div class="container h-100">
                            <div class="row h-100">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 align-self-center sm-center-view">
                                    <div class="hero-slide-content slider-animated-1">
                                        <h2 class="title-1">${ item.noidung }" </h2>
                                        <a href="shop-left-sidebar.html" class="btn btn-primary text-capitalize">Xem Thêm...</a>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 align-self-center sm-center-view">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination swiper-pagination-white"></div>
                <!-- Add Arrows -->
                <div class="swiper-buttons">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>
        <!-- Hero/Intro Slider End -->
        <!-- Banner Area Start -->
        <div class="banner-area style-one pt-100px pb-100px">
            <div class="container">
                <div class="row">
                 
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h2 class="title">Sản Phẩm Mới</h2>
                        </div>
                    </div>
                <c:forEach var="item" items="${sp_New }">
                    <div class="col-md-6">
                         <div class="single-banner nth-child-2 mb-30px mb-lm-30px mt-lm-30px ">
                            <img style=" width: 400px;" src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>" alt="">
                            <div class="banner-content nth-child-2">
                                <a href="<c:url value="/chi-tiet-san-pham/${item.id_sp }"/>" class="shop-link"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Banner Area End -->
        <!-- Product Area Start -->
        <div class="product-area pb-100px">
            <div class="container">
                <!-- Section Title & Tab Start -->
                    <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h2 class="title">Sản Phẩm Nổi Bật</h2>
                        </div>
                    </div>
                </div>
                <!-- Section Title & Tab End -->
                <div class="row">
                    <div class="col">
                        <div class="tab-content mt-60px">
                            <!-- 1st tab start -->
                            <div class="tab-pane fade show active" id="newarrivals">
                            
                                <div class="row mb-n-30px">
                                 <c:if test="${sp_Noibat.size()>0 }">
                               <c:forEach var="item" items="${sp_Noibat }" >
                                    <div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-xs-6 mb-30px">
                                        <!-- Single Prodect -->
                                        <div class="product">
                                            <span class="badges">
                                                <span class="new">New</span>
                                            </span>
                                            <div class="thumb">
                                                <a href="<c:url value="/chi-tiet-san-pham/${item.id_sp }"/>" class="image">
                                                     <img src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>" alt="Product" />
                                                    <img class="hover-image" src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>" alt="Product" />
                                                </a>
                                            </div>
                                            <div class="content">
                                                <%-- <span class="category"><a href="#">${loaisanpham.ten_loai }</a></span> --%>
                                                <h5 class="title"><a href="single-product.html">${item.ten }
                                                    </a>
                                                </h5>
                                                <span class="price">
                                                    <span class="new"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${item.price }" /> &#8363</span>
                                                </span>
                                            </div>
                                            <div class="actions">
                                                <button title="Add To Cart" class="action add-to-cart" data-bs-toggle="modal" data-bs-target="#exampleModal-Cart"><a style="color:#fff;" href="<c:url value="/AddCart/${item.id_sp}"/>"> <i
                                                    class="pe-7s-shopbag"></i></a></button>
                                                <button class="action wishlist" title="Wishlist" data-bs-toggle="modal" data-bs-target="#exampleModal-Wishlist"><a style="color:#fff;" href="single-product.html"><i
                                                        class="pe-7s-like"></i></a></button>
                                                <button class="action quickview" data-link-action="quickview" title="Quick view" data-bs-toggle="modal" data-bs-target="#exampleModal"><a style="color:#fff;" href="single-product.html"><i class="pe-7s-look"></i></a></button>
                                                
                                            </div>
                                        </div>
                                    </div>
                                   </c:forEach>
                                     </c:if>  
                                </div>
                              
                            </div>
                            <!-- 1st tab end -->
                            <!-- 2nd tab start -->
                            
                            <!-- 2nd tab end -->
                            <!-- 3rd tab start -->
                            
                            <!-- 3rd tab end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Area End -->
        <!-- Fashion Area Start -->
        <div class="fashion-area" data-bg-image="<c:url value="/assets/StyleUser/images/fashion/1520143360667.jpg"/>">
            <div class="container h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 text-center">
                        <h2 class="title"> <span>Smart Fashion</span> With Smart Devices </h2>
                        <a href="shop-left-sidebar.html" class="btn btn-primary text-capitalize m-auto">Shop All Devices</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fashion Area End -->
        <!-- Feature product area start -->
         <div class="feature-area pt-100px pb-100px">
            <div class="container">
                <div class="feature-wrapper">
                    <div class="single-feture-col mb-md-30px mb-lm-30px">
                        <!-- single item -->
                        <div class="single-feature">
                            <div class="feature-icon">
                                <img src="<c:url value="/assets/StyleUser/images/icons/1.png"/>"  alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Free Shipping</h4>
                                <span class="sub-title">Capped at $39 per order</span>
                            </div>
                        </div>
                    </div>
                    <!-- single item -->
                    <div class="single-feture-col mb-md-30px mb-lm-30px">
                        <div class="single-feature">
                            <div class="feature-icon">
                                <img src="<c:url value="/assets/StyleUser/images/icons/2.png"/>" alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Card Payments</h4>
                                <span class="sub-title">12 Months Installments</span>
                            </div>
                        </div>
                    </div>
                    <!-- single item -->
                    <div class="single-feture-col">
                        <div class="single-feature">
                            <div class="feature-icon">
                                <img src="<c:url value="/assets/StyleUser/images/icons/3.png"/>" alt="">
                            </div>
                            <div class="feature-content">
                                <h4 class="title">Easy Returns</h4>
                                <span class="sub-title">Shop With Confidence</span>
                            </div>
                        </div>
                        <!-- single item -->
                    </div>
                </div>
            </div>
        </div>
        </body>