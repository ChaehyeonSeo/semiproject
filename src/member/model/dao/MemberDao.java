package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static common.jdbc.JDBCTemplate.*;

import member.model.vo.MemberVo;

public class MemberDao {
	
	// 회원번호 자동생성
	public int getMaxNo(Connection conn) {
		int result = 0;
		String query = "SELECT (NVL(MAX(CUSTNO),0))+1 FROM MEMBER_TBL_02";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}

	// 회원등록
	public int insert(Connection conn, MemberVo vo) {
		int result = -1;
		String query = "INSERT INTO MEMBER_TBL_02 VALUES ";
		query += " (?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, getMaxNo(conn));
			pstmt.setString(2, vo.getCustName());
			pstmt.setString(3, vo.getPhone());
			pstmt.setString(4, vo.getAddress());
			pstmt.setDate(5, vo.getJoinDate());
			pstmt.setString(6, vo.getGrade());
			pstmt.setString(7, vo.getCity());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
