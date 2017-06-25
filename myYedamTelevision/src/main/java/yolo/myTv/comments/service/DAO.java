package yolo.myTv.comments.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	
	public Connection connect() throws Exception {
		//1. 드라이버로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2. DB 연결
		String url= "jdbc:oracle:thin:@192.168.0.14:1521:xe";
		Connection conn = DriverManager.getConnection(url, "yolo", "yolo");
		
		return conn;
	}
	
	public void disconnect(Connection conn) {
		if ( conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
