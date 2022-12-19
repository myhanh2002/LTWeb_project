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
<link href="owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="style.css" rel="stylesheet">
</head>

<body>
	<c:import url="header.jsp" />

	<!-- Shop Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<!-- Shop Sidebar Start -->
			<div class="col-lg-3 col-md-12">
				<img width="300" height="500" src="img/sale.jpg">
			</div>
			<!-- Shop Sidebar End -->


			<!-- Shop Product Start -->
			<div class="col-lg-9 col-md-12">
				<div class="row pb-3">
					<div class="col-12 pb-1">
						<div
							class="d-flex align-items-center justify-content-between mb-4">
							<h2>Sản phẩm</h2>
						</div>	
					</div>
					
					<c:forEach items="${list}" var="p">
					<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
					
						<div class="card product-item border-0 mb-4">
							<div
								class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
								<img class="img-fluid w-100" src="${p.photo }" alt="">
							</div>
							<div
								class="card-body border-left border-right text-center p-0 pt-4 pb-3">
								<h6 class="text-truncate mb-3">${p.pName }</h6>
								<div class="d-flex justify-content-center">
									<h6>${p.priceNew } VNĐ</h6>
									<h6 class="text-muted ml-2">
										<del>${p.priceOld } VNĐ</del>
									</h6>
								</div>
							</div>
							<div
								class="card-footer d-flex justify-content-between bg-light border">
								<a href="DetailServlet?pid=${p.pId}" class="btn btn-sm text-dark p-0"><i
									class="fas fa-eye text-primary mr-1"></i>Chi tiết</a> 
									<form action="cart"	method="Post" > 
									<input type="hidden" name="productCode"
										value="<c:out value='${p.pId}'/>">
									<input class="primary-btn" type="submit" 
									value="Thêm vào giỏ hàng" style="background-color:  #D19C97">
									</form>
							</div>
						</div>
					</div>
					</c:forEach>
						</div>

					</div>
				</div>
			</div>
			<!-- Shop Product End -->
	<!-- Shop End -->


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
	
</body>

</html>