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
			<div>
				<label for="valid01" class="form-label">회원성명</label> 
				<input type="text" name="custName" class="form-control" id="valid01" required>
			</div>
			<div>
				<label for="valid02" class="form-label">회원전화</label> 
				<input type="text" name="phone" class="form-control" id="valid02" required>
			</div>
			<div>
				<label for="valid03" class="form-label">회원주소</label> 
				<input type="text" name="address" class="form-control" id="valid03" required>
			</div>
			<div>
				<label for="valid04" class="form-label">가입일자</label>
				<input type="date" name="joinDate" class="form-date" id="valid04" required> 
			</div>
			<div>
				<label for="valid05" class="form-label">고객등급</label>
				<select name="grade" class="form-select" id="valid05" required>
					<option selected disabled value="">선택</option>
					<option label="A: VIP">A</option>
					<option label="B: 일반">B</option>
					<option label="C: 직원">C</option>
				</select>
			</div>
			<div>
				<label for="valid06" class="form-label">도시코드</label>
				<select name="city" class="form-select" id="valid06" required>
					<option selected disabled value="">선택</option>
					<option>01</option>
					<option>02</option>
					<option>03</option>
				</select>
			</div>
			<div>
				<button type="submit">등록</button>
			</div>
			<div>
				<button type="button" onclick="location.href='<%=request.getContextPath()%>/list'">조회</button>
			</div>
		</form>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/view/footer.jsp" />
	</footer>
</body>
</html>