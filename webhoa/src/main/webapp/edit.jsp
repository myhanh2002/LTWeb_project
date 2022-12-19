<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="manager.css" rel="stylesheet" type="text/css" />
<style>
img {
	width: 200px;
	height: 120px;
}
body{
color:#4e2e8b
}

</style>
<body>
	<div class="container">
		<div id="editPrroductModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="EditProductServlet" method="post">
						<div class="modal-header">
							<h4 class="modal-title">Chỉnh sửa</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>ID</label> <input value="${detail.pId}" name="pId"
									type="text" class="form-control" readonly required>
							</div>
							<div class="form-group">
								<label>Tên sản phẩm</label> <input value="${detail.pName}"
									name="pName" type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Ảnh</label> <input value="${detail.photo}" name="photo"
									type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Giá gốc</label> <input value="${detail.priceOld}"
									name="priceOld" type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Giá khuyến mãi</label> <input value="${detail.priceNew}"
									name="priceNew" type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Mô tả</label>
								<textarea name="pDescription" class="form-control" required>${detail.pDescription}</textarea>
							</div>
							<div class="form-group">
								<label>Danh mục</label> <select name="category"
									class="form-select" aria-label="Default select example">
									<c:forEach items="${listC}" var="ca">
										<option value="${ca.cateId}">${ca.cateName}</option>
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="modal-footer">
							<input type="submit" class="btn btn-success" value="Lưu">
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>
</body>
</html>