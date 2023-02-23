<%@page import="member.model.service.MemberService"%>
<%@page import="java.sql.Connection"%>
<%@page import="member.model.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/view/header.jsp"/>
		<jsp:include page="/WEB-INF/view/nav.jsp"/>
	</header>
	<section>
	<h1>홈쇼핑 회원 등록</h1>
		<form action="<%=request.getContextPath()%>/insert" method="post">
			<table>
				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custName"> <br></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone"> <br></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="address"> <br></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="date" name="joinDate"> <br></td> 
				</tr>
				<tr>
					<td>고객등급</td>
					<td><input type="text" name="grade"> <br></td> 
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city"> <br></td>
				</tr>
			</table>
			<button type="submit">등록</button>
		</form>
		<button onclick="location.href='<%=request.getContextPath()%>/list'">조회</button>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/view/footer.jsp" />
	</footer>
</body>
</html>