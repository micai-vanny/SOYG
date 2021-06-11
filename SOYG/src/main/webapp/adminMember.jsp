<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원 관리 페이지</title>
<script>
	function memberList(){
		
		location.href("memberList.do");
	}
	
	function memberSelect(){
		
		location.href("memberSelect.do");
	}
	
	function memberInsert(){
	
	location.href("memberInsert.do");
}

	function memberUpdate(){
	
	location.href("memberUpdate.do");
}

	function memberDelete(){
	
	location.href("memberDelete.do");
}
</script>
</head>
<body>

	<!-- 뼈대 -->

	<div class = "" align = "center">
	
		<h1>회원 관리 페이지</h1>
		
		<div>
			<button onclick = "memberList()" value = "회원 전체 조회"></button>
		</div>
		<div>
			<button onclick = "memberSelect" value = "회원 하나 조회"></button>
		</div>
		<div>
			<button onclick = "memberInsert" value = "회원 정보 입력"></button>
		</div>
		<div>
			<button onclick = "memberUpdate" value = "회원 정보 수정"></button>
		</div>
		<div>
			<button onclick = "memberDelete" value = "회원 삭제"></button>
		</div>
		
	</div>
</body>
</html>