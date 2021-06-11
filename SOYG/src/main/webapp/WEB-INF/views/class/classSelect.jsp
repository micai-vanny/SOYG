<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> %>

<link rel="stylesheet" href="resources/css/classSelectCss.css" />

<script>
	$(function() {
		// 	이미지 클릭시 해당 이미지 모달
		$(".imgC").click(function() {
			$(".modal").show();
			// 해당 이미지 가겨오기
			var imgSrc = $(this).children("img").attr("src");
			var imgAlt = $(this).children("img").attr("alt");
			$(".modalBox img").attr("src", imgSrc);
			$(".modalBox img").attr("alt", imgAlt);

			// 해당 이미지 텍스트 가져오기
			var imgTit = $(this).children("p").text();
			$(".modalBox p").text(imgTit);

			// 해당 이미지에 alt값을 가져와 제목으로
			//$(".modalBox p").text(imgAlt);
		});

		//.modal안에 button을 클릭하면 .modal닫기
		$(".modal button").click(function() {
			$(".modal").hide();
		});

		//.modal밖에 클릭시 닫힘
		$(".modal").click(function(e) {
			if (e.target.className != "modal") {
				return false;
			} else {
				$(".modal").hide();
			}
		});
	});
</script>

<main>
	<section id="hero_in" class="courses">
		<div class="wrapper">
			<div class="container2">
				<div style="width: 48.8%; height: 100%;" class="imgC">
					<img class="image-set"
						src="https://cdn.class101.net/images/a29bfb36-5e03-4de9-b5ec-0bb32a974863">
				</div>
				<div style="width: 48.8%; height: 50%;" class="imgC">
					<div style="height: 100%; margin: 0 0 10px 10px;">
						<img class="image-set"
							src="https://cdn.class101.net/images/a29bfb36-5e03-4de9-b5ec-0bb32a974863">
					</div>
					<div class="container2_inner imgC">
						<img class="image-set"
							src="https://cdn.class101.net/images/a29bfb36-5e03-4de9-b5ec-0bb32a974863">
					</div>
					<div class="container2_inner imgC">
						<img class="image-set"
							src="https://cdn.class101.net/images/a29bfb36-5e03-4de9-b5ec-0bb32a974863">
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
					<li><a href="#description" class="active">Description</a></li>
					<li><a href="#lessons">Lessons</a></li>
					<li><a href="#reviews">Reviews</a></li>
				</ul>
			</div>
		</nav>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-8">

					<section id="description">
						<h2>Description</h2>
						<p>Per consequat adolescens ex, cu nibh commune temporibus
							vim, ad sumo viris eloquentiam sed. Mea appareat omittantur
							eloquentiam ad, nam ei quas oportere democritum. Prima causae
							admodum id est, ei timeam inimicus sed. Sit an meis aliquam,
							cetero inermis vel ut. An sit illum euismod facilisis, tamquam
							vulputate pertinacia eum at.</p>
						<h5>What will you learn</h5>
						<ul class="list_ok">
							<li>
								<h6>Suas summo id sed erat erant oporteat</h6>
								<p>Ut unum diceret eos, mel cu velit principes, ut quo inani
									dolorem mediocritatem. Mea in justo posidonium necessitatibus.</p>
							</li>
							<li>
								<h6>Illud singulis indoctum ad sed</h6>
								<p>Ut unum diceret eos, mel cu velit principes, ut quo inani
									dolorem mediocritatem. Mea in justo posidonium necessitatibus.</p>
							</li>
							<li>
								<h6>Alterum bonorum mentitum an mel</h6>
								<p>Ut unum diceret eos, mel cu velit principes, ut quo inani
									dolorem mediocritatem. Mea in justo posidonium necessitatibus.</p>
							</li>
						</ul>
						<hr>
						<p>Mea appareat omittantur eloquentiam ad, nam ei quas
							oportere democritum. Prima causae admodum id est, ei timeam
							inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit
							illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>
						<div class="row">
							<div class="col-lg-6">
								<ul class="bullets">
									<li>Dolorem mediocritatem</li>
									<li>Mea appareat</li>
									<li>Prima causae</li>
									<li>Singulis indoctum</li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="bullets">
									<li>Timeam inimicus</li>
									<li>Oportere democritum</li>
									<li>Cetero inermis</li>
									<li>Pertinacia eum</li>
								</ul>
							</div>
						</div>
						<!-- /row -->
					</section>
					<!-- /section -->

					<section id="lessons">
						<div class="intro_title">
							<h2>Lessons</h2>
							<ul>
								<li>18 lessons</li>
								<li>01:02:10</li>
							</ul>
						</div>
						<div id="accordion_lessons" role="tablist" class="add_bottom_45">
							<div class="card">
								<div class="card-header" role="tab" id="headingOne">
									<h5 class="mb-0">
										<a data-toggle="collapse" href="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne"><i
											class="indicator ti-minus"></i> Introdocution</a>
									</h5>
								</div>

								<div id="collapseOne" class="collapse show" role="tabpanel"
									aria-labelledby="headingOne" data-parent="#accordion_lessons">
									<div class="card-body">
										<div class="list_lessons">
											<ul>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health Science</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health and Social Care</a><span>00:59</span></li>
												<li><a href="#0" class="txt_doc">Audiology</a><span>00:59</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- /card -->
							<div class="card">
								<div class="card-header" role="tab" id="headingTwo">
									<h5 class="mb-0">
										<a class="collapsed" data-toggle="collapse"
											href="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo"> <i class="indicator ti-plus"></i>Generative
											Modeling Review
										</a>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse" role="tabpanel"
									aria-labelledby="headingTwo" data-parent="#accordion_lessons">
									<div class="card-body">
										<div class="list_lessons">
											<ul>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health Science</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health and Social Care</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">History</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Healthcare Science</a><span>00:59</span></li>
												<li><a href="#0" class="txt_doc">Audiology</a><span>00:59</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- /card -->
							<div class="card">
								<div class="card-header" role="tab" id="headingThree">
									<h5 class="mb-0">
										<a class="collapsed" data-toggle="collapse"
											href="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree"> <i
											class="indicator ti-plus"></i>Variational Autoencoders
										</a>
									</h5>
								</div>
								<div id="collapseThree" class="collapse" role="tabpanel"
									aria-labelledby="headingThree" data-parent="#accordion_lessons">
									<div class="card-body">
										<div class="list_lessons">
											<ul>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health Science</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health and Social Care</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">History</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Healthcare Science</a><span>00:59</span></li>
												<li><a href="#0" class="txt_doc">Audiology</a><span>00:59</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- /card -->

							<div class="card">
								<div class="card-header" role="tab" id="headingFourth">
									<h5 class="mb-0">
										<a class="collapsed" data-toggle="collapse"
											href="#collapseFourth" aria-expanded="false"
											aria-controls="collapseFourth"> <i
											class="indicator ti-plus"></i>Gaussian Mixture Model Review
										</a>
									</h5>
								</div>
								<div id="collapseFourth" class="collapse" role="tabpanel"
									aria-labelledby="headingFourth"
									data-parent="#accordion_lessons">
									<div class="card-body">
										<div class="list_lessons">
											<ul>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health Science</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Health and Social Care</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">History</a><span>00:59</span></li>
												<li><a
													href="https://www.youtube.com/watch?v=LDgd_gUcqCw"
													class="video">Healthcare Science</a><span>00:59</span></li>
												<li><a href="#0" class="txt_doc">Audiology</a><span>00:59</span></li>
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

					<section id="reviews">
						<h2>Reviews</h2>
						<div class="reviews-container">
							<div class="row">
								<div class="col-lg-3">
									<div id="review_summary">
										<strong>4.7</strong>
										<div class="rating">
											<i class="icon_star voted"></i><i class="icon_star voted"></i><i
												class="icon_star voted"></i><i class="icon_star voted"></i><i
												class="icon_star"></i>
										</div>
										<small>Based on 4 reviews</small>
									</div>
								</div>
								<div class="col-lg-9">
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 90%" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>5 stars</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 95%" aria-valuenow="95" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>4 stars</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 60%" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>3 stars</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 20%" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>2 stars</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 0" aria-valuenow="0" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>1 stars</strong></small>
										</div>
									</div>
									<!-- /row -->
								</div>
							</div>
							<!-- /row -->
						</div>

						<hr>

						<div class="reviews-container">

							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar1.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Admin – April 03, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar2.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Ahsan – April 01, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar3.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Sara – March 31, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
						</div>
						<!-- /review-container -->
					</section>
					<!-- /section -->
				</div>
				<!-- /col -->

				<aside class="col-lg-4" id="sidebar">
					<div class="box_detail">
						<div class="iYUinv">중분류 내용~</div>
						<div class="jhzFzM">
							<c:forEach items="${study }" var="study">
							</c:forEach>
						</div>
						<div class="cJDaSl">
							<div class="ePrSEx">바로수강가능</div>
						</div>
						<div class="price">
							<fmt:formatNumber type="currency" value="30000" />
							<br /> <span class="original_price"> <em> <fmt:formatNumber
										type="currency" value="75000" />
							</em> 60% 할인가격
							</span>
						</div>
						<a href="#0" class="btn_1 full-width">구매하기</a> <a href="#0"
							class="btn_1 full-width outline"> <i class="icon_heart"></i>
							위시리스트에 넣기
						</a>
						<div id="list_feat">
							<h3>What's includes</h3>
							<ul>
								<li><svg xmlns="http://www.w3.org/2000/svg" width="18"
										height="18" fill="#1a1a1a" viewBox="0 0 24 24">
										<path d="M15.5 12L10 9v6l5.5-3z"></path>
										<path fill-rule="evenodd"
											d="M3 3a2 2 0 00-2 2v14a2 2 0 002 2h18a2 2 0 002-2V5a2 2 0 00-2-2H3zm0 16h18V5H3v14z"></path></svg>
									콘텐츠이용권</li>
								<li><svg xmlns="http://www.w3.org/2000/svg" width="18"
										height="18" fill="none" viewBox="0 0 24 24">
										<path fill-rule="evenodd"
											d="M21 6h-3.337c.216-.455.337-.963.337-1.5A3.5 3.5 0 0014.5 1 3.49 3.49 0 0012 2.051 3.49 3.49 0 009.5 1 3.5 3.5 0 006 4.5c0 .537.121 1.045.337 1.5H3a1 1 0 00-1 1v4a1 1 0 001 1v8a1 1 0 001 1h16a1 1 0 001-1v-8a1 1 0 001-1V7a1 1 0 00-1-1zM4 8v2h7V8H4zm9 0v2h7V8h-7zm-2 4H5v7h6v-7zm2 7v-7h6v7h-6zm2-13.085a1.5 1.5 0 01-.5.085H13V4.5c0-.175.03-.344.085-.5A1.5 1.5 0 1115 5.915zM11 4.5V6H9.5a1.5 1.5 0 111.415-2c.055.156.085.325.085.5z"
											fill="#1a1a1a"></path></svg> 준비물키트</li>
								<li><svg xmlns="http://www.w3.org/2000/svg" width="18"
										height="18" fill="none" viewBox="0 0 24 24">
										<path fill-rule="evenodd"
											d="M8.443 12.832A5.99 5.99 0 016 8a6 6 0 1112 0 5.99 5.99 0 01-2.443 4.832A8 8 0 0120 20v1h-2v-1a6 6 0 10-12 0v1H4v-1a8 8 0 014.443-7.168zM16 8a4 4 0 11-8 0 4 4 0 118 0z"
											fill="#1a1a1a"></path></svg>초보자들도 쉽게</li>
								<li><i class="icon_chat_alt"></i>커뮤니티 활성화</li>
							</ul>
						</div>
					</div>
				</aside>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /bg_color_1 -->
	<!-- 팝업 될 곳 -->
	<div class="modal">
		<button>&times;</button>
		<div class="modalBox">
			<img src="" alt="">
			<p></p>
		</div>
	</div>
</main>
<!--/main-->