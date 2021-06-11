<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원 관리 페이지</title>
</head>
<body>

	<!-- 뼈대 -->

	<div class="" align="center">

		<h1>회원 관리 페이지</h1>

		<div>
		<br><br><br>
			<button onclick = "location.href = 'userList.do'">회원 전체 조회</button>
		</div>
		<div>
			<button onclick = "location.href = 'userSelect.do'">회원 하나 조회</button>
		</div>
		<div>
			<button onclick = "location.href = 'userInsertPage.do'">회원 정보 입력</button>
		</div>
		<div>
			<button onclick = "location.href = 'userUpdatePage.do'">회원 정보 수정</button>
		</div>
		<div>
			<button onclick = "location.href = 'userDeletePage.do'" >회원 삭제</button>
		</div>

	</div>
</body>
</html>