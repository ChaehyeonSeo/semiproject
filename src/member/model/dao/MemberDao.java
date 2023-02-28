package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static common.jdbc.JDBCTemplate.*;

import member.model.vo.MemberVo;

public class MemberDao {

	// 회원등록
	public int insert(Connection conn, MemberVo vo) {
		int result = -1;
		String query = "INSERT INTO MEMBER VALUES ";
		query += " ((SELECT MAX(CUSTNO)+1 FROM MEMBER)"
				+ ",?,?,?,?,?,?)";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, vo.getCustName());
			pstmt.setString(2, vo.getPhone());
			pstmt.setString(3, vo.getAddress());
			pstmt.setDate(4, vo.getJoinDate());
			pstmt.setString(5, vo.getGrade());
			pstmt.setString(6, vo.getCity());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}
