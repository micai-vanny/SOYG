<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<section id="hero_in" class="courses">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>������ ���͵� : ${regionName.loc_name }
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
					<a href="regionGrid.do?loc_code=${regionList[0].loc_code }" class="active"><i class="icon-th"></i></a>
					<a href="regionList.do?loc_code=${regionList[0].loc_code }"><i class="icon-th-list"></i></a>
				</div>
			</li>
			<li><select name="orderby" class="selectbox" onchange="if(this.value) location.href=(this.value);">
					<option value="category">Category</option>
					<c:forEach items="${regSelect }" var="rs">
									<option value="regionGrid.do?loc_code=${rs.loc_code }">${rs.loc_name }</option>
					</c:forEach>
			</select></li>
		</ul>
	</div>
	<!-- /container -->
</div>
<!-- /filters -->

<div class="container margin_60_35">
	<div class="row">
		<c:forEach items="${regionList }" var="vo">
		<div class="col-xl-4 col-lg-6 col-md-6">
			<div class="box_grid wow">
				<figure class="block-reveal">
					<div class="block-horizzontal"></div>
					<a href="#0" class="wish_bt"></a>
					<a href="studySelect.do?class_code=${vo.class_code }"><img
						src="http://via.placeholder.com/800x533/ccc/fff/course__list_1.jpg"
						class="img-fluid" alt=""></a>
					<div class="price">$54</div>
					<div class="preview">
						<span>Preview course</span>
					</div>
				</figure>
				<div class="wrapper">
					<small>Study</small>
					<h3>${vo.class_name }</h3>
					<p>���͵� ���� ���� : ${vo.class_personnel }<br>
								<c:choose>
									<c:when test="${vo.class_startchk eq 'R' }">
										���͵�� ���� ��!
									</c:when>
									<c:when test="${vo.class_startchk eq 'O' }">
										���͵� ���� ��!
									</c:when>
									<c:otherwise>
										������ ������ ���͵��Դϴ�.
									</c:otherwise>
								</c:choose></p>
					<div class="rating">
						<i class="icon_star voted"></i><i class="icon_star voted"></i><i
							class="icon_star voted"></i><i class="icon_star"></i><i
							class="icon_star"></i> <small>(145)</small>
					</div>
				</div>
				<ul>
					<li><i class="icon_clock_alt"></i>
						<c:choose>
							<c:when test="${vo.weekdays_chk eq 'W' }">
									����, ${vo.class_time }
							</c:when>
							<c:otherwise>
									�ָ�, ${vo.class_time }
							</c:otherwise>						
								</c:choose>
					</li>
					<li><i class="icon_like"></i> 890</li>
					<li><a href="studySelect.do?class_code=${vo.class_code }">�ڼ���</a></li>
				</ul>
			</div>
		</div>
		</c:forEach>
		<!-- /box_grid -->
	</div>
	<!-- /row -->
	<p class="text-center">
		<a href="#0" class="btn_1 rounded add_top_30">Load more</a>
	</p>
</div>