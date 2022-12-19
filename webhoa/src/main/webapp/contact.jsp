<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:import url="header.jsp"/>
	<!-- Navbar End -->

	<!-- Contact Start -->
	<div class="container-fluid pt-5">
		<div class="text-center mb-4">
			<h2 class="section-title px-5">
				<span class="px-2">Liên hệ để được hỗ trợ</span>
			</h2>
		</div>
		<div class="row px-xl-5">
			<div class="col-lg-7 mb-5">
				<div class="contact-form">
					<div id="success"></div>
					<form name="sentMessage" id="contactForm" novalidate="novalidate">
						<div class="control-group">
							<input type="text" class="form-control" id="name"
								placeholder="Họ tên" required="required"
								data-validation-required-message="Vui lòng nhập tên của bạn" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="email" class="form-control" id="email"
								placeholder="Email" required="required"
								data-validation-required-message="Vui lòng nhập email của bạn" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="text" class="form-control" id="subject"
								placeholder="Chủ đề" required="required"
								data-validation-required-message="Vui lòng nhập chủ đề của bạn" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<textarea class="form-control" rows="6" id="message"
								placeholder="Tin nhắn" required="required"
								data-validation-required-message="Vui lòng nhập tin nhắn của bạn"></textarea>
							<p class="help-block text-danger"></p>
						</div>
						<div>
							<a href="index.jsp"><button class="btn btn-primary py-2 px-4" type="submit"
								id="sendMessageButton">Gửi tin nhắn</button></a>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-5 mb-5">
				<h5 class="font-weight-semi-bold mb-3">Flower shop</h5>
				<p>Tự hào là một trong những đơn vị cung cấp các dịch vụ hoa tươi chuyên nghiệp và uy tín nhất,
				 chúng tôi mong muốn nhận được nhiều hơn nữa sự tin tưởng và ủng hộ của khách hàng.</p>
				<div class="d-flex flex-column mb-3">
					<h5 class="font-weight-semi-bold mb-3">Thông tin cửa hàng</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt text-primary mr-3"></i>Trường ĐH Nông Lâm TP.HCM, TP Thủ Đức, TP Hồ Chí Minh
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope text-primary mr-3"></i>Flowershop.2022@gmail.com
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt text-primary mr-3"></i>0384887694
					</p>
				</div>
				
			</div>
		</div>
	</div>
	<!-- Contact End -->


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