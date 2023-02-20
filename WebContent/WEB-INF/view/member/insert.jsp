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
	<jsp:include page="/WEB-INF/view/header.jsp"/>
	<section>
	<h1>회원등록</h1>
		<form action="<%=request.getContextPath()%>/insert" method="post">
				회원번호:<input type="text" name="custNo"> 
				<br>
				회원성명:<input type="text" name="custName"> 
				<br>
				회원전화:<input type="text" name="phone"> 
				<br> 
				회원주소:<input type="text" name="address"> 
				<br>
				가입일자:<input type="date" name="joinDate"> 
				<br>
				고객등급:<input type="text" name="grade"> 
				<br>
				도시코드:<input type="text" name="city"> 
				<br>
				<button type="submit">등록</button>
			</form>
	</section>
	<jsp:include page="/WEB-INF/view/footer.jsp"/>
</body>
</html>