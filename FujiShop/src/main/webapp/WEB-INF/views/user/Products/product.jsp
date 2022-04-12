<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<style>
.img-dg img{
height: 88px;
width: 88px;
};
</style>
<title>Chi tiết sản phẩm</title>
<body>
 <!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 text-center">
                        <h2 class="breadcrumb-title">Login</h2>
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
             <!-- Product Details Area Start -->
        <div class="product-details-area pt-100px pb-100px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px">
                        <div class="product-details-img product-details-tab product-details-tab-2 d-flex">
                            <div class="swiper-container mr-15px zoom-thumbs-2 align-self-start slider-nav-style-1 small-nav">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img class="img-responsive m-auto img-dg"  src="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img class="img-responsive m-auto img-dg"  src="<c:url value="/assets/StyleUser/images/product-image/small-image/2.webp"/>" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img class="img-responsive m-auto img-dg"  src="<c:url value="/assets/StyleUser/images/product-image/small-image/3.webp"/>" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img class="img-responsive m-auto img-dg"  src="<c:url value="/assets/StyleUser/images/product-image/small-image/4.webp"/>" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img class="img-responsive m-auto img-dg"  src="<c:url value="/assets/StyleUser/images/product-image/small-image/5.webp"/>" alt="">
                                    </div>
                                </div>
                                <!-- Add Arrows -->
                                <!-- <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div> -->
                            </div>
                            <!-- Swiper -->
                            <div class="swiper-container zoom-top-2 align-self-start">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img style="height: 565px; width: 485px;" class="img-responsive m-auto" src="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>" alt="">
                                        <a class="venobox full-preview" data-gall="myGallery" href="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>">
                                            <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="swiper-slide">
                                        <img style="height: 565px; width: 485px;" class="img-responsive m-auto" src="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>" alt="">
                                        <a class="venobox full-preview" data-gall="myGallery" href="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>">
                                            <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="swiper-slide">
                                        <img style="height: 565px; width: 485px;" class="img-responsive m-auto" src="<c:url value="/assets/StyleUser/images/product-image/zoom-image/3.webp"/>" alt="">
                                        <a class="venobox full-preview" data-gall="myGallery" href="<c:url value="/assets/StyleUser/images/product-image/zoom-image/3.webp"/>">
                                            <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="swiper-slide">
                                        <img style="height: 565px; width: 485px;" class="img-responsive m-auto" src="<c:url value="/assets/StyleUser/images/product-image/zoom-image/4.webp"/>" alt="">
                                        <a class="venobox full-preview" data-gall="myGallery" href="<c:url value="/assets/StyleUser/images/product-image/zoom-image/4.webp"/>">
                                            <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div style="height: 565px; width: 485px;" class="swiper-slide">
                                        <img class="img-responsive m-auto" src="<c:url value="/assets/StyleUser/images/product-image/zoom-image/5.webp"/>" alt="">
                                        <a class="venobox full-preview" data-gall="myGallery" href="<c:url value="/assets/StyleUser/images/product-image/zoom-image/5.webp"/>">
                                            <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-lg-6 col-sm-12 col-xs-12" data-aos="fade-up" data-aos-delay="200">
                      <form method="get" action="<c:url value="/AddCart/${product.id_sp}"/>">
                        <div class="product-details-content quickview-content ml-25px">
                            <h2>${product.ten }</h2>
                            <div class="pricing-meta">
                                <ul class="d-flex">
                                    <li class="new-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price }" /> &#8363</li>
                                </ul>
                            </div>
                            <p class="mt-30px">${product.tieude }</p>
                           
                            <div class="pro-details-categories-info pro-details-same-style d-flex m-0">
                                <span>Categories: </span>
                                <ul class="d-flex">
                                    <li>
                                        <a href="#">Smart Device, </a>
                                    </li>
                                    <li>
                                        <a href="#">ETC</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-details-categories-info pro-details-same-style d-flex m-0">
                                <span>Tags: </span>
                                <ul class="d-flex">
                                    <li>
                                        <a href="#">Smart Device, </a>
                                    </li>
                                    <li>
                                        <a href="#">Phone</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-details-quality">
                                <div class="cart-plus-minus">
                                  <!--   <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1" /> -->
                                </div>
                                <div class="pro-details-cart">
                                    <button type="submit" class="add-cart">Thêm Giỏ Hàng</button>
                                </div>
                                <div class="pro-details-compare-wishlist pro-details-wishlist ">
                                    <a href="wishlist.html"><i class="pe-7s-like"></i></a>
                                </div>
                                <div class="pro-details-compare-wishlist pro-details-wishlist ">
                                    <a href="compare.html"><i class="pe-7s-refresh-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- product details description area start -->
                        <div class="description-review-wrapper">
                            <div class="description-review-topbar nav">
                                <button data-bs-toggle="tab" data-bs-target="#des-details2">Thông tin sản phẩm</button>
                                <button class="active" data-bs-toggle="tab" data-bs-target="#des-details1">Mô tả</button>
                            </div>
                            <div class="tab-content description-review-bottom">
                                <div id="des-details2" class="tab-pane">
                                    <div class="product-anotherinfo-wrapper text-start">
                                        <ul>
                                            <li><span>Nặng:</span> 400 g</li>
                                            <li><span>Kích Thước:</span>10 x 10 x 15 cm</li>
                                            <li><span>Chất Liệu</span> 60% cotton, 40% polyester</li>
                                            <li><span>Thông Tin Khác</span> American heirloom jean shorts pug seitan letterpress</li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="des-details1" class="tab-pane active">
                                    <div class="product-description-wrapper">
                                        <p>
                                            ${product.ct_sp }
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- product details description area end -->
                        
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Area Start -->
        <div class="product-area related-product">
            <div class="container">
                <!-- Section Title & Tab Start -->
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center m-0">
                            <h2 class="title">Sản Phẩm Liên Quan</h2>
                           
                        </div>
                    </div>
                </div>
                <!-- Section Title & Tab End -->
                <div class="row">
                    <div class="col">
                        <div class="new-product-slider swiper-container slider-nav-style-1">
                            <div class="swiper-wrapper">
                            <c:set var="coutlist" value="${productByIDCategory.size() }"/>
                            <c:if test="${ productByIDCategory.size() >5 }">
                            	 <c:set var="coutlist" value="5"/>
                            </c:if>
                            <c:forEach var="item" begin="1" end="${ coutlist}" items="${ productByIDCategory }">
                                <div class="swiper-slide">
                                    <!-- Single Prodect -->
                                    <div class="product">
                                        <span class="badges">
                                        <span class="new">New</span>
                                        </span>
                                        <div class="thumb">
                                            <a href="single-product.html" class="image">
                                                <img src="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>" alt="Product" />
                                                <img class="hover-image" src="<c:url value="/assets/StyleUser/images/product-image/${product.img }"/>" alt="Product" />
                                            </a>
                                        </div>
                                        <div class="content">
                                            <span class="category"><a href="#">Accessories</a></span>
                                            <h5 class="title"><a href="single-product.html">${item.ten }
                                                </a>
                                            </h5>
                                            <span class="price">
                                            <span class="new"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${item.price }" /> &#8363	</span>
                                            </span>
                                        </div>
                                        <div class="actions">
                                            <button title="Add To Cart" class="action add-to-cart" data-bs-toggle="modal" data-bs-target="#exampleModal-Cart"><i
                                                class="pe-7s-shopbag"></i></button>
                                            <button class="action wishlist" title="Wishlist" data-bs-toggle="modal" data-bs-target="#exampleModal-Wishlist"><i
                                                    class="pe-7s-like"></i></button>
                                            <button class="action quickview" data-link-action="quickview" title="Quick view" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="pe-7s-look"></i></button>
                                            
                                        </div>
                                    </div>
                                </div>
                              </c:forEach>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Area End -->
</body>