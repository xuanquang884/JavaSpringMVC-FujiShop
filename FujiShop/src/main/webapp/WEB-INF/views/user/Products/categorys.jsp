<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Sản phẩm</title>
<body>
 <!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-12 text-center">
                        <h2 class="breadcrumb-title">Sản Phẩm</h2>
                        <!-- breadcrumb-list start -->
                        <ul class="breadcrumb-list">
                            <li class="breadcrumb-item"><a href='<c:url value="/"></c:url>'>Trang chủ</a></li>
                            <li class="breadcrumb-item active">Sản Phẩm</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->
	<!-- 	!-- Shop Page Start  -->
	<div class="shop-category-area pt-100px pb-100px">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 order-lg-last col-md-12 order-md-first">
					<!-- Shop Top Area Start -->
					<div class="shop-top-bar d-flex">
						<p class="compare-product">
							<span>12</span> Product Found of <span>30</span>
						</p>
						<!-- Left Side End -->
						<div class="shop-tab nav">
							<button class="active" data-bs-target="#shop-grid"
								data-bs-toggle="tab">
								<i class="fa fa-th" aria-hidden="true"></i>
							</button>
							<button data-bs-target="#shop-list" data-bs-toggle="tab">
								<i class="fa fa-list" aria-hidden="true"></i>
							</button>
						</div>
						<!-- Right Side Start -->
						<div class="select-shoing-wrap d-flex align-items-center">
							<div class="shot-product">
								<p>Sort By:</p>
							</div>
							<!-- Single Wedge End -->
							<div class="header-bottom-set dropdown">
								<button class="dropdown-toggle header-action-btn"
									data-bs-toggle="dropdown">
									Default <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a class="dropdown-item" href="#">Name, A to Z</a></li>
									<li><a class="dropdown-item" href="#">Name, Z to A</a></li>
									<li><a class="dropdown-item" href="#">Price, low to
											high</a></li>
									<li><a class="dropdown-item" href="#">Price, high to
											low</a></li>
									<li><a class="dropdown-item" href="#">Sort By new</a></li>
									<li><a class="dropdown-item" href="#">Sort By old</a></li>
								</ul>
							</div>
							<!-- Single Wedge Start -->
						</div>
						<!-- Right Side End -->
					</div>
					<!-- Shop Top Area End -->
					<!-- Shop Bottom Area Start -->
					<div class="shop-bottom-area">
						<!-- Tab Content Area Start -->
						<div class="row">
							<div class="col">
								<div class="tab-content">
									<div class="tab-pane fade show active" id="shop-grid">
										<c:if test="${productsPaginates.size()>0 }">
											<div class="row mb-n-30px">
												<c:forEach var="item" items="${ productsPaginates}">
													<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px">
														<!-- Single Prodect -->
														<div class="product">
															<!-- <span class="badges"> <span class="new">New</span>
														</span> -->
															<div class="thumb">
																<a href="single-product.html" class="image"> <img
																	style="height: 270px;"
																	src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>"
																	alt="Product" /> <img style="height: 270px;"
																	class="hover-image"
																	src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>"
																	alt="Product" />
																</a>
															</div>
															<div class="content">
																<!-- <span class="category"><a href="#">Accessories</a></span> -->
																<h5 class="title">
																	<a href="single-product.html">${item.ten }<p>${item.id_sp }</p> </a>
																</h5>
																<span class="price"> <span class="new"><fmt:formatNumber
																			type="number" maxFractionDigits="3"
																			value="${item.price }" /> &#8363</span>
																</span>
															</div>
															<div class="actions">
																<button title="Add To Cart" class="action add-to-cart"
																	data-bs-toggle="modal"
																	data-bs-target="#exampleModal-Cart">
																	<i class="pe-7s-shopbag"></i>
																</button>
																<button class="action wishlist" title="Wishlist"
																	data-bs-toggle="modal"
																	data-bs-target="#exampleModal-Wishlist">
																	<i class="pe-7s-like"></i>
																</button>
																<button class="action quickview"
																	data-link-action="quickview" title="Quick view"
																	data-bs-toggle="modal" data-bs-target="#exampleModal">
																	<i class="pe-7s-look"></i>
																</button>
																<button class="action compare" title="Compare"
																	data-bs-toggle="modal"
																	data-bs-target="#exampleModal-Compare">
																	<i class="pe-7s-refresh-2"></i>
																</button>
															</div>
														</div>
													</div>
												</c:forEach>
												<!-- Single Prodect -->

											</div>
										</c:if>
									</div>
									<div class="tab-pane fade mb-n-30px" id="shop-list">
									<c:if test="${productsPaginates.size()>0 }">
												<c:forEach var="item" items="${ productsPaginates}">
										<div class="shop-list-wrapper mb-30px">
											
													<div class="row">
														<div class="col-md-5 col-lg-5 col-xl-4 mb-lm-30px">
															<div class="product">
																<div class="thumb">
																	<a href="single-product.html" class="image"> <img
																		style="height: 270px;"
																		src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>"
																		alt="Product" /> <img style="height: 270px;"
																		class="hover-image"
																		src="<c:url value="/assets/StyleUser/images/product-image/${item.img }"/>"
																		alt="Product" /></a>
																	<!-- </a> <span class="badges"> <span class="new">New</span> -->
																	<!-- </span> -->
																</div>
															</div>
														</div>
														<div class="col-md-7 col-lg-7 col-xl-8">
															<div class="content-desc-wrap">
																<div class="content">
																	<!-- <span class="category"><a href="#">Accessories</a></span> -->
																	<h5 class="title">
																		<a href="single-product.html">${item.ten }</a>
																	</h5>
																	<p>${item.tieude }</p> 
																</div>
																<div class="box-inner">
																	<span class="price"> <span class="new"><fmt:formatNumber
																				type="number" maxFractionDigits="3"
																				value="${item.price }" /> &#8363</span>
																	</span>
																	<div class="actions">
																		<button title="Add To Cart" class="action add-to-cart"
																			data-bs-toggle="modal"
																			data-bs-target="#exampleModal-Cart">
																			<i class="pe-7s-shopbag"></i>
																		</button>
																		<button class="action wishlist" title="Wishlist"
																			data-bs-toggle="modal"
																			data-bs-target="#exampleModal-Wishlist">
																			<i class="pe-7s-like"></i>
																		</button>
																		<button class="action quickview"
																			data-link-action="quickview" title="Quick view"
																			data-bs-toggle="modal" data-bs-target="#exampleModal">
																			<i class="pe-7s-look"></i>
																		</button>
																		<button class="action compare" title="Compare"
																			data-bs-toggle="modal"
																			data-bs-target="#exampleModal-Compare">
																			<i class="pe-7s-refresh-2"></i>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
											
										</div>
											</c:forEach>
											</c:if>
									</div>
								</div>
							</div>
						</div>
						<!-- Tab Content Area End -->
						<!--  Pagination Area Start -->
						<div class="pro-pagination-style text-center text-lg-end"
							data-aos="fade-up" data-aos-delay="200">
							<div class="pages">
								<ul>
							<!-- Trang hien hanh  -->
									<c:if test="${paginateInfo.currentPage<=paginateInfo.totalPage || paginateInfo.currentPage<=1 }">
										<li class="li"><a class="page-link" href="<c:url value="/san-pham/${ idCategory }/${ paginateInfo.currentPage-1}"/>"><i class="fa fa-angle-left"></i></a></li>
										</c:if>
									<c:forEach var="item" begin="1" end="${paginateInfo.totalPage }" varStatus="loop">
								
									<c:if test=""> </c:if>
									<c:if test="${(loop.index) == paginateInfo.currentPage }">
										<li class="li"><a class="page-link active" href="<c:url value="/san-pham/${ idCategory }/${ loop.index}"/>">${loop.index }</a></li>
									</c:if>
									<c:if test="${(loop.index) != paginateInfo.currentPage }">
										<li class="li"><a class="page-link" href="<c:url value="/san-pham/${ idCategory }/${ loop.index}"/>">${loop.index }</a></li>
									</c:if>
										
									</c:forEach>
									<c:if test="${paginateInfo.currentPage<=paginateInfo.totalPage }">
										<li class="li"><a class="page-link" href="<c:url value="/san-pham/${ idCategory }/${ paginateInfo.currentPage+1}"/>"><i class="fa fa-angle-right"></i></a></li>
										</c:if>
									
								</ul>
							</div>
						</div>
						<!--  Pagination Area End -->
					</div>
					<!-- Shop Bottom Area End -->
				</div>
				<!-- Sidebar Area Start -->
				<div class="col-lg-3 order-lg-first col-md-12 order-md-last">
					<div class="shop-sidebar-wrap">
						<!-- Sidebar single item -->
						<div class="sidebar-widget">
							<h4 class="sidebar-title">Loại Sản Phẩm</h4>
							<div class="sidebar-widget-category">
								<ul>
									<c:forEach var="item" items="${loaisanpham }">
										<li><a href="<c:url value="/san-pham/${item.id}"/>"
											class=""> ${item.ten_loai } </a></li>
									</c:forEach>
								</ul>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Page End  -->
</body>