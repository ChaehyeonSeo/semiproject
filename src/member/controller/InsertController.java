package member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.MemberVo;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/member/insert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int custNo = Integer.parseInt(request.getParameter("custNo"));
		String custName = request.getParameter("custName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String dateString = request.getParameter("joinDate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date joinDate = null;
		try {
			java.util.Date date = (java.util.Date) sdf.parse(dateString);
			joinDate = new java.sql.Date(date.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		
		MemberVo vo = new MemberVo();
		vo.setCustNo(custNo);
		vo.setCustName(custName);
		vo.setPhone(phone);
		vo.setAddress(address);
		vo.setJoinDate(joinDate);
		vo.setGrade(grade);
		vo.setCity(city);
		
		int result = new MemberService().insert(vo);
		
		if (result < 1) {
			System.out.println("회원가입실패");
		} else {
			System.out.println("회원가입성공");
			response.sendRedirect(request.getContextPath()+"/insert");
		}
	}

}
