<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.wrap {
	margin-inline: 10%;
}
.course_list{
	strong: strong;
}
.textarea{
	width:500px;
	height: 400px;
}
</style>

<section id="hero_in" class="general">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>스터디 관리 페이지
			</h1>
		</div>
	</div>
</section>
<!--/hero_in-->

<!--class한건 조회-->
<form name="update" method="post" action="adminClassUpdate.do">
<div class="wrap">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="admin.do">관리자페이지</a></li>
		<li class="breadcrumb-item active">class조회</li>
	</ol>
	<div class="box_general padding_bottom">
		<div class="header_box version_2">
			<h2 class="d-inline-block">class code: ${classes.class_code}</h2>
		</div>
		<div class="list_general">
			<ul>
				<li>
					<figure>
						<img src="img/course_1.jpg" alt="">
					</figure>
					<h4>${classes.class_name }
						<i class="pending">${classes.class_startchk }</i>
					</h4>
					<ul class="course_list">
						<li><h6>스터디코드</h6><input value=" ${classes.class_code }"></li>
						<li><h6>스터디명</h6><input value="  ${classes.class_name }"></li>
						<li><h6>분야분류</h6><input value="  ${classes.field_code }"></li>
						<li><h6>지역코드</h6><input value="  ${classes.loc_code }"></li>
					</ul>
					<hr>
					<ul class="course_list">
						<li><h6>시작일</h6><input value=" ${classes.start_date }"></li>
						<li><h6>활성/비활성</h6><input value="${classes.class_active }"></li>
						<li><h6>시작여부</h6><input value=" ${classes.class_startchk }"></li>
						<li><h6>정원</h6><input value="${classes.class_personnel }"></li>
					</ul>
					<hr>
					<h6>스터디 설명</h6>
					<p><textarea class="textarea">${classes.class_info }</textarea></p>
					<ul align="right" class="buttons">
						<li><a type="submit" class="btn_1 gray approve"><i
								class="fa fa-fw fa-check-circle-o"></i> 수정완료</a></li>
						<li><button  onclick="deleteCheck();" class="btn_1 gray delete"> 삭제</button></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
</form>

<!-- 수정/삭제 -->
<script>
function deleteCheck(class_code){
	if(confirm("삭제하시겠습니까?") == true){
		location.href = "adminClassDelete.do?class_code=" +class_code;
	}
}
</script>