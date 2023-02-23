<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/view/header.jsp"/>
		<jsp:include page="/WEB-INF/view/nav.jsp"/>
	</header>
	<section>
		회원매출조회
		<table>
			<tr>
				<td>회원번호</td>
				<td>회원성명</td>
				<td>고객등급</td>
				<td>매출</td>
			</tr>
			<c:forEach items="${saleslist }" var="vo" varStatus="s">
				<tr>
					<td>${ vo.custNo }</td>
					<td>${ vo.custName }</td>
					<td>${ vo.grade }</td>
					<td>${ vo.price }</td>
				</tr>
			</c:forEach>
			
		</table>
	
	</section>
	<jsp:include page="/WEB-INF/view/footer.jsp"/>
</body>
</html>