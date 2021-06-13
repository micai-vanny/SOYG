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
		padding : 20px;
	}
	
	.user_table {
		padding : 20px;
	}
</style>

<title>회원 전체 목록</title>

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
	
	function userDelete(index){
		
		console.log('인덱스 : ' + index);
		
		let user = document.getElementById('userID' + index).value;
		console.log('보낼 아이디 : ' + user);

		$.ajax({
			url : 'userDelete.do',
			data : { 'userID' : user },
			dataType : 'json',
			type : 'post',
			success : function(resp){
				
				alert('삭제');
				location.reload();
			},
			error : function(err){
				
				console.log(err);
			}
		});
	}
</script>

<section class="hero_single version_2">
	<div class="wrapper">
		<div class="container">
			<h3>What would you learn?</h3>
			<p>Increase your expertise in business, technology and personal
				development</p>
			<form>
				<div id="custom-search-input">
					<div class="input-group">
						<input type="text" class=" search-query"
							placeholder="Ex. Architecture, Specialization..."> <input
							type="submit" class="btn_search" value="Search">
					</div>
				</div>
			</form>
		</div>
	</div>
</section>

	<div class = "user_list">
		<div>
			<h1>회원 목록</h1>
		</div>
		<div>
			<div class = "id_select_window">
				<input type = "text" placeholder = "검색할 아이디 입력" id = "keyword">
			</div>
		</div>
		<div class = "user_table">
			<table id = "user-table" border = "1">
				<thead>
				<tr>
					<th>아이디</th>
					<th>비번</th>
					<th>주소</th>
					<th>이메일</th>
					<th>성별</th>
					<th>폰번</th>
					<th>생일</th>
					<th>기능</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users}" varStatus = "status">
					<tr>
						<td>
							<a href = "userUpdatePage.do">${user.userID }</a>
							<input type = "hidden" id = "userID${status.index }" value = "${user.userID }">
						</td>
						<td>${user.password }</td>
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
		</div>
		<p>페이징 예정</p>
		<p><a href = "#">관리자 홈</a></p>
		<!-- <p><a href = "userControl.do">회원 관리 홈</a></p> -->
	</div>