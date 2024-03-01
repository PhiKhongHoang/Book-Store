<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
	crossorigin="anonymous">
<!-- bootstrap icon -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body>
<%
	KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
	if(khachHang == null) {
		%>
		<h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ</h1>
		<%
	} else {
		String baoLoi = request.getAttribute("baoLoi") + "";
		if(baoLoi.equals("null")) {
			baoLoi = "";
		}
%>
		<div class="container row mt-5">
			<div>
				<button type="button" class="btn btn-primary bi bi-house-heart-fill"><a href="../Index.jsp" style="color: white; text-decoration: none">Trang chủ</a></button>
			</div>
		</div>

	<div class="container" style="width: 30%; margin-top: 200px">
	<h1>Đổi mật khẩu</h1>
	<span>
		<%=baoLoi%>
	</span>
		<form action="../khach-hang" method="post">	
			<input type="hidden" name="hanhDong" value="doi-mat-khau">	  
		  <div class="form-group">
		    <label for="matKhauHienTai">Mật khẩu hiện tại: </label>
		    <input type="password" class="form-control" id="matKhauHienTai" name="matKhauHienTai">
		  </div>
		  <div class="form-group">
		    <label for="matKhauMoi">Mật khẩu mới: </label>
		    <input type="password" class="form-control" id="matKhauMoi" name="matKhauMoi">
		  </div>
		  <div class="form-group">
		    <label for="xacNhanMatKhauMoi">Xác nhận mật khẩu mới: </label>
		    <input type="password" class="form-control" id="xacNhanMatKhauMoi" name="xacNhanMatKhauMoi">
		  </div>
		  <button type="submit" class="btn btn-primary mt-5">Lưu mật khẩu</button>
		</form>
	</div>


<%
	}
%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	crossorigin="anonymous"></script>
</body>
</html>