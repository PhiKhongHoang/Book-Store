<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	header {
	    background-color: #333; /* Màu nền của header */
	    color: #fff; /* Màu văn bản của header */
	    padding: 20px; /* Khoảng cách bên trong header */
	    position: fixed; /* Header sẽ luôn được đặt ở vị trí cố định trên cùng */
	    top: 0; /* Đặt header ở phía trên cùng của trang */
	    width: 100%; /* Đảm bảo rằng header chiếm toàn bộ chiều rộng của trang */
	    z-index: 1000; /* Đảm bảo header được hiển thị phía trước của các phần tử khác */
	}
	
	header a,
	main a {
		text-decoration: none;
	}
	
</style>
    <!-- start header -->
<header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="Index.jsp" class="nav-link px-2 text-secondary bi bi-house-heart-fill">Tobii</a></li>
          
          <li>
          	<style>
          		.dropdown1:hover>.dropdown-menu {
					  display: flex;
					}
					
				.dropdown1>.dropdown-menu li{
					  width: 300px;
					}
					
				.dropdown1>.dropdown-toggle:active {
				  /*Without this, clicking will make it sticky*/
				    pointer-events: none;
				}
				
				li {
					list-style-type: none;
				}
          	</style>
          	
          	<div class="dropdown dropdown1">
			  <a href="khach-hang">
				  <button
				    class="btn dropdown-toggle"
				    type="button"
				    id="dropdownMenuButton"
				    data-mdb-toggle="dropdown"
				    aria-expanded="false">
				    	<span class="text-white">Nam</span>
				  </button>
			  </a>
			  
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun thun thun thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
			  </ul>
			  
			</div>
          </li>
          
          <li>
			<div class="dropdown dropdown1">
			  <a href="khach-hang">
				  <button
				    class="btn dropdown-toggle"
				    type="button"
				    id="dropdownMenuButton"
				    data-mdb-toggle="dropdown"
				    aria-expanded="false">
				    	<span class="text-white">Nữ</span>
				  </button>
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun thun thun thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
			  </ul>
			</div>
		  </li>
          <li>
			<div class="dropdown dropdown1">
			  <a href="khach-hang">
				  <button
				    class="btn dropdown-toggle"
				    type="button"
				    id="dropdownMenuButton"
				    data-mdb-toggle="dropdown"
				    aria-expanded="false">
				    	<span class="text-white">Trẻ em</span>
				  </button>
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun thun thun thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
			  </ul>
			</div>
		  </li>
          <li>
			<div class="dropdown dropdown1">
			  <a href="khach-hang">
				  <button
				    class="btn dropdown-toggle"
				    type="button"
				    id="dropdownMenuButton"
				    data-mdb-toggle="dropdown"
				    aria-expanded="false">
				    	<span class="text-white">Đồ đôi</span>
				  </button>
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun thun thun thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi</a>
								  <a href="#" class="list-group-item-action">Áo thun</a>
								  <a href="#" class="list-group-item-action">Áo khoác</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 1</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 1</a>
								  <a href="#" class="list-group-item-action">Áo thun 1</a>
								  <a href="#" class="list-group-item-action">Áo khoác 1</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
				  
				  <div class="row" style="margin-right: 50px">
				    <div class="col">
					    <li>
					    	<a class="dropdown-item" href="#"><b>Áo 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun thun thun thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
					    </li>
				    </div>
				    <div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Quần 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
					<div class="col">
					    <li>
					    	<a class="dropdown-item col" href="#"><b>Túi sách 2</b></a>
					    	<ul class="row">
							  	<div class="list-group">
								  <a href="#" class="list-group-item-action">Áo sơ mi 2</a>
								  <a href="#" class="list-group-item-action">Áo thun 2</a>
								  <a href="#" class="list-group-item-action">Áo khoác 2</a>
								</div>
						  	</ul>
						</li>
					</div>
				  </div>
			  </ul>
			</div>
		  </li>
          <li><a href="#" class="nav-link px-2 text-white">Giới thiệu</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Liên hệ</a></li>
          <li><a href="#" class="nav-link px-2 text-white"><span class="bi bi-facebook"></span></a></li>
        </ul>

	  <div class="container-fluid col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
	    <form class="d-flex" role="search">
	      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success" type="submit">Search</button>
	    </form>
	  </div>

        
	    <div class="dropdown">
	      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	        <img src="https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-1/428161430_1110295763309630_6603499720418244992_n.jpg?stp=dst-jpg_p320x320&_nc_cat=104&ccb=1-7&_nc_sid=5740b7&_nc_ohc=1rB50BmLB1cAX-XZAAT&_nc_ht=scontent.fhan14-3.fna&oh=00_AfD77hXPtsIhTBmO4ZYIQDhZ0OoioUadQY6KU8_tDaBXSg&oe=65E3DC68" alt="" width="32" height="32" class="rounded-circle me-2">
	        
	        <% 
	        	KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
	      		if(khachHang == null) {
	      			%><strong>Tài khoản</strong><% 
	      		} else {
	      			%><strong><%=khachHang.getHoVaTen() %></strong><% 	      			
	      		}
	      	%>
	      </a>
	      <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
	      	<% 
	      		if(khachHang == null) {
	      			%>
			        <li><a class="dropdown-item" href="khachhang/DangNhap.jsp" >Đăng nhập</a></li>
			        <li><a class="dropdown-item" href="khachhang/DangKy.jsp">Đăng ký</a></li>	
	      			<% 
	      		} else {
	      			%>	      	
			        <li><a class="dropdown-item" href="khach-hang">Đơn mua</a></li>
			        <li><a class="dropdown-item" href="khachhang/HoSo.jsp">Hồ sơ</a></li>
			        <li><hr class="dropdown-divider"></li>
			        <li><a class="dropdown-item" href="khach-hang?hanhDong=dang-xuat">Đăng xuất</a></li>	      			
	      			<% 
	      		}
	      	%>
	      </ul>
	    </div>
      </div>
    </div>
  </header>
<!-- end header -->