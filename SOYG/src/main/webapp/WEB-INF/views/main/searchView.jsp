<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="page">
	<main>
		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>검색 결과</h1>
					<!-- 검색 -->
					<form id=frm action="searchClass.do" method="post">
							<div id="custom-search-input">
							     <div class="input-group">
							         <input type="text" name="search" class="search-query" placeholder="ex) 영어, 자격증, 대구, 서울..." />
							         <input type="submit" class="btn_search" value="Search" />
							     </div>
							</div>
					</form>
					<!-- 검색 끝 -->
				</div>
			</div>
		</section>
		<!--/hero_in-->
		<div class="filters_listing sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li>
						<div class="layout_view">
								<a href="searchGrid.do?search=${searchSession }"><i class="icon-th"></i></a>
								<a href="searchClass.do?search=${searchSession }" class="active"><i class="icon-th-list"></i></a>
						</div>
					</li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /filters -->
		<div class="container margin_60_35">
		<c:choose>
			<c:when test="${!empty searchClass }">
				<c:forEach items="${searchClass }" var="vo">
					<div class="box_list wow">
						<div class="row no-gutters">
							<div class="col-lg-5">
								<figure class="block-reveal">
									<div class="block-horizzontal"></div>
									<a href="studySelect.do?class_code=${vo.class_code }"><img src="${pageContext.request.contextPath}/resources/classImage/${vo.class_image }" class="img-fluid" alt=""></a>
									<div class="preview"><span>스터디 정보 보기</span></div>
								</figure>
							</div>
							<div class="col-lg-7">
								<div class="wrapper">
									<a href="#0" class="wish_bt"></a>
									<small>${vo.city }</small>
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
			</c:when>
			<c:otherwise>
				<div align="center">
					<font size=6pt face="sanserif" color="#6A0888"><b>찾으시는 결과가 없어요😥</b></font><br>
					<font size=4pt face="sanserif"><b>다시 검색해주세요!</b></font>
				</div>
			</c:otherwise>
		</c:choose>
			<!-- /box_list -->
		</div>
		<!-- 스터디 리스트 끝 -->
	</main>
	<!--/main-->
	</div>
	<!-- page -->
