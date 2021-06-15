<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8" />
    <title>:::SOYG:::열린 스터디 커뮤니티</title>
</head>
<main>
    <section class="hero_single version_2">
        <div class="wrapper">
            <div class="container">
                <h3>찾고싶은 스터디가 있나요?</h3>
                <p>
                    같은 목표가 있는 사람과 함께할 수 있는 스터디 그룹을
                    검색해보세요!
                </p>
                <form id=frm action="searchClass.do" method="post">
                    <div id="custom-search-input">
                        <div class="input-group">
                            <input type="text" name="search" class="search-query" placeholder="ex) 외국어, 자격증, 대구, 서울..." />
                            <input type="submit" class="btn_search" value="Search" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- /hero_single -->

    <div class="features clearfix">
        <div class="container">
            <ul>
                <li>
                    <i class="pe-7s-global"></i>
                    <h4>Various of Study</h4>
                    <span>지역별/분야별로 찾는 다양함!</span>
                </li>
                <li>
                    <i class="pe-7s-users"></i>
                    <h4>Achieving Study's goals</h4>
                    <span>공통의 목표를 가진 사람들과 함께!</span>
                </li>
                <li>
                    <i class="pe-7s-smile"></i>
                    <h4>The joy of being together</h4>
                    <span>함께 해나가는 즐거움!</span>
                </li>
            </ul>
        </div>
    </div>
    <!-- /features -->

    <!-- 로그인/비로그인 시 노출되는 스터디그룹 div 시작 : 로그인 구현 되면 세션 정보 받아서 C:if -->
    <div class="container-fluid margin_120_0">
        <div class="main_title_2">
            <span><em></em></span>
            <h2>Groups by region currently</h2>
            <p>내가 있는 곳에서 진행되는 스터디들을 만나보세요.</p>
        </div>
        <div id="reccomended" class="owl-carousel owl-theme">
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="#0" class="wish_bt"></a>
                        <a href="course-detail.html">
                            <div class="preview">
                                <span>Preview course</span>
                            </div>
                            <img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_1.jpg"
                                class="img-fluid"
                                alt=""
                            />
                        </a>
                        <div class="price">$39</div>
                    </figure>
                    <div class="wrapper">
                        <small>Category</small>
                        <h3>Persius delenit has cu</h3>
                        <p>
                            Id placerat tacimates definitionem sea, prima quidam
                            vim no. Duo nobis persecuti cu.
                        </p>
                        <div class="rating">
                            <i class="icon_star voted"></i
                            ><i class="icon_star voted"></i
                            ><i class="icon_star voted"></i
                            ><i class="icon_star"></i><i class="icon_star"></i>
                            <small>(145)</small>
                        </div>
                    </div>
                    <ul>
                        <li><i class="icon_clock_alt"></i> 1h 30min</li>
                        <li><i class="icon_like"></i> 890</li>
                        <li><a href="course-detail.html">Enroll now</a></li>
                    </ul>
                </div>
            </div>
            <!-- /item -->
        </div>
        <!-- /carousel -->
        <hr />
    </div>
    <!-- /container -->
    <!-- 로그인/비로그인 별 노출 div 끝 -->

    <!-- 지역별 스터디 그룹 DIV -->
    <div class="container margin_30_95">
        <div class="main_title_2">
            <span><em></em></span>
            <h2>Groups by region</h2>
            <p>다양한 지역별 스터디 그룹을 만나보세요.</p>
        </div>
        <div class="row">
        	<c:forEach items="${mainRegionList }" var="vo">
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${vo.loc_code }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
 	                    <img src="${pageContext.request.contextPath}/resources/mainImage/${vo.file_name }"
                            class="img-fluid" alt="" />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>${vo.loc_name }</h3>
                        </div>
                    </figure>
                </a>
            </div>
            </c:forEach>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->

    <!-- 분야별 스터디 그룹 Div -->
    <div class="bg_color_1">
        <div class="container margin_120_95">
            <div class="main_title_2">
                <span><em></em></span>
                <h2>Groups by various fields</h2>
                <p>다양한 분야별 스터디 그룹을 만나보세요.</p>
            </div>
            <div class="row">
            	<c:forEach items="${mainFieldsList }" var="fl">
                <div class="col-lg-6">
                    <a class="box_news" href="fieldsList.do?field_code=${fl.field_code }">
                        <figure>
                            <img src="${pageContext.request.contextPath}/resources/mainImage/${fl.file_name }"
                                alt="" />
                        </figure>
                        <h4>${fl.field_name }</h4>
                        <p>
                           ${fl.field_info }
                        </p>
                    </a>
                </div>
                </c:forEach>
                <!-- /box_news -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bg_color_1 -->
</main>
<!-- /main -->
