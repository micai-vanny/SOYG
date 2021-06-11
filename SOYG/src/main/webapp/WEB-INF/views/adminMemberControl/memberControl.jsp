<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원 관리 페이지</title>
<script>

	// 회원 전체 조회 페이지로 이동
	function memberList() {

		location.href("memberList.do");
	}
	
	// 회원 하나 검색 페이지로 이동 ~> 이동할 게 아니라 검색창을 쓰도록 해야 하나?
	function memberSelect() {

		location.href("memberSelect.do");
	}

	// 회원 등록 페이지로 이동
	function memberInsert() {

		location.href("memberInsert.do");
	}

	// 회원 정보 수정 페이지로 이동
	function memberUpdate() {

		location.href("memberUpdate.do");
	}

	// 회원 삭제 페이지로 이동
	function memberDelete() {

		location.href("memberDelete.do");
	}
</script>
</head>
<body>

	<!-- 뼈대 -->

	<div class="" align="center">

		<h1>회원 관리 페이지</h1>

		<div>
			<button onclick="memberList()" value="회원 전체 조회"></button>
		</div>
		<div>
			<button onclick="memberSelect" value="회원 하나 조회"></button>
		</div>
		<div>
			<button onclick="memberInsert" value="회원 정보 입력"></button>
		</div>
		<div>
			<button onclick="memberUpdate" value="회원 정보 수정"></button>
		</div>
		<div>
			<button onclick="memberDelete" value="회원 삭제"></button>
		</div>

	</div>
</body>
</html>