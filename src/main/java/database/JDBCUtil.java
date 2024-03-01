package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
	public static Connection getConnection() {
		Connection conn = null;
		try {
//			bước 1: đăng ký driver
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
//			bước 2: các thông số
			String url = "jdbc:mysql://localhost:3306/bookstore";
			String username = "root";
			String password = "";
			
//			bước 3: tạo kết nối
			conn = DriverManager.getConnection(url, username, password);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConnection(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
