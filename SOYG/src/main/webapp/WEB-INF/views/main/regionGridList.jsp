<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<section id="hero_in" class="courses">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>지역별 스터디
			</h1>
		</div>
	</div>
</section>
<!--/hero_in-->
<div class="filters_listing sticky_horizontal">
	<div class="container">
		<ul class="clearfix">
			<li>
				<div class="switch-field">
					<input type="radio" id="all" name="listing_filter" value="all"
						checked> <label for="all">All</label> <input type="radio"
						id="popular" name="listing_filter" value="popular"> <label
						for="popular">Popular</label> <input type="radio" id="latest"
						name="listing_filter" value="latest"> <label for="latest">Latest</label>
				</div>
			</li>
			<li>
				<div class="layout_view">
					<a href="regList.do?loc_code=${vo.loc_code }&key=2" class="active"><i class="icon-th"></i></a>
					<a href="regList.do?loc_code=${vo.loc_code }&key=1"><i class="icon-th-list"></i></a>
				</div>
			</li>
			<li><select name="orderby" class="selectbox">
					<option value="category">Category</option>
					<option value="category 2">Literature</option>
					<option value="category 3">Architecture</option>
					<option value="category 4">Economy</option>
			</select></li>
		</ul>
	</div>
	<!-- /container -->
</div>
<!-- /filters -->

<div class="container margin_60_35">
	<div class="row">
		<div class="col-xl-4 col-lg-6 col-md-6">
			<div class="box_grid wow">
				<figure class="block-reveal">
					<div class="block-horizzontal"></div>
					<a href="#0" class="wish_bt"></a>
					<a href="course-detail.html"><img
						src="http://via.placeholder.com/800x533/ccc/fff/course__list_1.jpg"
						class="img-fluid" alt=""></a>
					<div class="price">$54</div>
					<div class="preview">
						<span>Preview course</span>
					</div>
				</figure>
				<div class="wrapper">
					<small>Category</small>
					<h3>Persius delenit has cu</h3>
					<p>Id placerat tacimates definitionem sea, prima quidam vim no.
						Duo nobis persecuti cu.</p>
					<div class="rating">
						<i class="icon_star voted"></i><i class="icon_star voted"></i><i
							class="icon_star voted"></i><i class="icon_star"></i><i
							class="icon_star"></i> <small>(145)</small>
					</div>
				</div>
				<ul>
					<li><i class="icon_clock_alt"></i> 1h 30min</li>
					<li><i class="icon_like"></i> 890</li>
					<li><a href="course-detail.html">Enroll now</a></li>
				</ul>
			</div>
		</div>
		<!-- /box_grid -->
	</div>
	<!-- /row -->
	<p class="text-center">
		<a href="#0" class="btn_1 rounded add_top_30">Load more</a>
	</p>
</div>