<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>shop hoa tươi</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="manager.css" rel="stylesheet" type="text/css" />
<style>
img {
	width: 200px;
	height: 120px;
}
.table-title{
background: #4e2e8b
}
body{
color:#4e2e8b
}
</style>
<body>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Quản lý sản phẩm</h2>
					</div>
					<div class="col-sm-6">
						<a href="#addProductModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm
								sản phẩm</span></a> 
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Tên sản phẩm</th>
						<th>Hình ảnh</th>
						<th>Giá gốc</th>
						<th>Giá khuyến mãi</th>
						<th>Chức năng</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="p">
						<tr>
							<td>${p.pId }</td>
							<td>${p.pName }</td>
							<td><img src="${p.photo }"></td>
							<td>${p.priceOld } VNĐ</td>
							<td>${p.priceNew } VNĐ</td>
							<td><a href="LoadProductServlet?pid=${p.pId }" class="edit"
								data-toggle="modal"><i class="material-icons"
									data-toggle="tooltip" title="Edit">&#xE254;</i></a> <a
								href="DeleteProductServlet?pid=${p.pId }" class="delete"
								data-toggle="modal"><i class="material-icons"
									data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a href="HomeServlet"><button style="background-color:#4e2e8b" type="button"
				class="btn btn-primary">Về trang chủ</button></a>

	</div>
	<!-- Edit Modal HTML -->
	<div id="addProductModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="AddProductServlet" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Thêm sản phẩm</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Id</label> <input name="pId" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Tên sản phẩm</label> <input name="pName" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Ảnh</label> <input name="photo" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Giá gốc</label> <input name="priceOld" type="number"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Giá khuyến mãi</label> <input name="priceNew"
								type="number" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Mô tả</label>
							<textarea name="pDescription" class="form-control" required></textarea>
						</div>
						<div class="form-group">
							<label>Danh mục</label> <select name="category"
								class="form-select" aria-label="Default select example">
								<c:forEach items="${listC }" var="ca">
									<option value="${ca.cateId }">${ca.cateName }</option>
								</c:forEach>
							</select>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Hủy"> <input type="submit" class="btn btn-success"
							value="Thêm">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>