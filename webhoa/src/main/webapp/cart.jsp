<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>shop hoa tươi</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="style.css" rel="stylesheet">
</head>

<body>

	<c:import url="header.jsp" />

	<!-- Cart Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8 table-responsive mb-5">
				<table class="table table-bordered text-center mb-0">
					<thead class="bg-secondary text-dark">
						
								<tr>
									<th class="shoping__product">Sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
									<th>Chức năng</th>
								</tr>
							</thead>
							<tbody>
							<c:set var="total" value="0"></c:set>
							<c:set var="quan" value="0"></c:set>
								<c:forEach items="${sessionScope.cart.items}" var="item">
								<c:set var="total" value="${total + item.product.priceNew * item.quantity }"></c:set>
									<tr>
										<td class="shoping__cart__item"><img
									src="${item.product.photo }" alt="" width="100" height="100">
									<h5>${item.product.pName }</h5></td>
										<td class="shoping__cart__price">${item.product.priceNew } VNĐ</td>
										<td class="shoping__cart__quantity">
											<form action="" method="post">
												<input type="hidden" name="productCode"
													value="<c:out value='${item.product.pId}'/>">
													<c:set var="quan" value="${quan + item.quantity }"></c:set>
												<div class="quantity">
													<div class="pro-qty">
														<input name="quantity" type="text" value="${item.quantity}">
													</div>
												</div>
											</form>
										</td>
										<td class="shoping__cart__total">${item.product.priceNew * item.quantity} VNĐ</td>
										<td class="shoping__cart__item__close">
											<form action="" method="post">
												<input type="hidden" name="productCode"
													value="<c:out value='${item.product.pId}'/>"> <input
													type="hidden" name="quantity" value="0"> <input style="background-color:  #D19C97"
													class="primary-btn cart-btn" type="submit" value="Xóa">
											</form>
										</td>
									</tr>

								</c:forEach>
								
							</tbody>
				</table>
				<a href="ProductServlet">
					<button class="btn-primary my-3 py-3">Tiếp tục mua hàng</button>
				</a>
			</div>
			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Tóm tắt giỏ hàng</h4>
					</div>
					<div class="card-body">
						<div class="d-flex justify-content-between mb-3 pt-1">
							<h6 class="font-weight-medium">Số lượng</h6>
							<h6 class="font-weight-medium">${quan} sản phẩm</h6>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">Tổng cộng</h5>
							<h5 class="font-weight-bold">${total} VNĐ</h5>
						</div>
						<c:if test="${ sessionScope.user == null}">
						<a href="login.jsp">
						<button class="btn btn-block btn-primary my-3 py-3">Đặt hàng</button></a>
						</c:if>
						<c:if test="${sessionScope.user != null }">
						<a href="CheckoutServlet">
							<button class="btn btn-block btn-primary my-3 py-3">Đặt hàng</button>
						</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Cart End -->


	<!-- Footer Start -->
	<c:import url="footer.jsp" />
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>