<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전체 목록</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>회원 목록</h1>
		</div>
		<div>
			<table>
				<c:forEach var="member" items="${members}">
					<tr>
						<td>${member.userID }</td>
						<td>${member.password }</td>
						<td>${member.address }</td>
						<td>${member.email }</td>
						<td>${member.gender }</td>
						<td>${member.phone }</td>
						<td>${member.birth }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<p><a href = "#"></a>관리자 홈</p>
		<p><a href = "memberControl.do">회원 관리 홈</a></p>
	</div>
</body>
</html>