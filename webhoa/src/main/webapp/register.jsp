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
	<c:import url="header.jsp">
	</c:import>
	<section class="login py-5 border-top-1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-9 col-md-5 align-item-center">
					<div class="border">
						<center>
							<h3 class="bg-gray p-4">
								<b>ĐĂNG KÍ</b>
							</h3>
						</center>
						
						<form action="RegisterServlet" method="POST">
							<fieldset class="p-4">
							
								<input type="text" placeholder="Họ và tên"
									class="border p-3 w-100 my-2" name="name"> 
									<input type="email"
									placeholder="Email" class="border p-3 w-100 my-2" name="email">
									<input type="text"
									placeholder="Số điện thoại" class="border p-3 w-100 my-2" name="phoneNumber">
									<input type="text"
									placeholder="Địa chỉ" class="border p-3 w-100 my-2" name="address">
								<input type="text" placeholder="Tên tài khoản"
									class="border p-3 w-100 my-2" required="required"
									
									name="userName"> <input type="password"
									placeholder="Mật khẩu" class="border p-3 w-100 my-2"
									name="password"> <input type="password"
									placeholder="Nhập lại mật khẩu" class="border p-3 w-100 my-2"
									name="repassword"> 
									<p class="text-danger">${error}</p>
									<p class="text-danger">${exit}</p>
									
								
								<button class="btn btn-primary btn-block border-0 py-3"
									type="submit">Đăng kí</button>
								
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer Start -->
	<c:import url="footer.jsp" />
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