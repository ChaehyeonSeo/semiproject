package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static common.jdbc.JDBCTemplate.*;
import member.model.vo.MemberVo;
import member.model.vo.SalesVo;

public class ListDao {

	//회원조회
	public List<MemberVo> getMemberList(Connection conn) {
		List<MemberVo> result = null;
		String query = "SELECT CUSTNO, CUSTNAME, PHONE, ADDRESS, JOINDATE, GRADE, CITY FROM MEMBER_TBL_02";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			result = new ArrayList<MemberVo>();
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				vo.setCustNo(rs.getInt("custno"));
				vo.setCustName(rs.getString("custname"));
				vo.setPhone(rs.getString("phone"));
				vo.setAddress(rs.getString("address"));
				vo.setJoinDate(rs.getDate("joindate"));
				vo.setGrade(rs.getString("grade"));
				vo.setCity(rs.getString("city"));
				result.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		System.out.println("dao:"+result);
		return result;
	}

	public List<SalesVo> getMemberSales(Connection conn) {
		List<SalesVo> result = null;
		String query = "SELECT CUSTNO,"
				+ "(SELECT CUSTNAME FROM MEMBER_TBL_02 WHERE MONEY_TBL_02.CUSTNO = MEMBER_TBL_02.CUSTNO) CUSTNAME,"
				+ "(SELECT GRADE FROM MEMBER_TBL_02 WHERE MONEY_TBL_02.CUSTNO = MEMBER_TBL_02.CUSTNO) GRADE,"
				+ "SUM(PRICE) PRICE FROM MONEY_TBL_02 GROUP BY CUSTNO ORDER BY PRICE DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			result = new ArrayList<SalesVo>();
			while(rs.next()) {
				SalesVo vo = new SalesVo();
				vo.setCustNo(rs.getInt("custno"));
				vo.setCustName(rs.getString("custname"));
				vo.setGrade(rs.getString("grade"));
				vo.setPrice(rs.getInt("price"));
				result.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		System.out.println("dao:"+result);
		return result;
	}	
}
