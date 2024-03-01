<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Đăng nhập</title>
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
%>

	<div class="container ">
		<div class="row mt-5">
			<div>
				<button type="button" class="btn btn-primary bi bi-house-heart-fill"><a href="Index.jsp" style="color: white; text-decoration: none">Trang chủ</a></button>
			</div>
		</div>
		
		<main class="form-signin" style="max-width: 300px; margin: auto; margin-top: 90px">
		  <form action="../khach-hang" method="post">
		  	<input type="hidden" name="hanhDong" value="dang-nhap">
		    <img class="mb-4" src="../img/logo/avt_vuong.png" alt="avt" height="65">
		    <h1 class="h3 mb-3 fw-normal">Đăng nhập tài khoản</h1>
		    <div class="rq"><%=baoLoi %></div>
		
		    <div class="form-floating">
		      <input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" value="<%=tenDangNhap%>">
		      <label for="tenDangNhap">Tên đăng nhập</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" class="form-control" id="matKhau" name="matKhau">
		      <label for="matKhau">Mật khẩu</label>
		    </div>
		
		    <div class="form-check text-start my-3">
		      <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
		      <label class="form-check-label" for="flexCheckDefault">
		        Ghi nhớ tài khoản
		      </label>
		    </div>
		    <button class="btn btn-primary w-100 py-2" type="submit">Đăng nhập</button>
		    <br><br>
		    <span>Bạn chưa có tài khoản?<a href="DangKy.jsp"> Đăng ký</a>	</span>	
		  </form>
		</main>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	crossorigin="anonymous"></script>
</body>
</html>