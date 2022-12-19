<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	<div class="container-fluid">
		<div class="row bg-secondary py-2 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark" href="">Giờ mở cửa mỗi ngày</a> <span
						class="text-muted px-2">:</span> <a class="text-dark" href="">6h00
						AM - 11h00 PM</a>

				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark" href="">Hotline</a> <span
						class="text-muted px-2">:</span> <a class="text-dark" href="">0384887694</a>
				</div>
			</div>
			
		</div>
		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a href="" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold">F</span>lower
					</h1>
				</a>
			</div>
			<!-- tìm kiếm sản phẩm theo tên -->
			<div class="col-lg-6 col-6 text-left">
				<form action="SearchServlet" method="POST">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Tìm kiếm" name="txtsearch">
						<div class="input-group-append">
							<button type="submit" class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					
				</form>
			</div>
			
			<div class="col-lg-3 col-6 text-right">
			
				<a href="cart" class="btn border">
			<i class="fas fa-shopping-cart text-primary"></i> <span class="badge"></span>
				</a>
				
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	
	
	<div class="container-fluid">
		<div class="row border-top px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a
					class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
					data-toggle="collapse" href="#navbar-vertical"
					style="height: 65px; margin-top: -1px; padding: 0 30px;">
					<h6 class="m-0">Danh mục sản phẩm</h6> <i
					class="fa fa-angle-down text-dark"></i>
				</a>
				<nav
					class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
					id="navbar-vertical">
					<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
						<a href="CategoryServlet?cid=CA001" class="nav-item nav-link">Hoa sinh nhật</a> 
						<a href="CategoryServlet?cid=CA002" class="nav-item nav-link">Hoa chúc mừng</a> 
						<a href="CategoryServlet?cid=CA003" class="nav-item nav-link">Hoa tình yêu</a> 
						<a href="CategoryServlet?cid=CA004" class="nav-item nav-link">Hoa cưới</a> 
						<a href="CategoryServlet?cid=CA005" class="nav-item nav-link">Hoa khai trương</a> 
						<a href="CategoryServlet?cid=CA006" class="nav-item nav-link">Hoa chia buồn</a> 
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="HomeServlet" class="nav-item nav-link active">Trang
								chủ</a> <a href="ProductServlet" class="nav-item nav-link">Tất
								cả sản phẩm</a> <a href="contact.jsp" class="nav-item nav-link">Liên
								hệ</a>
						</div>

						<c:if test="${sessionScope.user == null}">
							<div class="navbar-nav ml-auto py-0">
								<a href="login.jsp" class="nav-item nav-link">Đăng nhập</a> <a
									href="register.jsp" class="nav-item nav-link">Đăng kí</a>
							</div>
						</c:if>

						<c:if test="${sessionScope.user.isAdmin == 0}">
							<div class="navbar-nav ml-auto py-0">
								<a href="" class="nav-item nav-link">Chào
									${sessionScope.user.name }</a>
									<a href="LoadUserServlet"
									class="nav-item nav-link">Thay đổi thông tin</a><a
									href="LogoutServlet" class="nav-item nav-link">Đăng xuất</a>
							</div>

						</c:if>
						
						<c:if test="${sessionScope.user.isAdmin == 1 }">
						<div class="navbar-nav ml-auto py-0">
								<a href="" class="nav-item nav-link">Chào
									${sessionScope.user.name }</a> <a href="ManageProductServlet"
									class="nav-item nav-link">Quản lý sản phẩm</a> <a
									href="LogoutServlet" class="nav-item nav-link">Đăng xuất</a>
							</div>
						
						</c:if>

					</div>
				</nav>
			
				<div id="header-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
					
						<div class="carousel-item active" style="height: 410px;">
							<img class="img-fluid" src="img/carousel-1.jpg" alt="Image">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h4 class="text-light text-uppercase font-weight-medium mb-3">GIẢM
										GIÁ 10% ĐƠN HÀNG ĐẦU TIÊN CỦA BẠN</h4>
									<h3 class="display-4 text-white font-weight-semi-bold mb-4">Flower
										shop</h3>
									<a href="ProductServlet" class="btn btn-light py-2 px-3">Mua
										ngay</a>
								</div>
							</div>
						</div>
						<div class="carousel-item" style="height: 410px;">
							<img class="img-fluid" src="img/carousel-2.jpg" alt="Image">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h4 class="text-light text-uppercase font-weight-medium mb-3">GIẢM
										GIÁ 10% ĐƠN HÀNG ĐẦU TIÊN CỦA BẠN</h4>
									<h3 class="display-4 text-white font-weight-semi-bold mb-4">Flower
										shop</h3>
									<a href="ProductServlet" class="btn btn-light py-2 px-3">Mua
										ngay</a>
								</div>
							</div>
						</div>
					</div>

					<a class="carousel-control-prev" href="#header-carousel"
						data-slide="prev">
						<div class="btn btn-dark" style="width: 45px; height: 45px;">
							<span class="carousel-control-prev-icon mb-n2"></span>
						</div>
					</a> <a class="carousel-control-next" href="#header-carousel"
						data-slide="next">
						<div class="btn btn-dark" style="width: 45px; height: 45px;">
							<span class="carousel-control-next-icon mb-n2"></span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
