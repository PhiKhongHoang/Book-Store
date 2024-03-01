package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.KhachHang;

public class KhachHangDAO implements DAO<KhachHang> {

	@Override
	public ArrayList<KhachHang> selectAll() {
		ArrayList<KhachHang> ketQua = new ArrayList<KhachHang>();
		try {
//			bước 1: tạo conn
			Connection conn = JDBCUtil.getConnection();
			
//			bước 2: tạo statement
			String sql = "select * from khachhang";
			PreparedStatement pst = conn.prepareStatement(sql);
			
//			bước 3: thực thi sql
			ResultSet rs = pst.executeQuery();
			
//			bước 4: truy vấn kết quả
			while(rs.next()) {
				String maKhachHang = rs.getString(1);
				String tenDangNhap = rs.getString(2);
				String matKhau = rs.getString(3);
				String hoVaTen = rs.getString(4);
				String gioiTinh = rs.getString(5);
				Date ngaySinh = rs.getDate(6);
				String diaChi = rs.getString(7);
				String soDienThoai = rs.getString(8);
				String email = rs.getString(9);
				boolean dangKyNhanBanTinEmail = rs.getBoolean(10);
				
				KhachHang khachHang = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, ngaySinh, diaChi, soDienThoai, email, dangKyNhanBanTinEmail);
				ketQua.add(khachHang);
			}
			
//			bước 5: đóng conn
			JDBCUtil.closeConnection(conn);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return ketQua;
	}

	@Override
	public KhachHang selectById(KhachHang e) {
		KhachHang ketQua = null;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "select * from khachhang where maKhachHang = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getMaKhachHang());
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String maKhachHang = rs.getString(1);
				String tenDangNhap = rs.getString(2);
				String matKhau = rs.getString(3);
				String hoVaTen = rs.getString(4);
				String gioiTinh = rs.getString(5);
				Date ngaySinh = rs.getDate(6);
				String diaChi = rs.getString(7);
				String soDienThoai = rs.getString(8);
				String email = rs.getString(9);
				boolean dangKyNhanBanTinEmail = rs.getBoolean(10);
				
				ketQua = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, ngaySinh, diaChi, soDienThoai, email, dangKyNhanBanTinEmail);
			}
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		
		return ketQua;
	}

	@Override
	public int insert(KhachHang e) {
		int ketQua = 0;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "insert into khachhang values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getMaKhachHang());
			pst.setString(2, e.getTenDangNhap());
			pst.setString(3, e.getMatKhau());
			pst.setString(4, e.getHoVaTen());
			pst.setString(5, e.getGioiTinh());
			pst.setDate(6, e.getNgaySinh());
			pst.setString(7, e.getDiaChi());
			pst.setString(8, e.getSoDienThoai());
			pst.setString(9, e.getEmail());
			pst.setBoolean(10, e.isDangKyNhanBanTinEmail());
			
			ketQua = pst.executeUpdate();
			
			System.out.println(sql);
			
			JDBCUtil.closeConnection(conn);
			
		} catch (Exception e1) {
			// TODO: handle exception
			e1.printStackTrace();
		}
		return ketQua;
	}

	@Override
	public int insertAll(ArrayList<KhachHang> arr) {
		int ketQua = 0;
		for (KhachHang khachHang : arr) {
			ketQua += insert (khachHang);
		}
		return ketQua;
	}

	@Override
	public int update(KhachHang e) {
		int ketQua = 0;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "update khachhang set "
					+ "tenDangNhap = ?, hoVaTen = ?, gioiTinh = ?, ngaySinh = ?,"
					+ "diaChi = ?, soDienThoai = ?, email= ?, dangKyNhanBanTinEmail = ? "
					+ " where maKhachHang = ?";
			
			PreparedStatement pst = conn.prepareStatement(sql);	
			pst.setString(1, e.getTenDangNhap());		
			pst.setString(2, e.getHoVaTen());
			pst.setString(3, e.getGioiTinh());
			pst.setDate(4, e.getNgaySinh());
			pst.setString(5, e.getDiaChi());
			pst.setString(6, e.getSoDienThoai());
			pst.setString(7, e.getEmail());
			pst.setBoolean(8, e.isDangKyNhanBanTinEmail());
			pst.setString(9, e.getMaKhachHang());
			
			ketQua = pst.executeUpdate();

			System.out.println(sql);
			
			JDBCUtil.closeConnection(conn);
			
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		
		return ketQua;
	}

	@Override
	public int delete(KhachHang e) {
		int ketQua = 0;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "delete form khachhang where maKhachHang = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, e.getMaKhachHang());
			
			ketQua = pst.executeUpdate();
			
			System.out.println(sql);
			
			JDBCUtil.closeConnection(conn);
			
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		
		return ketQua;
	}

	@Override
	public int deleteAll(ArrayList<KhachHang> arr) {
		int ketQua = 0;
		for (KhachHang khachHang : arr) {
			ketQua += delete(khachHang);
		}
		
		return ketQua;
	}
	
	public boolean kiemTraTenDangNhap(String tenDangNhap) {
		boolean ketQua = false;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "select * from khachhang where tenDangNhap = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, tenDangNhap);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				ketQua = true;
				break;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return ketQua;
	}
	
	public KhachHang checkUser(String username, String password) {
		KhachHang ketQua = null;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "select * from khachhang where tenDangNhap = ? and matKhau = ? ";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String maKhachHang = rs.getString(1);
				String tenDangNhap = rs.getString(2);
				String matKhau = rs.getString(3);
				String hoVaTen = rs.getString(4);
				String gioiTinh = rs.getString(5);
				Date ngaySinh = rs.getDate(6);
				String diaChi = rs.getString(7);
				String soDienThoai = rs.getString(8);
				String email = rs.getString(9);
				boolean dangKyNhanBanTinEmail = rs.getBoolean(10);
				
				ketQua = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, ngaySinh, diaChi, soDienThoai, email, dangKyNhanBanTinEmail);		
				break;
			}
			
			System.out.println(sql);
			
			JDBCUtil.closeConnection(conn);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return ketQua;
	}
	
	public boolean changePassword(KhachHang e) {
		int ketQua = 0;
		try {
			Connection conn = JDBCUtil.getConnection();
			
			String sql = "update khachhang set "
					+ "matKhau = ? "
					+ " where maKhachHang = ? ";
			
			PreparedStatement pst = conn.prepareStatement(sql);			
			pst.setString(1, e.getMatKhau());
			pst.setString(2, e.getMaKhachHang());
			
			ketQua = pst.executeUpdate();

			System.out.println(sql);
			
			JDBCUtil.closeConnection(conn);		
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
		
		return ketQua > 0;
	}

}
