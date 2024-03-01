package util;

import java.security.MessageDigest;

import org.apache.tomcat.util.codec.binary.Base64;

public class MaHoa {
//	md5
//	sha-1: hiện phổ biến hơn md5
	
	public static String toSHA1(String str) {
//		chuỗi linh tinh để encode
		String salt = "ufsdjkfruhglskdnvfl;ksdjfsakf"; 
		String result = null;
		
//		cộng chuỗi để pass phức tạp hơn
		str = str + salt;
		try {
			byte[] dataBytes = str.getBytes("UTF-8");
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			result = Base64.encodeBase64String(md.digest(dataBytes));
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(toSHA1("123456"));
	}
}
