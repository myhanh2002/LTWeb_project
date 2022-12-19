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
	<c:import url="header.jsp"/>


		<!-- Featured Start -->
		<div class="container-fluid pt-5">
			<div class="row px-xl-5 pb-3">
				<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
					<div class="d-flex align-items-center border mb-4"
						style="padding: 30px;">
						<h1 class="fa fa-check text-primary m-0 mr-3"></h1>
						<h5 class="font-weight-semi-bold m-0">Hoa tươi</h5>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
					<div class="d-flex align-items-center border mb-4"
						style="padding: 30px;">
						<h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
						<h5 class="font-weight-semi-bold m-0">Miễn phí vận chuyển</h5>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
					<div class="d-flex align-items-center border mb-4"
						style="padding: 30px;">
						<h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
						<h5 class="font-weight-semi-bold m-0">Giao hàng nhanh</h5>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
					<div class="d-flex align-items-center border mb-4"
						style="padding: 30px;">
						<h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
						<h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
					</div>
				</div>
			</div>
		</div>
		<!-- Featured End -->


		<!-- Categories Start -->
		
		<div class="container-fluid pt-5">
			<div class="row px-xl-5 pb-3">
			<c:forEach items="${listC }" var="ca">
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="cat-item d-flex flex-column border mb-4"
						style="padding: 30px;">
						<a href="CategoryServlet?cid=${ca.cateId }"
							class="cat-img position-relative overflow-hidden mb-3">
							<p class="text-right">Tất cả</p>
						</a> <img class="img-fluid" src="img/home.jpg" alt="">

						<p class="font-weight-semi-bold m-0">${ca.cateName }</p>
					</div>
				</div>
					</c:forEach>
			</div>
		</div>
	
		<!-- Footer Start -->
		<c:import url="footer.jsp"/>
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