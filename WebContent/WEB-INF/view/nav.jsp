<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="nav">
		<a class="nav-link" href='<%=request.getContextPath()%>/insert'>회원등록</a> 
		<a class="nav-link" href="<%=request.getContextPath()%>/list">회원목록조회/수정</a> 
		<a class="nav-link" href="<%=request.getContextPath()%>/sales">회원매출조회</a>
		<a class="nav-link" href="<%=request.getContextPath()%>/">홈으로.</a>
	</nav>
</body>
</html>