<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
/*
 * FilePond Custom Styles
 */

.filepond--drop-label {
	color: #4c4e53;
}

.filepond--label-action {
	text-decoration-color: #babdc0;
}

.filepond--panel-root {
	background-color: #edf0f4;
}


/**
 * Page Styles
 */
html {
	padding: 20vh 0 0;
}

.filepond--root {
	width:170px;
	margin: 0 auto;
}

</style>
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
function classcheck(classcode) {

	console.log(classcode);

	$.ajax({
		url : 'updateClass.do',
		data : {
			class_code : $('#class_code'+classcode).val(),
			class_name : $('#class_name'+classcode).val(),
			class_info : $('#class_info'+classcode).val(),
			class_time : $('#class_time'+classcode).val(),
			class_personnel : $('#class_personnel'+classcode).val(),
			class_startchk : $('#class_startchk'+classcode).val(),					
		},
		type : 'post',
		success : function(data) {
			alert("수정이완료되었습니다. 페이지를 새로 호출합니다.");
			location.href = "mymenu.do";
		},
		error : function(err) {
			console.log(err);
			alert("수정이 실패했습니다. 공백을 채워주시거나 계속되면 관리자에게 문의하십시요.");
		}
	});
}
/*
We need to register the required plugins to do image manipulation and previewing.
*/
FilePond.registerPlugin(
	// encodes the file as base64 data
  FilePondPluginFileEncode,
	
	// validates files based on input type
  FilePondPluginFileValidateType,
	
	// corrects mobile image orientation
  FilePondPluginImageExifOrientation,
	
	// previews the image
  FilePondPluginImagePreview,
	
	// crops the image to a certain aspect ratio
  FilePondPluginImageCrop,
	
	// resizes the image to fit a certain size
  FilePondPluginImageResize,
	
	// applies crop and resize information on the client
  FilePondPluginImageTransform
);

// Select the file input and use create() to turn it into a pond
// in this example we pass properties along with the create method
// we could have also put these on the file input element itself
FilePond.create(
	document.querySelector('input'),
	{
		labelIdle: `Drag & Drop your picture or <span class="filepond--label-action">Browse</span>`,
    imagePreviewHeight: 170,
    imageCropAspectRatio: '1:1',
    imageResizeTargetWidth: 200,
    imageResizeTargetHeight: 200,
    stylePanelLayout: 'compact circle',
    styleLoadIndicatorPosition: 'center bottom',
    styleButtonRemoveItemPosition: 'center bottom'
	}
);
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
				<form>
				<c:forEach var="classlist" items="${classlist }">
					<div style="padding-bottom: 50">
						<div class="wrapper_indent">
							<h5>${classlist.class_name }</h5>
							<input type="hidden" id="class_code${classlist.class_code }" name="class_code" value="${classlist.class_code }">
							<strong style="float: left; margin-top: 35px;">스터디 설명</strong> <a class="btn"
								href="#ex1_${classlist.class_code }" rel="modal:open"
								style="margin-left: 500px">수정하기</a>
							<div id="ex1_${classlist.class_code }" class="modal">
							<h1>${classlist.class_code }</h1>
								<h4>스터디의 정보를 수정할수있어요</h4>
								<div class="step">
									<div class="form-group">
										<p style="margin-bottom: 0px; margin-top: 20px">스터디이름</p>
										<input type="text" name="class_name" id="class_name${classlist.class_code }"
											class="form-control required"
											value="${classlist.class_name }">
									</div>
									<div class="form-group">
										<p style="margin-bottom: 0px;">${classlist.class_name }의
											소개를 해주세요.</p>
										<textarea style="width: 440" rows="20" cols="62"
											id="class_info${classlist.class_code }" name="class_info">${classlist.class_info }</textarea>

									</div>
									<div class="form-group">
										<select name="class_startchk" id="class_startchk${classlist.class_code }"
											class="form-control required">
											<c:choose>
												<c:when test="${classlist.class_startchk eq 'R' }">
													<option value="${classlist.class_startchk }"
														selected="selected">모집하기</option>
													<option value="O">진행중</option>
													<option value="E">모집완료</option>
												</c:when>
												<c:when test="${classlist.class_startchk eq 'O' }">
													<option value="${classlist.class_startchk }"
														selected="selected">진행중</option>
													<option value="R">모집하기</option>
													<option value="E">모집완료</option>
												</c:when>
												<c:otherwise>
													<option value="${classlist.class_startchk }"
														selected="selected">모집완료</option>
													<option value="O">진행중</option>
													<option value="R">모집하기</option>
												</c:otherwise>
											</c:choose>
										</select>
									</div>
									<div class="form-group">
										<p style="margin-bottom: 0px;">활동시간</p>
										<input type="text" name="class_time" id="class_time${classlist.class_code }"
											class="form-control" value="${classlist.class_time }"
											placeholder="활동시간">
									</div>
									<div class="form-group">
										<p style="margin-bottom: 0px;">정원(숫자로만적어주세요.)</p>
										<input type="text" name="class_personnel" id="class_personnel${classlist.class_code }"
											class="form-control" value="${classlist.class_personnel }"
											placeholder="정원">
									</div>
								</div>
								<a href="#"  onclick="classcheck('${classlist.class_code }')">정보수정하기!</a> <a href="#"
									rel="modal:close" style="margin-left: 300px;">닫기</a>

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
												<c:when test="${classlist.class_startchk eq 'R' }">
													<p>
														<font color="red">모집중</font>
													</p>
												</c:when>
												<c:when test="${classlist.class_startchk eq 'O' }">
													<p>
														<font color="blue">진행중</font>
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
				</form>


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

<!--
The classic file input element we'll enhance to a file pond
-->
<input type="file" 
       class="filepond"
       name="filepond"
       accept="image/png, image/jpeg, image/gif"/>

<!-- file upload itself is disabled in this pen -->
