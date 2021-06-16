<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script>
$(function() {
	CKEDITOR.replace('meaning', {
		resize_enable: false,
		filebrowserUploadUrl:'${pageContext.request.contextPath }/imageUpload',
		width: "735px",
		height: "350px",
	});
	CKEDITOR.replace('course', {
		resize_enable: false,
		filebrowserUploadUrl:'${pageContext.request.contextPath }/imageUpload',
		width: "735px",
		height: "200px",
	});
	
	$count = 0;
	$enCount = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"];
	
	$("#addMidCourse").click(function() {
		console.log($("#accordion_lessons").html());
		if($count > 8) {
			alert("더이상 추가할 수 없습니다.");
		} else {
			$count += 1;
			console.log($enCount[$count]);
			$addHtml = '<div class="card"><div class="card-header" role="tab" id="heading' + $enCount[$count] + '"><h5 class="mb-0"><a data-toggle="collapse" href="#collapse' + $enCount[$count] + '" aria-expanded="true" aria-controls="collapse' + $enCount[$count] + '"><i class="indicator ti-minus"></i><input type="text" name="ex" id="ex"></a></h5></div><div id="collapse' + $enCount[$count] + '" class="collapse show" role="tabpanel" aria-labelledby="heading' + $enCount[$count] + '"><div class="card-body"><h6>학습 1</h6><div class="list_lessons_2"><ul><li>Health Science</li><li>Health and Social Care</li><li>History</li><li>Healthcare Science</li><li>Audiology</li></ul></div></div></div></div><!-- /card -->';
			$("#accordion_lessons").append($addHtml);	
		}
	});
})
</script>
	
<div class="theia-exception">
	<main>
		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp">
						<span></span>Online course detail
					</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="bg_color_1">
			<nav class="secondary_nav sticky_horizontal">
				<div class="container">
					<ul class="clearfix">
						<li><a href="#description" class="active">학습의 의의</a></li>
						<li><a href="#lessons">과정</a></li>
						<li><a href="#teachers">커뮤니티</a></li>
					</ul>
				</div>
			</nav>
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-lg-8">
						<section id="description">
							<!-- /box_highlight -->
							<h2>학습의 의의</h2>
							<div>
							<p>
								<textarea id="meaning" name="meaning" ></textarea>
							</p>
							</div>
						</section>
						<!-- /section -->

						<section id="lessons">
							<div class="intro_title mk_flex">
								<h2>과정</h2>&nbsp;&nbsp;&nbsp;
								<span>큰과정 추가</span>
								<button type="button" class="btn btn-primary btnsIze" id="addMidCourse">
									<small>추가</small>
								</button>
								<p>
									<textarea id="course" name="course"></textarea>
								</p>
							</div>
							<div id="accordion_lessons" role="tablist" class="add_bottom_45">
								<div class="card">
									<div class="card-header" role="tab" id="headingOne">
										<h5 class="mb-0">
											<a data-toggle="collapse" href="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne">
												<i class="indicator ti-minus"></i>
												<input type="text" name="ex" id="ex" />
											</a>
										</h5>
									</div>

									<div id="collapseOne" class="collapse show" role="tabpanel"
										aria-labelledby="headingOne">
										<div class="card-body">
											<h6>학습 1</h6>
											<div class="list_lessons_2">
												<ul>
													<li>Health Science</li>
													<li>Health and Social Care</li>
													<li>History</li>
													<li>Healthcare Science</li>
													<li>Audiology</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- /card -->
							</div>
							<!-- /accordion -->
						</section>
						<!-- /section -->
						<section id="teachers">
							<div class="intro_title">
								<h2>Teachers</h2>
							</div>
							<p>Zril causae ancillae sit ea. Dicam veritus mediocritatem
								sea ex, nec id agam eius. Te pri facete latine salutandi,
								scripta mediocrem et sed, cum ne mundi vulputate. Ne his sint
								graeco detraxit, posse exerci volutpat has in.</p>
							<div class="row add_top_20 add_bottom_30">
								<div class="col-lg-6">
									<ul class="list_teachers">
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_1_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_2_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_3_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
									</ul>
								</div>
								<div class="col-lg-6">
									<ul class="list_teachers">
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_4_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_5_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
										<li><a href="teacher-detail.html">
												<figure>
													<img
														src="http://via.placeholder.com/150x150/ccc/fff/teacher_6_thumb.jpg"
														alt="">
												</figure>
												<h5>Tomas Hegel</h5>
												<p>Mathematics</p> <i class="pe-7s-angle-right-circle"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<!-- /row -->
						</section>
						<!-- /section -->
					</div>
					<!-- /col -->

					<aside class="col-lg-4" id="sidebar">
						<div class="box_detail">
							<h4>이미지 삽입</h4>
							<p class="nopadding">메인이미지와 삽입할 이미지들을 넣어주세요</p>
							<div id="message-contact"></div>
							<form method="post" action="assets/contact.php" id="contactform" autocomplete="off">
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input">
											<span class="input__label-content">메인이미지</span>
											<input class="input_field" type="file" id="main_image" name="main_image">
										</span>
									</div>
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지2</span>
											<input class="input_field" type="file" id="main_image2" name="main_image2">
										</span>
									</div>
								</div>
								<!-- /row -->
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지3</span>
											<input class="input_field" type="file" id="main_image3" name="main_image3">
										</span>
									</div>
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input">
											<span class="input__label-content">메인이미지4</span>
											<input class="input_field" type="file" id="main_image4" name="main_image4">
										</span>
									</div>
								</div>
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지5</span>
											<input class="input_field" type="file" id="main_image5" name="main_image5">
										</span>
									</div>
								</div>
								<hr>
								<div style="position: relative;">
									<input type="submit" value="Enquire Now" class="btn_1 full-width" id="submit-contact">
								</div>
							</form>
						</div>
					</aside>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_color_1 -->
	</main>
	<!--/main-->
</div>
<!-- page -->