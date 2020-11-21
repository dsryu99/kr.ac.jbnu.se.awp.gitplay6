package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil; 

public class UserDAO {
	
	public int login(String userid, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userid = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;
				}
				else {
					return 0;
				}
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if(conn != null) conn.close();} catch (Exception e) {e.printStackTrace();}
			try {if(pstmt != null) pstmt.close();} catch (Exception e) {e.printStackTrace();}
			try {if(rs != null) rs.close();} catch (Exception e) {e.printStackTrace();}
		}
		return -2;
		
	}
	
	Connection conn = DatabaseUtil.getConnection();
	
	public int join(String userid, String userPassword, String userName, String userDate, String userInstar) {
		String SQL = "INSERT INTO user VALUES (?,?,?,?,?)";
		try { 
			// 각각의 데이터를 실제로 넣어준다.
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			// 쿼리문의 ?안에 각각의 데이터를 넣어준다.
			pstmt.setString(1, userid);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			pstmt.setString(4, userDate);
			pstmt.setString(5, userInstar);
			// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수
			return pstmt.executeUpdate();
			} catch (Exception e) { 
			e.printStackTrace(); 
			} return -1; 
		} 
	}
		

