<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<script src="resources/js/classPang.js"></script>

	
<div class="theia-exception">
	<main>
		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container2">
				<div style="width: 48.8%; height: 100%;" class="imgC">
					<!-- 메인이미지 -->
					<img class="image-set" id="previewImage1">
				</div>
				<div style="width: 48.8%; height: 50%;" class="imgC">
					<!-- 부가 설명이미지 foreach 4개 -->
					<div class="container2_inner imgC">
						<img class="image-set" id="previewImage2">
					</div>
					<div class="container2_inner imgC">
						<img class="image-set" id="previewImage3">
					</div>
					<div class="container2_inner imgC">
						<img class="image-set" id="previewImage4">
					</div>
					<div class="container2_inner imgC">
						<img class="image-set" id="previewImage5">
					</div>
				</div>
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
								<button type="button" class="btn btn-primary btnsIze" onclick="$addCourse('bigCourse')">
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
												<input type="text" name="bigCourseOne" id="bigCourseOne" />
											</a>
										</h5>
									</div>

									<div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
										<div class="card-body">
											<input type="text" name="midCourseOne" id="midCourseOne" />&nbsp;&nbsp;&nbsp;
											<span>과정제목 추가</span>
											<button type="button" class="btn btn-primary btnsIze" onclick="$addCourse('smallCourse')">
												<small>추가</small>
											</button>
											<div class="list_lessons_2">
												<ul class="listBodyOne">
													<li>
														<input type="text" name="smallCourseOne_1" id="smallCourseOne_1" />
													</li>
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
					</div>
					<!-- /col -->

					<aside class="col-lg-4" id="sidebar">
						<div class="box_detail">
							<h4>이미지 삽입</h4>
							<p class="nopadding">메인이미지와 삽입할 이미지들을 넣어주세요</p>
							<div id="message-contact"></div>
							<form method="post" action="imageUpload" id="imageForm" autocomplete="off" enctype="multipart/form-data">
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input">
											<span class="input__label-content">메인이미지</span>
											<input class="input_field" accept="image/*" type="file" id="main_image" name="main_image" onchange="loadImg(this, '1');">
										</span>
									</div>
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지2</span>
											<input class="input_field" accept="image/*" type="file" id="main_image2" name="main_image2" onchange="loadImg(this, '2');">
										</span>
									</div>
								</div>
								<!-- /row -->
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지3</span>
											<input class="input_field" accept="image/*" type="file" id="main_image3" name="main_image3" onchange="loadImg(this, '3');">
										</span>
									</div>
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input">
											<span class="input__label-content">메인이미지4</span>
											<input class="input_field" accept="image/*" type="file" id="main_image4" name="main_image4" onchange="loadImg(this, '4');">
										</span>
									</div>
								</div>
								<div class="row">
									<div class="col-xl-6 col-lg-12 col-sm-6">
										<span class="input"> 
											<span class="input__label-content">메인이미지5</span>
											<input class="input_field" accept="image/*" type="file" id="main_image5" name="main_image5" onchange="loadImg(this, '5');">
										</span>
									</div>
								</div>
								<hr>
								<div style="position: relative;">
									<input type="submit" value="만들기" class="btn_1 full-width" id="submit-contact">
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