<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
            <!-- Header top area end -->
            <!-- Header action area start -->
            <div class="header-bottom  d-none d-lg-block">
                <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-lg-3 col">
                            <div class="header-logo">
                                <a href="index.html"><img src="<c:url value="/assets/StyleUser/images/logo/logo (1).png"/>" alt="Site Logo"  style="height: 70px;"/></a>
                            </div>
                        </div>
                        <div class="col-lg-6 d-none d-lg-block">
                            <div class="search-element">
                                <form action="#">
                                    <input type="text" placeholder="Search" />
                                    <button><i class="pe-7s-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col">
                            <div class="header-actions">
                                <!-- Single Wedge Start -->
                                <a href="#offcanvas-wishlist" class="header-action-btn offcanvas-toggle">
                                    <i class="pe-7s-like"></i>
                                </a>
                                <!-- Single Wedge End -->
                                <a href="#offcanvas-cart" class="header-action-btn header-action-btn-cart offcanvas-toggle pr-0">
                                    <i class="pe-7s-shopbag"></i>
                                    <c:if test="${TotalQuantyCart == 0}">
                                     <span class="header-action-num">0</span>
                                    </c:if>
                                    <c:if test="${TotalQuantyCart > 0}">
                                      <span class="header-action-num">${TotalQuantyCart}</span>
                                    </c:if>
                                  
                                    <!-- <span class="cart-amount">€30.00</span> -->
                                </a>
                                <a href="#offcanvas-mobile-menu" class="header-action-btn header-action-btn-menu offcanvas-toggle d-lg-none">
                                    <i class="pe-7s-menu"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header action area end -->
            <!-- Header action area start -->
            <div class="header-bottom d-lg-none sticky-nav style-1">
                <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-lg-3 col">
                            <div class="header-logo">
                                <a href="index.html"><img src="<c:url value="/assets/StyleUser/images/logo/logo.png"/>" alt="Site Logo" /></a>
                            </div>
                        </div>
                        <div class="col-lg-6 d-none d-lg-block">
                            <div class="search-element">
                                <form action="#">
                                    <input type="text" placeholder="Search" />
                                    <button><i class="pe-7s-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col">
                            <div class="header-actions">
                                <!-- Single Wedge Start -->
                                <a href="#offcanvas-wishlist" class="header-action-btn offcanvas-toggle">
                                    <i class="pe-7s-like"></i>
                                </a>
                                <!-- Single Wedge End -->
                                <a href="#offcanvas-cart" class="header-action-btn header-action-btn-cart offcanvas-toggle pr-0">
                                    <i class="pe-7s-shopbag"></i>
                                    <span class="header-action-num">01</span>
                                    <!-- <span class="cart-amount">€30.00</span> -->
                                </a>
                                <a href="#offcanvas-mobile-menu" class="header-action-btn header-action-btn-menu offcanvas-toggle d-lg-none">
                                    <i class="pe-7s-menu"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header action area end -->
            <!-- header navigation area start -->
            <div class="header-nav-area d-none d-lg-block sticky-nav">
                <div class="container">
                    <div class="header-nav">
                        <div class="main-menu position-relative">
                            <ul>
                                <li><a href='<c:url value="/"></c:url>'>Trang chủ</a></li>
                                <li><a href="about.html">Giới thiệu</a></li>
                                <li class="dropdown position-static"><a href="#">Sản phẩm <i class="fa fa-angle-down"></i></a>
                                    <ul class="sub-menu">
                                    <c:forEach var="item" items="${loaisanpham }">
                                        <li><a href='<c:url value="/san-pham/${item.id }"/>'>${item.ten_loai }</a></li>
                                    </c:forEach>
                                    </ul>
                                    
                                    
                                </li>
                                <li class="dropdown position-static"><a href="#">Dịch vụ <i
                                    class="fa fa-angle-down"></i></a>
                                    <ul class="sub-menu">
                                        <li class="title"><a href="#">Inner Pages</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                        <li><a href="order-tracking.html">Order Tracking</a></li>
                                        <li><a href="faq.html">Faq Page</a></li>
                                        <li><a href="coming-soon.html">Coming Soon Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="about.html">Blog</a></li>
                                <li><a href="contact.html">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header navigation area end -->
            <div class="mobile-search-box d-lg-none">
                <div class="container">
                    <!-- mobile search start -->
                    <div class="search-element max-width-100">
                        <form action="#">
                            <input type="text" placeholder="Search" />
                            <button><i class="pe-7s-search"></i></button>
                        </form>
                    </div>
                    <!-- mobile search start -->
                </div>
            </div>
        </header>
                <!-- offcanvas overlay start -->
        <div class="offcanvas-overlay"></div>
        <!-- offcanvas overlay end -->
        <!-- OffCanvas Wishlist Start -->
        <div id="offcanvas-wishlist" class="offcanvas offcanvas-wishlist">
            <div class="inner">
                <div class="head">
                    <span class="title">Wishlist</span>
                    <button class="offcanvas-close">×</button>
                </div>
                <div class="body customScroll">
                    <ul class="minicart-product-list">
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/1.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Modern Smart Phone</a>
                                <span class="quantity-price">1 x <span class="amount">$21.86</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/2.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Bluetooth Headphone</a>
                                <span class="quantity-price">1 x <span class="amount">$13.28</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/3.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Smart Music Box</a>
                                <span class="quantity-price">1 x <span class="amount">$17.34</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="foot">
                    <div class="buttons">
                        <a href="wishlist.html" class="btn btn-dark btn-hover-primary mt-30px">view wishlist</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- OffCanvas Wishlist End -->
        <!-- OffCanvas Cart Start -->
        <div id="offcanvas-cart" class="offcanvas offcanvas-cart">
            <div class="inner">
                <div class="head">
                    <span class="title">Cart</span>
                    <button class="offcanvas-close">×</button>
                </div>
                <div class="body customScroll">
                    <ul class="minicart-product-list">
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/1.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Modern Smart Phone</a>
                                <span class="quantity-price">1 x <span class="amount">$18.86</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/2.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Bluetooth Headphone</a>
                                <span class="quantity-price">1 x <span class="amount">$43.28</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                        <li>
                            <a href="single-product.html" class="image"><img src="<c:url value="/assets/StyleUser/images/product-image/3.webp"/>" alt="Cart product Image"></a>
                            <div class="content">
                                <a href="single-product.html" class="title">Smart Music Box</a>
                                <span class="quantity-price">1 x <span class="amount">$37.34</span></span>
                                <a href="#" class="remove">×</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="foot">
                    <div class="buttons mt-30px">
                        <a href="<c:url value="ListCart"/>" class="btn btn-dark btn-hover-primary mb-30px">Giỏ hàng</a>
                        <a href="checkout.html" class="btn btn-outline-dark current-btn">checkout</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- OffCanvas Cart End -->
        <!-- OffCanvas Menu Start -->
        <div id="offcanvas-mobile-menu" class="offcanvas offcanvas-mobile-menu">
            <button class="offcanvas-close"></button>
            <div class="user-panel">
                <ul>
                    <li><a href="tel:0123456789"><i class="fa fa-phone"></i> +012 3456 789</a></li>
                    <li><a href="mailto:demo@example.com"><i class="fa fa-envelope-o"></i> demo@example.com</a></li>
                    <li><a href="my-account.html"><i class="fa fa-user"></i> Account</a></li>
                </ul>
            </div>
            <div class="inner customScroll">
                <div class="offcanvas-menu mb-4">
                    <ul>
                        <li><a href="#"><span class="menu-text">Home</span></a>
                            <ul class="sub-menu">
                                <li><a href="index.html"><span class="menu-text">Home 1</span></a></li>
                                <li><a href="index-2.html"><span class="menu-text">Home 2</span></a></li>
                            </ul>
                        </li>
                        <li><a href="about.html">About</a></li>
                        <li>
                            <a href="#"><span class="menu-text">Pages</span></a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="#"><span class="menu-text">Inner Pages</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="404.html">404 Page</a></li>
                                        <li><a href="order-tracking.html">Order Tracking</a></li>
                                        <li><a href="faq.html">Faq Page</a></li>
                                        <li><a href="coming-soon.html">Coming Soon Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><span class="menu-text"> Other Shop Pages</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                        <li><a href="compare.html">Compare Page</a></li>
                                        <li><a href="wishlist.html">Wishlist Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><span class="menu-text">Related Shop Page</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="my-account.html">Account Page</a></li>
                                        <li><a href="login.html">Login & Register Page</a></li>
                                        <li><a href="empty-cart.html">Empty Cart Page</a></li>
                                        <li><a href="thank-you-page.html">Thank You Page</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#"><span class="menu-text">Shop</span></a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="#"><span class="menu-text">Shop Page</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="shop-3-column.html">Shop 3 Column</a></li>
                                        <li><a href="shop-4-column.html">Shop 4 Column</a></li>
                                        <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                        <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                        <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a>
                                        </li>
                                        <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a>
                                        </li>
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><span class="menu-text">product Details Page</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="single-product.html">Product Single</a></li>
                                        <li><a href="single-product-variable.html">Product Variable</a></li>
                                        <li><a href="single-product-affiliate.html">Product Affiliate</a></li>
                                        <li><a href="single-product-group.html">Product Group</a></li>
                                        <li><a href="single-product-tabstyle-2.html">Product Tab 2</a></li>
                                        <li><a href="single-product-tabstyle-3.html">Product Tab 3</a></li>
                                        <li><a href="single-product-slider.html">Product Slider</a></li>
                                        <li><a href="single-product-gallery-left.html">Product Gallery Left</a>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><span class="menu-text">Single Product Page</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="single-product-gallery-right.html">Product Gallery
                                                Right</a> </li>
                                        <li><a href="single-product-sticky-left.html">Product Sticky Left</a>
                                        </li>
                                        <li><a href="single-product-sticky-right.html">Product Sticky Right</a>
                                        </li>
                                        <li><a href="compare.html">Compare Page</a></li>
                                        <li><a href="wishlist.html">Wishlist Page</a></li>
                                        <li><a href="my-account.html">Account Page</a></li>
                                        <li><a href="login.html">Login & Register Page</a></li>
                                        <li><a href="empty-cart.html">Empty Cart Page</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#"><span class="menu-text">Blog</span></a>
                            <ul class="sub-menu">
                                <li><a href="blog-grid.html">Blog Grid Page</a></li>
                                <li><a href="blog-grid-left-sidebar.html">Grid Left Sidebar</a></li>
                                <li><a href="blog-grid-right-sidebar.html">Grid Right Sidebar</a></li>
                                <li><a href="blog-list.html">Blog List Page</a></li>
                                <li><a href="blog-list-left-sidebar.html">List Left Sidebar</a></li>
                                <li><a href="blog-list-right-sidebar.html">List Right Sidebar</a></li>
                                <li><a href="blog-single.html">Blog Single Page</a></li>
                                <li><a href="blog-single-left-sidebar.html">Single Left Sidebar</a></li>
                                <li><a href="blog-single-right-sidebar.html">Single Right Sidbar</a>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <!-- OffCanvas Menu End -->
                <div class="offcanvas-social mt-auto">
                    <ul>
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-google"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-youtube"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>