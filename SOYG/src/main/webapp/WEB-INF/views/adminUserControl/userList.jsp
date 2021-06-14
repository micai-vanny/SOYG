<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.user_list {
	display: flex;
	flex-direction: column;
	align-content: center;
	flex-wrap: wrap;
	align-items: center;
}

.id_select_window {
	padding: 20px;
}

.user_table {
	padding: 20px;
}

/* .check_button {
	
	cursor: pointer;
}

.check_modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	display: none;
}

.check_modal_content {
	width: 400px;
	height: 200px;
	background: #fff;
	border-radius: 10px;
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 23px;
	cursor: pointer;
} */
</style>

<title>회원 전체 목록</title>

<script>
	// https://webruden.tistory.com/107
	window.onload = function() {
		$("#keyword").keyup(function() {
			var k = $(this).val();
			$("#user-table > tbody > tr").hide();
			var temp = $("#user-table > tbody > tr > td:nth-child(7n+1):contains('"+ k + "')");
			$(temp).parent().show();
		});
	};

	function userDelete(index) {

		if (confirm("삭제하면 되돌릴 수 없습니다. 계속하시겠습니까?")) {
            // 확인 버튼 클릭 시 동작
			if(confirm("진짜로 삭제합니까?")){
				
				window.alert('삭제했습니다.');
				
				console.log('인덱스 : ' + index);

				let user = document.getElementById('userID' + index).value;
				console.log('보낼 아이디 : ' + user);

				$.ajax({
					url : 'userDelete.do',
					data : {
						'userID' : user
					},
					type : 'post',
					success : function(resp) {
	
						location.reload();
					},
					error : function(err) {
	
						console.log(err);
					}
				});
			}
			
        } else {
            // 취소 버튼 클릭 시 동작
            alert("동작을 취소했습니다.");
        }
		
	}

	/* $(function() {

		$(".check_button").click(function() {
			$(".check_modal").fadeIn();
		});

		$(".check_modal_content").click(function() {
			$(".check_modal").fadeOut();
		});

	}); */
</script>

<section id="hero_in" class="general">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>유저 관리 페이지
			</h1>
		</div>
	</div>
</section>

<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="admin.do">관리자 페이지</a></li>
	<li class="breadcrumb-item active">회원 리스트</li>
</ol>

<div class="user_list">
	<div>
		<div class="id_select_window">
			<input type="text" placeholder="검색할 아이디 입력" id="keyword">
		</div>
	</div>
	<div class="user_table">
		<table id="user-table" border="1">
			<thead>
				<tr>
					<th>아이디</th>
					<th>비번</th>
					<th>이름</th>
					<th>주소</th>
					<th>이메일</th>
					<th>성별</th>
					<th>폰번</th>
					<th>생일</th>
					<th>기능</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}" varStatus="status">
					<tr>
						<%-- onclick = "userDelete(${status.index}) --%>
						<td>
							<a href="userSelect.do?userID=${user.userID }"class="userInfo">${user.userID }</a>
							<input type="hidden"id="userID${status.index }" value="${user.userID }">
						</td>
						<td>${user.password }</td>
						<td>${user.name }</td>
						<td>${user.address }</td>
						<td>${user.email }</td>
						<td>${user.gender }</td>
						<td>${user.phone }</td>
						<td>${user.birth }</td>
						<td><button onclick = "userDelete(${status.index})">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- <div class="check_modal">
			<div class="check_modal_content">
				<h1>삭제한다?</h1>
				<div><button onclick = "userDelete">삭제한다</button></div>
			</div>
		</div> -->
	</div>
	<p>페이징 예정</p>
	<p>
		<a href="admin.do">관리자 홈</a>
	</p>
</div>