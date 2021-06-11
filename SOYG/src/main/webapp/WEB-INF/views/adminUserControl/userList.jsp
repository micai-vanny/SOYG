<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전체 목록</title>
</head>
<script>

	// https://webruden.tistory.com/107
	window.onload = function(){
		$("#keyword").keyup(function(){
			var k = $(this).val();
			$("#user-table > tbody > tr").hide();
			var temp = $("#user-table > tbody > tr > td:nth-child(7n+1):contains('" + k + "')");
			
			$(temp).parent().show();
		});
	};
</script>

<body>
<br><br><br><br>
	<div align="center">
		<div>
			<h1>회원 목록</h1>
		</div>
		<div>
			<div>
				<input type = "text" placeholder = "아이디 입력" id = "keyword">
			</div>
		</div>
		<div>
			<table id = "user-table">
				<thead>
				<tr>
					<th>아이디</th>
					<th>비번</th>
					<th>주소</th>
					<th>이메일</th>
					<th>성별</th>
					<th>폰번</th>
					<th>생일</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.userID }</td>
						<td>${user.password }</td>
						<td>${user.address }</td>
						<td>${user.email }</td>
						<td>${user.gender }</td>
						<td>${user.phone }</td>
						<td>${user.birth }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<p><a href = "#">관리자 홈</a></p>
		<p><a href = "userControl.do">회원 관리 홈</a></p>
	</div>
</body>
</html>