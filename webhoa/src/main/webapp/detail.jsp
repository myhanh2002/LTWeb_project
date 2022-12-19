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

	<!-- Shop Detail Start -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col-lg-5 pb-5">
				<div id="product-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner border">
						<div class="carousel-item active">
							<img class="w-100 h-100" src="${detail.photo }" alt="Image">
						</div>
					</div>
					<a class="carousel-control-prev" href="#product-carousel"
						data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
					</a> <a class="carousel-control-next" href="#product-carousel"
						data-slide="next"> <i
						class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>

			<div class="col-lg-7 pb-5">
				<h3 class="font-weight-semi-bold">${detail.pName }</h3>
				<div class="d-flex mb-3">
					<div class="text-primary mr-2">
						<small class="fas fa-star"></small> <small class="fas fa-star"></small>
						<small class="fas fa-star"></small> <small
							class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>
					</div>
					<small class="pt-1">(50 Reviews)</small>
				</div>
				<h3 class="font-weight-semi-bold mb-4">${detail.priceNew} VNĐ</h3>
				<p class="mb-4">${detail.pDescription }</p>


				<form action="cart" method="Post">
					<input type="hidden" name="productCode"
						value="<c:out value='${detail.pId}'/>"> <input style="background-color:  #D19C97"
						class="primary-btn" type="submit" value="Thêm vào giỏ hàng">
				</form>
			</div>
		</div>
	</div>


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