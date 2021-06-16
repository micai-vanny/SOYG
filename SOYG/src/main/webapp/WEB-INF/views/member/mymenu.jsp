<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script text="javascript/text">
	$(document)
			.ready(
					function() {

						$('.box')
								.each(
										function() {
											var content = $(this).children(
													'.content');
											var content_txt = content.text();
											var content_txt_short = content_txt
													.substring(0, 200)
													+ "...";
											var btn_more = $('<a href="javascript:void(0)" class="more">더보기</a>');

											$(this).append(btn_more);

											if (content_txt.length >= 100) {
												content.html(content_txt_short)

											} else {
												btn_more.hide()
											}

											btn_more.click(toggle_content);
											// 아래 bind가 안 되는 이유는??
											// btn_more.bind('click',toggle_content);

											function toggle_content() {
												if ($(this).hasClass('short')) {
													// 접기 상태
													$(this).html('더보기');
													content
															.html(content_txt_short)
													$(this)
															.removeClass(
																	'short');
												} else {
													// 더보기 상태
													$(this).html('접기');
													content.html(content_txt);
													$(this).addClass('short');

												}
											}
										});
					});
</script>
<script>
    $('a[href="#ex1"]').click(function(event) {
      event.preventDefault();
 
      $(this).modal({
        fadeDuration: 250
      });
    });
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<section id="hero_in" class="general">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>내 정보보기
			</h1>
		</div>
	</div>
</section>
<!--/hero_in-->
<div class="container margin_60_35">
	<div class="row">
		<aside class="col-lg-3" id="sidebar">
			<div class="profile">
				<figure>
					<img
						src="http://via.placeholder.com/150x150/ccc/fff/teacher_2_small.jpg"
						alt="Teacher" class="rounded-circle">
				</figure>
				<ul>
					<li>Name / BirthDay <span class="float-right">${info.name }
							${info.birth }</span>
					</li>
					<li>MYPHONE <span class="float-right">${info.phone }</span></li>
					<li style="text-align: center"><a
						href="infomationUpdatepage.do">정보수정하기</a></li>
				</ul>
			</div>
		</aside>
		<!--/aside -->

		<div class="col-lg-9">
			<div class="box_teacher">
				<div class="indent_title_in">
					<i class="pe-7s-user"></i>
					<h3>내가 바로 스터디장!</h3>
				</div>
				<c:forEach var="classlist" items="${classlist }">
					<div style="padding-bottom: 50">
						<div class="wrapper_indent">
							<h5>${classlist.class_name }</h5>

							<strong style="float: left">스터디 설명</strong> <a class="btn" href="#ex1"
								rel="modal:open" style="margin-left: 500px">수정하기</a>
							<div id="ex1" class="modal">
								<h3>${classlist.class_name }의정보수정!</h3>
								<form id="updateStudyInfo" action="" method="post">
									<div class="step">
										<div class="form-group" style="flex">
										<p>스터디명</p>
											<input type="text" name="userId" id="userId"
												class="form-control required" value="${classlist.class_name }">
										</div>
										<div class="form-group">
											<input type="text" name="name" id="name"
												class="form-control required" value="${classlist.class_info }">
										</div>
										<div class="form-group">
											<input type="email" name="email" id="email"
												class="form-control required" value="${classlist.class_active }"
												placeholder="Your Email">
										</div>
										<div class="form-group">
											<input type="text" name="phone" id="phone"
												class="form-control" value="${classlist.class_time }"
												placeholder="Your Telephone">
										</div>
										<div class="form-group">
											<input type="text" name="birth" id="birth"
												class="form-control" value="${classlist.class_personnel }"
												placeholder="BirthDay">
										</div>
										<button type="submit" name="process" class="submit">정보수정하기!</button>

									</div>
								</form>
								<a href="#" rel="modal:close">닫기</a>
							</div>
							<hr>
							<div class="box">
								<div class="content">
									<p>${classlist.class_info }</p>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-6">
									<ul class="list_3">

										<li><strong>모집 여부</strong> <c:choose>
												<c:when test="${classlist.class_active eq 'A' }">
													<p>
														<font color="red">모집중</font>
													</p>
												</c:when>
												<c:otherwise>
													<p>
														<font color="black">모집완료</font>
													</p>
												</c:otherwise>
											</c:choose></li>

										<li><strong>스터디 개설날짜</strong>
											<p>${classlist.start_date }</p></li>
										<li><strong>활동시간</strong>
											<p>${classlist.class_time }</p></li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_3">
										<li><strong>활동지역</strong>
											<p>${classlist.city }</p></li>
										<li><strong>주중활동여부</strong> <c:choose>

												<c:when test="${classlist.weekdays_chk eq 'W' }">
													<p>주중에도 활동</p>
												</c:when>
												<c:otherwise>
													<p>주말에만 활동</p>
												</c:otherwise>
											</c:choose></li>
										<li><strong>정원</strong>
											<p>${classlist.class_personnel}</p></li>
									</ul>
								</div>
							</div>
							<!-- End row-->
						</div>
					</div>
					<hr class="styled_2" style="border-color: #b36060;">
				</c:forEach>


				<!--wrapper_indent -->
				<hr class="styled_2">
				<div class="indent_title_in">
					<i class="pe-7s-display1"></i>
					<h3>내가 가입한 스터디!</h3>
					<p>내가 모입에 가입한 내역들이에요.</p>
				</div>
				<div class="wrapper_indent">
					<p>Mei ut decore accusam consequat, alii dignissim no usu.
						Phaedrum intellegat sit ut, no pri mutat eirmod. In eum iriure
						perpetua adolescens, pri dicunt prodesset et. Vis dicta postulant
						ad.</p>
					<div class="table-responsive">
						<table class="table table-striped add_bottom_30">
							<thead>
								<tr>
									<th>Category</th>
									<th>Course name</th>
									<th>Rate</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Business</td>
									<td><a href="#">Business Plan</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star voted"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Economy pinciples</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star"></i> <i class="icon-star"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Understand diagrams</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Marketing strategies</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Marketing</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star voted"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Business Plan</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star"></i> <i class="icon-star"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Economy pinciples</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star"></i></td>
								</tr>
								<tr>
									<td>Business</td>
									<td><a href="#">Understand diagrams</a></td>
									<td class="rating"><i class="icon-star voted"></i><i
										class="icon-star voted"></i><i class="icon-star voted"></i><i
										class="icon-star voted"></i> <i class="icon-star"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!--wrapper_indent -->
			</div>
		</div>
		<!-- /col -->
	</div>
	<!-- /row -->
</div>
<!-- /container -->
<div id="ex1" class="modal">
	<h1></h1>
	<a href="#" rel="modal:close">닫기</a>
</div>