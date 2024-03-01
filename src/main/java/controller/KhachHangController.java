package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;
import util.MaHoa;

/**
 * Servlet implementation class KhachHangController
 */
@WebServlet("/khach-hang")
public class KhachHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KhachHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hanhDong = request.getParameter("hanhDong");
		if(hanhDong.equals("dang-nhap")) {
			dangNhap(request, response);
		} else if(hanhDong.equals("dang-xuat")) {
			dangXuat(request, response);
		} else if (hanhDong.equals("dang-ky")) {
			dangKy(request, response);
		} else if (hanhDong.equals("doi-mat-khau")) {
			doiMatKhau(request, response);
		} else if (hanhDong.equals("sua-ho-so")) {
			suaHoSo(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void dangNhap(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String tenDangNhap = request.getParameter("tenDangNhap");
			String matKhau = request.getParameter("matKhau");
			
			matKhau = MaHoa.toSHA1(matKhau);
			
			request.setAttribute("tenDangNhap", tenDangNhap);
			
			String url = "";
			String baoLoi = "";
			
			KhachHangDAO khd = new KhachHangDAO();
			KhachHang khachHang = khd.checkUser(tenDangNhap, matKhau);
					
			if(khachHang == null) {
				baoLoi += "Sai tên đăng nhập hoặc mật khẩu!";
			}
			
			request.setAttribute("baoLoi", baoLoi);
			
			if(baoLoi.length() > 0) {
				url = "/khachhang/DangNhap.jsp";
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("khachHang", khachHang);
				url = "/Index.jsp";
			}
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void dangKy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String tenDangNhap = request.getParameter("tenDangNhap");
			String matKhau = request.getParameter("matKhau");
			String xacNhanMatKhau = request.getParameter("xacNhanMatKhau");
			String hoVaTen = request.getParameter("hoVaTen");
			String gioiTinh = request.getParameter("gioiTinh");
			String ngaySinh = request.getParameter("ngaySinh");
			String diaChi = request.getParameter("diaChi");
			String soDienThoai = request.getParameter("soDienThoai");
			String email = request.getParameter("email");
			String dangKyNhanBanTinEmail = request.getParameter("dangKyNhanBanTinEmail");
			
			request.setAttribute("tenDangNhap", tenDangNhap);
			request.setAttribute("hoVaTen", hoVaTen);
			request.setAttribute("gioiTinh", gioiTinh);
			request.setAttribute("ngaySinh", ngaySinh);
			request.setAttribute("diaChi", diaChi);
			request.setAttribute("soDienThoai", soDienThoai);
			request.setAttribute("email", email);
			request.setAttribute("dangKyNhanBanTinEmail", dangKyNhanBanTinEmail);
			
			String url = "";
			String baoLoi = "";
			
			KhachHangDAO khd = new KhachHangDAO();
			
			if(khd.kiemTraTenDangNhap(tenDangNhap)) {
				baoLoi += "Tên đăng nhập đã tồn tại! <br>";
			}
			if(!matKhau.equals(xacNhanMatKhau)) {
				baoLoi += "Mật khẩu không khớp!";
			} else {
//			mã hóa pass trước khi lưu xuống db
				matKhau = MaHoa.toSHA1(matKhau);
			}
			
			request.setAttribute("baoLoi", baoLoi);
			
			if(baoLoi.length() > 0) {
				url = "/khachhang/DangKy.jsp";
			} else {
				Random rd = new Random();
				String maKhachHang = System.currentTimeMillis() + rd.nextInt(1000) + "";
				KhachHang kh = new KhachHang(maKhachHang, tenDangNhap, matKhau, 
						hoVaTen, gioiTinh, Date.valueOf(ngaySinh), diaChi, 
						soDienThoai, email, dangKyNhanBanTinEmail != null);
				khd.insert(kh);
				url = "/Index.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void dangXuat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
//		hủy bỏ session
			session.invalidate();
			
//		get url 
			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
			
//		vì không cần truyền dữ liệu đi nên gọi sendRedirect()
			response.sendRedirect(url + "/Index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void doiMatKhau(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String matKhauHienTai = request.getParameter("matKhauHienTai");
			String matKhauMoi = request.getParameter("matKhauMoi");
			String XacNhanMatKhauMoi = request.getParameter("xacNhanMatKhauMoi");
			
			String matKhauHienTaiSHA1 = MaHoa.toSHA1(matKhauHienTai);
			String matKhauMoiSHA1 = MaHoa.toSHA1(matKhauMoi);
			
			String baoLoi = "";
			String url = "/khachhang/DoiMatKhau.jsp";
			
//		kiểm tra pass cũ có đúng hay không
			HttpSession session = request.getSession();
			KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
			if(khachHang == null) {
				baoLoi = "Bạn chưa đăng nhập vào hệ thống!";
			} else {
//			nếu khách đã đăng nhập
				if(!matKhauHienTaiSHA1.equals(khachHang.getMatKhau())) {
					baoLoi = "Mật khẩu hiện tại không chính xác!";
				} else {
					if(!matKhauMoi.equals(XacNhanMatKhauMoi)) {
						baoLoi = "Xác nhận mật khẩu không chính xác!";
					} else if(matKhauMoiSHA1.equals(khachHang.getMatKhau())) {
						baoLoi = "Mật khẩu mới phải khác mật khẩu hiện tại!";
					} else {
						khachHang.setMatKhau(matKhauMoiSHA1);				
						KhachHangDAO khd = new KhachHangDAO();
						if(khd.changePassword(khachHang)) {
							baoLoi = "Mật khẩu đã thay đổi thành công!";
						} else {
							baoLoi = "Quá trình thay đổi mật khẩu không thành công!";
						}
					}
				}
			}
			request.setAttribute("baoLoi", baoLoi);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void suaHoSo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String tenDangNhap = request.getParameter("tenDangNhap");
			String hoVaTen = request.getParameter("hoVaTen");
			String gioiTinh = request.getParameter("gioiTinh");
			String ngaySinh = request.getParameter("ngaySinh");
			String diaChi = request.getParameter("diaChi");
			String soDienThoai = request.getParameter("soDienThoai");
			String email = request.getParameter("email");
			String dangKyNhanBanTinEmail = request.getParameter("dangKyNhanBanTinEmail");
			
			String url = "/khachhang/HoSo.jsp";
			String baoLoi = "";
			
			KhachHangDAO khd = new KhachHangDAO();
			HttpSession sesion = request.getSession();
			KhachHang khachHang = (KhachHang)sesion.getAttribute("khachHang");
			
			khachHang.setTenDangNhap(tenDangNhap);
			khachHang.setHoVaTen(hoVaTen);
			khachHang.setGioiTinh(gioiTinh);
			khachHang.setNgaySinh(Date.valueOf(ngaySinh));
			khachHang.setDiaChi(diaChi);
			khachHang.setSoDienThoai(soDienThoai);
			khachHang.setEmail(email);
			khachHang.setDangKyNhanBanTinEmail(dangKyNhanBanTinEmail != null);
			
			if(khachHang == null) {
				baoLoi = "Bạn chưa đăng nhập vào hệ thống!";
			} else {
				khd.update(khachHang);
			}
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
