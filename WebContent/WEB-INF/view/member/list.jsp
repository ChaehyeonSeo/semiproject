<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/view/header.jsp" />
		<jsp:include page="/WEB-INF/view/nav.jsp" />
	</header>
	<section>
		<h1>회원목록조회</h1>
		<table>
			<tr>
				<td>회원번호</td>
				<td>회원성명</td>
				<td>회원전화</td>
				<td>회원주소</td>
				<td>가입일자</td>
				<td>고객등급</td>
				<td>도시코드</td>
			</tr>
			<c:forEach items="${memberlist }" var="vo" varStatus="s">
				<tr>
					<td><a href="#">${ vo.custNo }</a></td>
					<td>${ vo.custName }</td>
					<td>${ vo.phone }</td>
					<td>${ vo.address }</td>
					<td>${ vo.joinDate }</td>
					<td>${ vo.grade }</td>
					<td>${ vo.city }</td>
				</tr>
			</c:forEach>
		</table>
		<footer>
			<jsp:include page="/WEB-INF/view/footer.jsp" />
		</footer>
	</section>
</body>
</html>