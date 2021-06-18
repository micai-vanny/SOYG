<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.wrap {
	margin-top: 50px;
}
.row2 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: nowrap;
    margin-right: -15px;
    margin-left: -15px;
    justify-content: space-evenly;
    /* flex-direction: row; */
}
</style>


	
	<main>
	<section id="hero_in" class="general">
		<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp"><span></span>관리자 페이지</h1>
		</div>
		</div>
	</section>
	<!--/hero_in-->

<c:choose>
	<c:when test = "${id eq 'admin'}">
		<div align="center"  class="container margin_60_35">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>관리자</h2>
				<p> . </p>
			</div>
			<div class="row2">
				<div class="col-lg-4 col-md-6">
					<a class="box_topic" href="adminClassList.do">
						<span><i class="pe-7s-notebook"></i></span>
						<h3>스터디모임 관리</h3>
						<p>스터디모임조회/수정/삭제</p>
					</a>
				</div>
				<div class="col-lg-4 col-md-6">
					<a class="box_topic" href="userListPaging.do">
						<i class="pe-7s-study"></i>
						<h3>회원관리</h3>
						<p>회원 조회/수정/삭제</p>
					</a>
				</div>
	
			</div>
			<!--/row-->
		</div>
	</c:when>
	<c:otherwise>
		<h1 style = "text-align : center;">정상적인 방법으로 접근하시오.</h1>
	</c:otherwise>
</c:choose>
		
		<!-- /bg_color_1 -->
	</main>
	<!--/main-->