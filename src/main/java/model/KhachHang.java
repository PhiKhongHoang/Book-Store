package model;

import java.sql.Date;

public class KhachHang {
	private String maKhachHang;
	private String tenDangNhap;
	private String matKhau;
	private String hoVaTen;
	private String gioiTinh;
	private Date ngaySinh;
	private String diaChi;
	private String soDienThoai;
	private String email;
	private boolean dangKyNhanBanTinEmail;
	
	public KhachHang() {}
	
	public KhachHang(String maKhachHang, String tenDangNhap, String matKhau, String hoVaTen, String gioiTinh,
			Date ngaySinh, String diaChi, String soDienThoai, String email, boolean dangKyNhanBanTinEmail) {
		this.maKhachHang = maKhachHang;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.hoVaTen = hoVaTen;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.dangKyNhanBanTinEmail = dangKyNhanBanTinEmail;
	}

	public String getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(String maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getHoVaTen() {
		return hoVaTen;
	}

	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isDangKyNhanBanTinEmail() {
		return dangKyNhanBanTinEmail;
	}

	public void setDangKyNhanBanTinEmail(boolean dangKyNhanBanTinEmail) {
		this.dangKyNhanBanTinEmail = dangKyNhanBanTinEmail;
	}

	@Override
	public String toString() {
		return "KhachHang [maKhachHang=" + maKhachHang + ", tenDangNhap=" + tenDangNhap + ", matKhau=" + matKhau
				+ ", hoVaTen=" + hoVaTen + ", gioiTinh=" + gioiTinh + ", ngaySinh=" + ngaySinh + ", diaChi=" + diaChi
				+ ", soDienThoai=" + soDienThoai + ", email=" + email + ", dangKyNhanBanTinEmail="
				+ dangKyNhanBanTinEmail + "]";
	}
}
