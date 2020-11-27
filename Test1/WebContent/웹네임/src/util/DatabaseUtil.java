package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public static Connection getConnection() {
		//데이터베이스와 연결상태 관리 
		try{ 
			String dbURL = "jdbc:mysql://localhost:3306/user"; 
		    String dbID = "root";
		    String dbPassword = "wq159951";
		    Class.forName("com.mysql.jdbc.Driver");
		    return DriverManager.getConnection(dbURL, dbID, dbPassword); 
		   } catch(Exception e) {
			  e.printStackTrace(); 
		  } 
		  return null; } 
	}
	

