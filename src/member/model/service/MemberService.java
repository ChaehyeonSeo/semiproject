package member.model.service;

import java.sql.Connection;
import member.model.dao.MemberDao;
import member.model.vo.MemberVo;
import static common.jdbc.JDBCTemplate.*;

public class MemberService {
	public static int getMaxNo() {
		int result = 0;
		Connection conn = getConnection();
		result = new MemberDao().getMaxNo(conn);
		close(conn);
		return result;
	}

	public int insert(MemberVo vo) {
		int result = -1;
		Connection conn = getConnection();
		result = new MemberDao().insert(conn, vo);
		close(conn);
		return result;
	}
	

}
