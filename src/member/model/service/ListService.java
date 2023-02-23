package member.model.service;

import static common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import member.model.dao.ListDao;
import member.model.vo.MemberVo;
import member.model.vo.SalesVo;

public class ListService {

	public List<MemberVo> getMemberList() {
		List<MemberVo> result = null;
		Connection conn = getConnection();
		result = new ListDao().getMemberList(conn);
		System.out.println("srv:"+ result);
		close(conn);
		return result;
	}
	public List<SalesVo> getMemberSales() {
		List<SalesVo> result = null;
		Connection conn = getConnection();
		result = new ListDao().getMemberSales(conn);
		System.out.println("srv:"+ result);
		close(conn);
		return result;
	}
}
