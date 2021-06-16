<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<section id="hero_in" class="courses">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>�˻� ���
			</h1>
			<!-- �˻� -->
			<form id=frm action="searchClass.do" method="post">
					<div id="custom-search-input">
					     <div class="input-group">
					         <input type="text" name="search" class="search-query" placeholder="ex) ����, �ڰ���, �뱸, ����..." />
					         <input type="submit" class="btn_search" value="Search" />
				    	 </div>
					</div>
			</form>
			<!-- �˻� �� -->
		</div>
	</div>
</section>
<!--/hero_in-->
<div class="filters_listing sticky_horizontal">
	<div class="container">
		<ul class="clearfix">
			<li>
				<div class="layout_view">
					<a href="searchGrid.do?search=${searchSession }" class="active"><i class="icon-th"></i></a>
					<a href="searchClass.do?search=${searchSession }"><i class="icon-th-list"></i></a>
				</div>
			</li>
		</ul>
	</div>
	<!-- /container -->
</div>
<!-- /filters -->

<div class="container margin_60_35">
	<div class="row">
		<c:forEach items="${searchClass }" var="vo">
		<div class="col-xl-4 col-lg-6 col-md-6">
			<div class="box_grid wow">
				<figure class="block-reveal">
					<div class="block-horizzontal"></div>
					<a href="#0" class="wish_bt"></a>
					<a href="studySelect.do?class_code=${vo.class_code }"><img
						src="${pageContext.request.contextPath}/resources/classImage/${vo.class_image }"
						class="img-fluid" alt=""></a>
					<div class="preview">
						<span>���͵� ���� ����</span>
					</div>
				</figure>
				<div class="wrapper">
					<small>${vo.city }</small>
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
</div>