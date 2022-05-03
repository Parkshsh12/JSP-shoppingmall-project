package dbconnect;

import java.sql.*;


public class DBconn {
	
	public Connection Connect() {
		Connection conn = null;
		
		try{
			String url = "jdbc:mysql://localhost:3306/webmarketdb?useSSL=false";
			String user = "root";
			String password = "1234";
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, user, password);
			
		} catch(SQLException ex){
			System.out.println("데이터베이스 연결이 실패했습니다.<br>");
			System.out.println("SQLException:" + ex.getMessage());
		}
		return conn;
	}
}
