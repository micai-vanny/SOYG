<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
<x:formatDate value='${classes.start_date}' pattern='yyyy-MM-dd' var="start_date"/>

<style>
.wrap {
	margin-inline: 10%;
}

.course_list {
	strong: strong;
}
.image{
	width: 60%;
	margin-bottom: 50px;
}
</style>
<script>
function select(class_code){
	location.href = "adminClassUpdateView.do?class_code=" + class_code;
	}
</script>

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
<div class="wrap">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="admin.do">관리자페이지</a></li>
		<li class="breadcrumb-item"><a href="adminClassList.do">스터디 리스트</a></li>
		<li class="breadcrumb-item active">스터디 조회</li>
	</ol>
	<div class="box_general padding_bottom">
		<div class="header_box version_2">
			<h2 class="d-inline-block">class code - ${classes.class_code}</h2>
		</div>
		<div class="list_general">
			<ul>
				<li>
					<img class="image" src="<spring:url value='/resources/classImage/${classes.class_image }'/>">

					<h4>${classes.class_name }
						<i class="pending">${classes.class_startchk }</i>
					</h4>
					<ul class="course_list">
						<li><h6>[스터디코드]</h6> ${classes.class_code }</li>
						<li><h6>[스터디명] ${classes.class_name }</h6></li>
						<li><h6>[분야분류] ${classes.field_code }</h6></li>
						<li><h6>[지역코드]</h6> ${classes.loc_code }</li>
					</ul>
					<hr>
					<ul class="course_list">
						<li><h6>[시작일]</h6> ${start_date }</li>
						<li><h6>[주중/주말]</h6> ${classes.weekdays_chk }</li>
						<li><h6>[스터디 시간]</h6> ${classes.class_time }</li>
						<li><h6>[활성/비활성]</h6>${classes.class_active }</li>
						<li><h6>[시작여부]</h6> ${classes.class_startchk }</li>
						<li><h6>[정원]</h6>${classes.class_personnel }</li>
					</ul>
					<hr>
					<h6>[스터디 설명]</h6>
					<p>${classes.class_info }</p>
					<ul align="right" class="buttons">
						<li><a onclick="select(${classes.class_code })"
							class="btn_1 gray approve"><i
								class="fa fa-fw fa-check-circle-o"></i> 수정</a></li>
						<li><a onclick="deleteCheck()" class="btn_1 gray delete"><i
								class="fa fa-fw fa-times-circle-o"></i> 삭제</a></li>
					</ul>
				</li>

			</ul>
		</div>
	</div>
</div>
<!-- 삭제 -->
<script>
function deleteCheck(class_code){
	if(confirm("삭제하시겠습니까?") == true){
		location.href = "adminClassDelete.do?class_code="+class_code;
	} else {
		return false;
	}
}
</script>