<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자-모임조회페이지</title>
</head>
<body>
<div align="center">
		<div><h1>모임목록</h1></div>
		<div>
			<c:forEach var="class" items="${class }">
				${class.className } ${class.classCode} ${class.classInfo} ${class.classCode}	<br/>
			</c:forEach>
		</div>
		<a href="#">회원목록</a> 
		<a href="#">홈 가기</a> 
		<a href="#">맴버 추가</a>
	</div>
</body>
</html>