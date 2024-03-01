<%@page import="java.sql.Date"%>
<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Hồ sơ</title>
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
		<div class="container row mt-2">
			<div>
				<button type="button" class="btn btn-primary bi bi-house-heart-fill"><a href="../Index.jsp" style="color: white; text-decoration: none">Trang chủ</a></button>
			</div>
		</div>

	<div class="container" style="margin-top: 150px">
		<div class="row mt-5" style="background-color: rgba(0, 0, 0, 0.2);">
			<div class="col-lg-3 mt-5">
				<div class="row" style="display: inline">
					<img class="rounded-circle me-2" style="height: 70px; width: 90px;" alt="avt" src="https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-1/428161430_1110295763309630_6603499720418244992_n.jpg?stp=dst-jpg_p320x320&_nc_cat=104&ccb=1-7&_nc_sid=5740b7&_nc_eui2=AeEQQB0P3tlUJr8lZ_xqMQZo7Cvb3ycAfsXsK9vfJwB-xZO_CoPNn1eXIC8ts9GyN8MjvLO46IH_0e-XI4QEvOD7&_nc_ohc=1rB50BmLB1cAX-vSox3&_nc_ht=scontent.fhan14-3.fna&oh=00_AfBNIJlL-mW8ErCjPwRM3YSMYq5XDW4ko-qEFWfTLPYrCQ&oe=65E3DC68">
					<b style="font-size: 25px">Admin</b>
				</div>
				<div class="row mt-5">
					<span>Tài khoản của tôi</span>
					<ul style="list-style-type: none; padding-left: 30px">
						<li style="list-style-type: none; padding-top: 10px"><a href="#">Hồ sơ</a></li>
						<li style="list-style-type: none; padding-top: 10px"><a href="DoiMatKhau.jsp">Đổi mật khẩu</a></li>
					</ul>
				</div>
				<div class="row">
					<span><a href="khach-hang">Đơn mua</a></span>
				</div>
			</div>
			
<%	
	KhachHang kh = (KhachHang)session.getAttribute("khachHang");
	if(kh == null) {
		%>
		<h1>Bạn chưa đăng nhập. Vui lòng đăng nhập tài khoản để xem hồ sơ!</h1>
		<%
	} else {	

	String baoLoi = request.getAttribute("baoLoi") + "";
	baoLoi = (baoLoi.equals("null")) ? "" : baoLoi;
	String tenDangNhap = kh.getTenDangNhap();
	tenDangNhap = (tenDangNhap.equals("null")) ? "" : tenDangNhap;
	
	String hoVaTen = kh.getHoVaTen();
	hoVaTen = (hoVaTen.equals("null")) ? "" : hoVaTen;
	
	String gioiTinh = kh.getGioiTinh();
	gioiTinh = (gioiTinh.equals("null")) ? "" : gioiTinh;
	
	Date ngaySinh = kh.getNgaySinh();
	ngaySinh = (ngaySinh == null) ? null : ngaySinh;
	
	String diaChi = kh.getDiaChi();
	diaChi = (diaChi.equals("null")) ? "" : diaChi;
	
	String soDienThoai = kh.getSoDienThoai();
	soDienThoai = (soDienThoai.equals("null")) ? "" : soDienThoai;
	
	String email = kh.getEmail();
	email = (email.equals("null")) ? "" : email;
	
	boolean dangKyNhanBanTinEmail = kh.isDangKyNhanBanTinEmail();
	dangKyNhanBanTinEmail = (dangKyNhanBanTinEmail == true) ? true : false;

%>			
			
			<div class="col-lg-9" style="background-color: #abc">
				<div class="rq">
					<%=baoLoi %>
				</div>
				<form action="../khach-hang" method="post">
					<input type="hidden" name="hanhDong" value="sua-ho-so">
					<div class="row">
						<div class="col-md-6 y-3">
							<h2>Tài khoản</h2>
						  	<div class="mb-3">
						    	<label for="tenDangNhap" class="form-label">Tên đăng nhập</label> <span class="rq">*</span>
						    	<input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" required value="<%=tenDangNhap %>">
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
							  	<textarea class="form-control" id="diaChi" name="diaChi" rows="1"><%=diaChi %></textarea>
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
						    	<input type="checkbox" class="form-check-input" id="dangKyNhanBanTinEmail" name="dangKyNhanBanTinEmail" <%=(dangKyNhanBanTinEmail == true) ? "checked='checked'" : "" %>>
						  	</div>	
						  	<button type="submit" class="btn btn-primary" name="submit" id="submit">Lưu</button>
						</div>
					</div>
				</form>	
			</div>
			<%} %>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	crossorigin="anonymous"></script>
</body>
</html>