<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<x:formatDate value='${classes.start_date}' pattern='yyyy-MM-dd' var="start_date"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<style>
.wrap {
	margin-inline: 10%;
}
.course_list{
	strong: strong;
}
.textarea{
	width:500px;
	height: 200px;
}
.select_img img{
	margin: 20px 0;
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
<input type="hidden" name="imageArea" value="${classes.class_image }">
<div class="wrap">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="admin.do">관리자페이지</a></li>
		<li class="breadcrumb-item"><a href="adminClassList.do">스터디 리스트</a></li>
		<li class="breadcrumb-item active">class수정</li>
	</ol>
	<div class="box_general padding_bottom">
		<div class="header_box version_2">
			<h2 class="d-inline-block">Study code - ${classes.class_code}</h2>
		</div>
			<ul>
				<li>
					<h4>${classes.class_name }
						<i name="class_startchk" class="pending">${classes.class_startchk }</i>
					</h4>
					
					<!-- 이미지ㅇㅇ -->
					<div class="inputArea">
						<label for="image">이미지</label>
						<input type="file" id="image" name="file" />
						<div class="select_img"><img src="/resources/classImage/${classes.class_image }"></div>
					<script>
						$("#image").change(function(){
							if(this.files && this.files[0]){
								var reader = new FileReader;
								reader.onload = function(data){
									$(".select_img img").attr("src", data.target.result).width(400);
								}
								reader.readAsDataURL(this.files[0]);
							}
						})
					</script>
					</div>
					
					<ul class="course_list">
					
						<li><h6>스터디코드</h6><input name="class_code" value="${classes.class_code }"></li>
						<li><h6>스터디명</h6><input name="class_name" value="${classes.class_name }"></li>
						<li><h6>분야분류</h6><input name="field_code" value="${classes.field_code }"></li>
						<li><h6>지역코드</h6><input name="loc_code" value="${classes.loc_code }"></li>
					</ul>
					<hr>
					<ul class="course_list">
						<li><h6>시작일</h6><input name="start_date" value="${start_date}"></li>
						<li><h6>주중/주말</h6>
							<input type="radio" name="weekdays_chk" value="${classes.weekdays_chk }" <c:if test="${classes.weekdays_chk eq 'W' }" >checked</c:if> >주중
							<input type="radio" name="weekdays_chk" value="${classes.weekdays_chk }" <c:if test="${classes.weekdays_chk eq 'E' }" >checked</c:if> >주말
						</li>
						<li><h6>스터디 시간</h6><input name="class_time" value="${classes.class_time }"></li>
						<li><h6>활성/비활성</h6>
							<input type="radio" name="class_active" value="${classes.class_active }" <c:if test="${classes.class_active eq 'A' }" >checked</c:if> >활성
							<input type="radio" name="class_active" value="${classes.class_active }" <c:if test="${classes.class_active eq 'I' }" >checked</c:if> >비활성
						</li>
						<li><h6>시작여부</h6>
							<input type="radio" name="class_startchk" value="${classes.class_startchk }" <c:if test="${classes.class_startchk  eq 'R' }" >checked</c:if>>모집중
							<input type="radio" name="class_startchk" value="${classes.class_startchk }" <c:if test="${classes.class_startchk  eq 'O' }" >checked</c:if>>진행중
							<input type="radio" name="class_startchk"value="${classes.class_startchk }" <c:if test="${classes.class_startchk  eq 'E' }" >checked</c:if>>모집종료

						</li>
						<li><h6>정원</h6><input name="class_personnel" value="${classes.class_personnel }"></li>
					</ul>
					<hr>
					<h6>스터디 설명</h6>
					<p><textarea name="class_info" class="textarea">${classes.class_info }</textarea></p>
					<ul align="right" class="buttons">
						<li><button onclick="update()" class="btn_1 gray approve"><i
								class="fa fa-fw fa-check-circle-o"></i>수정완료</button></li>
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
		location.href = "adminClassDelete.do?class_code=" + class_code;
	}else {
		return false;
	}
}
function update(class_code){
	var value = CKEDITOR.instances['imageArea'].getData();
	${classes.class_image} = CKEDITOR.instances.imageArea.getData();
	System.out.println(class_image);
	
	update.submit();
}


$(":input:radio[name=name]:checked").val();
</script>