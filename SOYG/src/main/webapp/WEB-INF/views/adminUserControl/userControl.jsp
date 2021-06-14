<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
	뼈대.
	
	폐기 고려.
	
	전체 조회 상태에서 회원 정보 옆에 기능 버튼을 출력해 클릭시 이벤트를 발생시키는 쪽이 훨씬 낫지 않을까.
-->

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

<div class="" align="center">

	<h1>회원 관리 페이지</h1>

	<div>
		<button onclick="location.href = 'userList.do'">회원 전체 조회</button>
	</div>
	<div>
		<button onclick="location.href = 'userSelect.do'">회원 하나 조회</button>
	</div>
	<div>
		<button onclick="location.href = 'userInsertPage.do'">회원 정보
			입력</button>
	</div>
	<div>
		<button onclick="location.href = 'userUpdatePage.do'">회원 정보
			수정</button>
	</div>
	<div>
		<button onclick="location.href = 'userDeletePage.do'">회원 삭제</button>
	</div>

</div>


