<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<title>Giỏ Hàng</title>
</head>
<body>
      <!-- Cart Area Start -->
        <div class="cart-main-area pt-100px pb-100px">
            <div class="container">
                <h3 class="cart-page-title">Các Sản Phẩm Trong Giỏ Hàng</h3>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <form action="#">
                            <div class="table-content table-responsive cart-table-content">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Hình ảnh</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Màu sắc</th>
                                            <th>Giá bán</th>
                                            <th>Tổng tiền</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                        <c:forEach var="item" items="${Cart }">
                                        <tr>
                                            <td class="product-thumbnail">
                                                <a href="#"><img class="img-responsive ml-15px" src='<c:url value="/assets/StyleUser/images/product-image/${item.value.product.img }"/>' alt="" /></a>
                                            </td>
                                            <td class="product-name"><a href="#">${item.value.product.ten }</a></td>
                                           
                                            <td class="product-quantity">
                                                <div class="cart-plus-minus">
                                                    <input id="quanty-cart-${item.key }" class="cart-plus-minus-box" type="text" name="qtybutton" value="${item.value.quanty }" />
                                                </div>
                                            </td>
                                            <td class="product-price-cart"><span class="amount">${item.value.product.name_color }</span></td>
                                             <td class="product-price-cart"><span class="amount"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${item.value.product.price }" /> &#8363</span></td>
                                            <td class="product-subtotal"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${item.value.totalPrice }" /> &#8363</td>
                                            <td class="product-remove">
                                                <button type="button" data-id="${item.key }" class="edit-cart"><i class="fa fa-pencil"></i></button>
                                                <a href="<c:url value="/DeleteCart/${item.key }"/>"><i class="fa fa-times"></i></a>
                                            </td> 
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="cart-shiping-update-wrapper">
                                        <div class="cart-shiping-update">
                                            <a href="#">Tiếp tục mua sắm</a>
                                        </div>
                                        <!-- <div class="cart-shiping-update">
                                            <a href="#">Thanh toán</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="row">
                            
                            
                            <div class="col-lg-12 col-md-12 mt-md-30px">
                                <div class="grand-totall">
                                    <div class="title-wrap">
                                        <h4 class="cart-bottom-title section-bg-gary-cart">Tổng thanh toán</h4>
                                    </div>
                                    <h5>Tổng tiền <span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${TotalPriceCart}" /> &#8363</span></h5>
                                    <div class="total-shipping">
                                        <h5>Vận chuyển</h5>
                                        <ul>
                                            <li> Hỏa tốc <span>Miễn phí</span></li>
                                        </ul>
                                    </div>
                                    <h4 class="grand-totall-title">Số Tiền Phải Thanh Toán <span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${TotalPriceCart}" /> &#8363</span></h4>
                                    <a href='<c:url value="/checkout"/>'>Thanh Toán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart Area End -->
        <content tag="script">
        <script>
        $(".edit-cart").on("click",function(){
        	
        	var id = $(this).data("id");
        	var quanty = $("#quanty-cart-" + id).val();
        	window.location = "EditCart/"+id+"/"+quanty;
        });
        </script>
        
        </content>
        </body>
