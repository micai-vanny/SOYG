<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
 function likeItUpdate() {
	$.ajax({
		url: '/likeIt/likeItUpdate.do',
		type: "POST",
		data: {
			userId: ${id},
			class_code: '${vo.class_code}'
		},
		success: function() {
			likeItCount();
		}
		error: function(reject) {
			console.log(reject);
		}
	})
}

// 좋아요 개수 카운트
 function likeItCount() {
		$.ajax({
			url: "/likeIt/likeItCount.do",
         type: "POST",
         data: {
             class_code: '${vo.class_code}'
         },
         success: function (likeItCount) {
         	$(".likeit_count").html(likeItCount);
         },
		})
 };

 likeItCount(); // 처음 시작했을 때 실행되도록 해당 함수 호출
</script>
<div id="page">
	<main>
		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>지역별 스터디 : ${regionName.loc_name }</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		<div class="filters_listing sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li>
						<div class="layout_view">
								<a href="regionGrid.do?loc_code=${regionList[0].loc_code }"><i class="icon-th"></i></a>
								<a href="regionList.do?loc_code=${regionList[0].loc_code }" class="active"><i class="icon-th-list"></i></a>
						</div>
					</li>
					<li><!-- 카테고리 pulldown menu 링크 -->
						<select name="orderby" class="selectbox" onchange="if(this.value) location.href=(this.value);">
							<option value="#0">Category</option>
							<c:forEach items="${regSelect }" var="rs">
									<option value="regionList.do?loc_code=${rs.loc_code }">${rs.loc_name }</option>
							</c:forEach>
						</select>
					</li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /filters -->
		<!-- 스터디 List 시작 -->
		<div class="container margin_60_35">
			<c:choose>
				<c:when test="${!empty regionList }">
					<c:forEach items="${regionList }" var="vo">
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
										<c:if test="${!empty id }">
											<a href="#0" onclick="likeItUpdate()" class="wish_bt"></a>
										</c:if>
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
										<li><i class="icon_like"></i><span class="likeit_count"></span></li>
										<li><a href="studySelect.do?class_code=${vo.class_code }">자세히 보기</a></li>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- /box_list -->
				</c:when>
				<c:otherwise>
					<div align="center">
						<font size=6pt face="sanserif" color="#6A0888"><b>아직 개설된 스터디 모임이 없어요😅</b></font><br>
						<font size=4pt face="sanserif"><b>스터디를 새로 개설해보세요!</b></font>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- 스터디 리스트 끝 -->
	</main>
	<!--/main-->
	</div>
	<!-- page -->
