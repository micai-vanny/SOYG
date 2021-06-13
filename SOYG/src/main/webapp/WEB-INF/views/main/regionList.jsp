<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="page">
	<main>
		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>지역별 스터디</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="filters_listing sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li>
						<div class="switch-field">
							<input type="radio" id="all" name="listing_filter" value="all" checked>
							<label for="all">All</label>
							<input type="radio" id="popular" name="listing_filter" value="popular">
							<label for="popular">Popular</label>
							<input type="radio" id="latest" name="listing_filter" value="latest">
							<label for="latest">Latest</label>
						</div>
					</li>
					<li>
						<div class="layout_view">
							<a href="courses-grid.html"><i class="icon-th"></i></a>
							<a href="#0" class="active"><i class="icon-th-list"></i></a>
						</div>
					</li>
					<li>
						<select name="orderby" class="selectbox">
							<option value="category">Category</option>
							<option value="category 2">Literature</option>
							<option value="category 3">Architecture</option>
							<option value="category 4">Economy</option>
							</select>
					</li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /filters -->

		<div class="container margin_60_35">
		<c:forEach items="${regionList }" var="vo">
			<div class="box_list wow">
				<div class="row no-gutters">
					<div class="col-lg-5">
						<figure class="block-reveal">
							<div class="block-horizzontal"></div>
							<a href="studySelect.do?class_code=${vo.class_code }"><img src="http://via.placeholder.com/800x533/ccc/fff/course__list_1.jpg" class="img-fluid" alt=""></a>
							<div class="preview"><span>Preview course</span></div>
						</figure>
					</div>
					<div class="col-lg-7">
						<div class="wrapper">
							<a href="#0" class="wish_bt"></a>
							<small>Study</small>
							<h3>${vo.class_name }</h3>
							<p>스터디 모집 정원 : ${vo.class_personnel }<br>
								<c:choose>
									<c:when test="${vo.class_startchk eq 'R' }">
										스터디원 모집 중!
									</c:when>
									<c:when test="${vo.class_startchk eq 'O' }">
										스터디 진행 중!
									</c:when>
									<c:otherwise>
										모집이 마감된 스터디입니다.
									</c:otherwise>
								</c:choose>
							</p>
							<div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i><i class="icon_star"></i> <small>(145)</small></div>
						</div>
						<ul>
							<li><i class="icon-clock-4"></i> 
								<c:choose>
									<c:when test="${vo.weekdays_chk eq 'W' }">
										주중, ${vo.class_time }
									</c:when>
									<c:otherwise>
										주말, ${vo.class_time }
									</c:otherwise>						
								</c:choose>
							</li>
							<li><i class="icon_like"></i> 890</li>
							<li><a href="studySelect.do?class_code=${vo.class_code }">자세히 보기</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:forEach>
			<!-- /box_list -->
<!-- 			<p class="text-center add_top_60"><a href="#0" class="btn_1">Load more</a></p> -->
		</div>
		<!-- 스터디 리스트 끝 -->
		
		<!-- /container -->
<!-- 		<div class="bg_color_1">
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-help2"></i>
							<h4>Need Help? Contact us</h4>
							<p>Cum appareat maiestatis interpretaris et, et sit.</p>
						</a>
					</div>
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-wallet"></i>
							<h4>Payments and Refunds</h4>
							<p>Qui ea nemore eruditi, magna prima possit eu mei.</p>
						</a>
					</div>
					<div class="col-md-4">
						<a href="#0" class="boxed_list">
							<i class="pe-7s-note2"></i>
							<h4>Quality Standards</h4>
							<p>Hinc vituperata sed ut, pro laudem nonumes ex.</p>
						</a>
					</div>
				</div>
				/row
			</div>
			/container
		</div> -->
		<!-- /bg_color_1 -->
	</main>
	<!--/main-->
	</div>
	<!-- page -->
