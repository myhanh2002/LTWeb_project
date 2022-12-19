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
	<!-- Topbar Start -->
	<c:import url="header.jsp" />
	<!-- Navbar End -->
	<!-- Checkout Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div class="mb-4">
					<h4 class="font-weight-semi-bold mb-4">Thông tin thanh toán</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>Họ và tên</label> <input value="${user.name }"
								class="form-control" type="text" placeholder="Họ và tên"
								name="name">
						</div>
						<div class="col-md-6 form-group">
							<label>Email</label> <input value="${user.email }"
								class="form-control" type="text" placeholder="Email"
								name="email">
						</div>
						<div class="col-md-6 form-group">
							<label>Số điện thoại</label> <input value="${user.phoneNumber }"
								class="form-control" type="text" placeholder="Số điện thoại"
								name="phoneNumber">
						</div>
						<div class="col-md-6 form-group">
							<label>Địa chỉ</label> <input value="${user.address }"
								class="form-control" type="text" placeholder="Địa chỉ"
								name="address">
						</div>

						<div class="col-md-12 form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="shipto">
								<label class="custom-control-label" for="shipto"
									data-toggle="collapse" data-target="#shipping-address">Địa
									chỉ giao hàng khác</label>
							</div>
						</div>
					</div>
				</div>

				<div class="collapse mb-4" id="shipping-address">
					<h4 class="font-weight-semi-bold mb-4">Địa chỉ giao hàng khác</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>Họ và tên</label> <input class="form-control" type="text"
								placeholder="Nhập họ và tên">
						</div>
						<div class="col-md-6 form-group">
							<label>Email</label> <input class="form-control" type="text"
								placeholder="Nhập email">
						</div>
						<div class="col-md-6 form-group">
							<label>Số điện thoại</label> <input class="form-control"
								type="text" placeholder="Nhập số điện thoại">
						</div>
						<div class="col-md-6 form-group">
							<label>Địa chỉ</label> <input class="form-control" type="text"
								placeholder="Nhập địa chỉ">
						</div>

					</div>
				</div>
				<div>
							<a href="cart">
								<button class="btn-primary my-3 py-3">Quay lại giỏ hàng</button>
							</a>
						</div>
			</div>

			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Tổng số đơn đặt hàng</h4>
					</div>
					<div class="card-body">
						<h5 class="font-weight-medium mb-3">Sản phẩm</h5>
						<c:set var="total" value="0"></c:set>
						<c:forEach items="${sessionScope.cart.items}" var="item">
							<c:set var="total"
								value="${total + item.product.priceNew * item.quantity }"></c:set>
							<div class="d-flex justify-content-between">
								<p>${item.product.pName }(x${item.quantity })</p>
								<p>${item.product.priceNew} VNĐ</p>
							</div>
						</c:forEach>

						<div class="card-footer border-secondary bg-transparent">
							<div class="d-flex justify-content-between mt-2">
								<h5 class="font-weight-bold">Tổng cộng</h5>
								<h5 class="font-weight-bold">${total } VNĐ</h5>
							</div>
						</div>
					</div>
					<div class="card border-secondary mb-5">
						<div class="card-header bg-secondary border-0">
							<h4 class="font-weight-semi-bold m-0">Phương thức thanh toán</h4>
						</div>
						<div class="card-body">

							<div class="form-group">
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" name="payment"
										id="directcheck" checked> <label class="custom-control-label"
										for="directcheck">Tiền mặt</label>
								</div>
							</div>
							<div class="form-group">
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" name="payment"
										id="banktransfer" > <label class="custom-control-label"
										for="banktransfer">Chuyển khoản ngân hàng</label>
								</div>
							</div>
							<div class="form-group">
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" name="payment"
										id="paypal"> <label class="custom-control-label"
										for="paypal">Phương thức khác</label>
								</div>
							</div>
						</div>
						<div class="card-footer border-secondary bg-transparent">
							<a href="OrderServlet" style="color: white"><button
									class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Đặt
									hàng</button> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Checkout End -->
		
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