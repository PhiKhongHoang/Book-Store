<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Đăng ký</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">
<!-- bootstrap icon -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
	.rq {
		color: red;
	}
	a {
		text-decoration: none;
	}
</style>
</head>
<body>
<%
	String baoLoi = request.getAttribute("baoLoi") + "";
	baoLoi = (baoLoi.equals("null")) ? "" : baoLoi;
	
	String tenDangNhap = request.getAttribute("tenDangNhap") + "";
	tenDangNhap = (tenDangNhap.equals("null")) ? "" : tenDangNhap;
	
	String hoVaTen = request.getAttribute("hoVaTen") + "";
	hoVaTen = (hoVaTen.equals("null")) ? "" : hoVaTen;
	
	String gioiTinh = request.getAttribute("gioiTinh") + "";
	gioiTinh = (gioiTinh.equals("null")) ? "" : gioiTinh;
	
	String ngaySinh = request.getAttribute("ngaySinh") + "";
	ngaySinh = (ngaySinh.equals("null")) ? "" : ngaySinh;
	
	String diaChi = request.getAttribute("diaChi") + "";
	diaChi = (diaChi.equals("null")) ? "" : diaChi;
	
	String soDienThoai = request.getAttribute("soDienThoai") + "";
	soDienThoai = (soDienThoai.equals("null")) ? "" : soDienThoai;
	
	String email = request.getAttribute("email") + "";
	email = (email.equals("null")) ? "" : email;
	
	String dangKyNhanBanTinEmail = request.getAttribute("dangKyNhanBanTinEmail") + "";
	dangKyNhanBanTinEmail = (dangKyNhanBanTinEmail.equals("null")) ? "" : dangKyNhanBanTinEmail;
	
%>

	<div class="container">
		<div class="row mt-2">
			<div>
				<button type="button" class="btn btn-primary bi bi-house-heart-fill"><a href="Index.jsp" style="color: white; text-decoration: none">Trang chủ</a></button>
			</div>
		</div>
		<div class="text-center"><h1>ĐĂNG KÝ TÀI KHOẢN</h1></div>
		
		<div class="rq">
			<%=baoLoi %>
		</div>
		
		<form action="../khach-hang" method="post">
			<input type="hidden" name="hanhDong" value="dang-ky">
			<div class="row"> 
				<div class="col-md-6 y-3">
					<h2>Tài khoản</h2>
				  	<div class="mb-3">
				    	<label for="tenDangNhap" class="form-label">Tên đăng nhập</label> <span class="rq">*</span>
				    	<input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" required value="<%=tenDangNhap %>">
				  	</div>
				  	<div class="mb-3">
				    	<label for="matKhau" class="form-label">Mật khẩu</label> <span class="rq">*</span>
				    	<input type="password" class="form-control" id="matKhau" name="matKhau" required>
				  	</div>
				  	<div class="mb-3">
				    	<label for="xacNhanMatKhau" class="form-label">Xác nhận mật khẩu</label> 
				    	<span class="rq">*</span> <span id="msg" class="rq"></span>
				    	<input type="password" class="form-control" id="xacNhanMatKhau" 
				    		name="xacNhanMatKhau" required onkeyup="kiemTraMatKhau()">
				  	</div>
				  	
				  	
				
					<h2>Thông tin khách hàng</h2>
					<div class="mb-3">
					  	<label for="hoVaTen" class="form-label">Họ và tên</label>
					 	<input type="text" class="form-control" id="hoVaTen" name="hoVaTen" value="<%=hoVaTen %>">
					</div>
					<div class="mb-3">
					  	<label for="gioiTinh" class="form-label">Giới tính</label>
					  	<select class="form-select" aria-label="Default select example" id="gioiTinh" name="gioiTinh">
							<option selected></option>
						  	<option value="1" <%=(gioiTinh.equals("1")) ? "selected='selected'" : "" %>>Nam</option>
						  	<option value="2" <%=(gioiTinh.equals("2")) ? "selected='selected'" : "" %>>Nữ</option>
						  	<option value="3" <%=(gioiTinh.equals("3")) ? "selected='selected'" : "" %>>Khác</option>
						</select>
					</div>
					<div class="mb-3">
					  	<label for="ngaySinh" class="form-label">Ngày sinh</label>
					  	<input type="date" class="form-control" id="ngaySinh" name="ngaySinh" value="<%=ngaySinh %>">
					</div>
				</div>
				
				<div class="col-md-6 y-3">			
					<h2>Địa chỉ</h2>
					<div class="mb-3">
					  	<label for="diaChi" class="form-label">Địa chỉ</label>
					  	<textarea class="form-control" id="diaChi" name="diaChi" rows="1"> <%=diaChi %> </textarea>
					</div>
					<div class="mb-3">
					  	<label for="soDienThoai" class="form-label">Số điện thoại</label>
					  	<input type="text" class="form-control" id="soDienThoai" name="soDienThoai" value="<%=soDienThoai %>">
					</div>
					<div class="mb-3">
					  	<label for="email" class="form-label">Email</label>
					  	<input type="email" class="form-control" id="email" name="email" value="<%=email %>">
					</div>	
					<div class="mb-3 form-check">
						<label for="dangKyNhanBanTinEmail" class="form-label">Đăng ký nhận bản tin email</label>
				    	<input type="checkbox" class="form-check-input" id="dangKyNhanBanTinEmail" name="dangKyNhanBanTinEmail" <%=(dangKyNhanBanTinEmail.equals("on")) ? "checked='checked'" : "" %>>
				  	</div>	
					<div class="mb-3 form-check">
						<label for="dongYDieuKhoan" class="form-label">
							Đồng ý với <a href="">điều khoản của công ty</a></label> 
							<span class="rq">*</span>
				    	<input type="checkbox" class="form-check-input" id="dongYDieuKhoan" 
				    		name="dongYDieuKhoan" checked onchange="kiemTraDongY()">
				  	</div>	
				  	
				  	<button type="submit" class="btn btn-primary" name="submit" id="submit">Đăng ký</button>
				  	<br><br>
					<span>Bạn đã có tài khoản?<a href="DangNhap.jsp"> Đăng nhập</a>	</span>	
				</div>
			</div>
		</form>	
		
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	crossorigin="anonymous"></script>
</body>

<script>
	function kiemTraMatKhau() {
		matKhau = document.getElementById("matKhau").value;
		cf_matKhau = document.getElementById("xacNhanMatKhau").value;
		if(matKhau != cf_matKhau) {
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		} else {
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}

	function kiemTraDongY() {
		dongYDieuKhoan = document.getElementById("dongYDieuKhoan");
		if(dongYDieuKhoan.checked === true)
			document.getElementById("submit").style.visibility="visible";
		else
			document.getElementById("submit").style.visibility="hidden";
	}
</script>

</html>