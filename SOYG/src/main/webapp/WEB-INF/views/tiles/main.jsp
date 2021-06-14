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
                <form>
                    <div id="custom-search-input">
                        <div class="input-group">
                            <input
                                type="text"
                                class="search-query"
                                placeholder="ex) 외국어, 자격증, 대구, 서울..."
                            />
                            <input
                                type="submit"
                                class="btn_search"
                                value="Search"
                            />
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
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="#0" class="wish_bt"></a>
                        <a href="course-detail.html"
                            ><img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_2.jpg"
                                class="img-fluid"
                                alt=""
                        /></a>
                        <div class="price">$45</div>
                        <div class="preview">
                            <span>Preview course</span>
                        </div>
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
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="#0" class="wish_bt"></a>
                        <a href="course-detail.html"
                            ><img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_3.jpg"
                                class="img-fluid"
                                alt=""
                        /></a>
                        <div class="price">$54</div>
                        <div class="preview">
                            <span>Preview course</span>
                        </div>
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
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="#0" class="wish_bt"></a>
                        <a href="course-detail.html"
                            ><img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_4.jpg"
                                class="img-fluid"
                                alt=""
                        /></a>
                        <div class="price">$27</div>
                        <div class="preview">
                            <span>Preview course</span>
                        </div>
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
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="#0" class="wish_bt"></a>
                        <a href="course-detail.html"
                            ><img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_5.jpg"
                                class="img-fluid"
                                alt=""
                        /></a>
                        <div class="price">$35</div>
                        <div class="preview">
                            <span>Preview course</span>
                        </div>
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
            <div class="item">
                <div class="box_grid">
                    <figure>
                        <a href="" class="wish_bt"></a>
                        <a href="course-detail.html"
                            ><img
                                src="http://via.placeholder.com/800x533/ccc/fff/course__list_6.jpg"
                                class="img-fluid"
                                alt=""
                        /></a>
                        <div class="price">$54</div>
                        <div class="preview">
                            <span>Preview course</span>
                        </div>
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
        <div class="container">
            <p class="btn_home_align">
                <a href="courses-grid.html" class="btn_1 rounded"
                    >View all Groups</a
                >
            </p>
        </div>
        <!-- /container -->
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
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'02' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/201904/jv11349677.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>서울/경기</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'033' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/202006/jv12022954.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>강원</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'042' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/202006/jv12022968.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>대전/충북</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'041' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/201804/jv11119403.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>충남</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'053' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/202006/jv12022963.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>대구/경북</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'051' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/202006/jv12022957.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>부산/경남</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'063' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/201804/jv11119402.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>전북</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'062' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/201804/jv11119401.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>광주/전남</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <div class="col-lg-4 col-md-6 wow" data-wow-offset="150">
                <a href="regionList.do?loc_code=${'064' }" class="grid_item">
                    <figure class="block-reveal">
                        <div class="block-horizzontal"></div>
                        <img
                            src="https://imagescdn.gettyimagesbank.com/500/202006/jv12022959.jpg"
                            class="img-fluid"
                            alt=""
                        />
                        <div class="info">
                            <small
                                ><i class="ti-layers"></i>More Study
                                Groups</small
                            >
                            <h3>제주</h3>
                        </div>
                    </figure>
                </a>
            </div>
            <!-- /grid_item -->
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
                <div class="col-lg-6">
                    <a class="box_news" href="#0">
                        <figure>
                            <img
                                src="http://www.campl.co.kr/photo/2020-12/121601.jpg"
                                alt=""
                            />
                            <figcaption><strong>28</strong>Dec</figcaption>
                        </figure>
                        <h4>Language</h4>
                        <p>
                            글로벌 시대! 영어, 일본어, 중국어, 스페인어 등<br />다양한
                            언어를 함께 공부해보세요.
                        </p>
                    </a>
                </div>
                <!-- /box_news -->
                <div class="col-lg-6">
                    <a class="box_news" href="#0">
                        <figure>
                            <img
                                src="https://imagescdn.gettyimagesbank.com/500/21/126/272/0/1316040297.jpg"
                                alt=""
                            />
                            <figcaption><strong>28</strong>Dec</figcaption>
                        </figure>
                        <h4>License</h4>
                        <p>
                            도전하고 싶은 다양한 자격증,<br />취업에 꼭 필요한
                            자격증을 함께 공부해보세요.
                        </p>
                    </a>
                </div>
                <!-- /box_news -->
                <div class="col-lg-6">
                    <a class="box_news" href="#0">
                        <figure>
                            <img
                                src="https://imagescdn.gettyimagesbank.com/500/201803/jv11117284.jpg"
                                alt=""
                            />
                            <figcaption><strong>28</strong>Dec</figcaption>
                        </figure>
                        <h4>Employment preparation</h4>
                        <p>
                            청년실업 40만 시대. 힘든 취업의 문 함께 열어보세요.
                        </p>
                    </a>
                </div>
                <!-- /box_news -->
                <div class="col-lg-6">
                    <a class="box_news" href="#0">
                        <figure>
                            <img
                                src="https://imagescdn.gettyimagesbank.com/500/20/375/826/0/1267464979.jpg"
                                alt=""
                            />
                            <figcaption><strong>28</strong>Dec</figcaption>
                        </figure>
                        <h4>Hobby</h4>
                        <p>
                            새롭게 배워보고 싶은 취미가 있나요?<br />일상의
                            소소한 도전을 함께 해보세요.
                        </p>
                    </a>
                </div>
                <!-- /box_news -->
                <div class="col-lg-6">
                    <a class="box_news" href="#0">
                        <figure>
                            <img
                                src="https://imagescdn.gettyimagesbank.com/500/201801/a11108859.jpg"
                                alt=""
                            />
                            <figcaption><strong>28</strong>Dec</figcaption>
                        </figure>
                        <h4>E.T.C</h4>
                        <p>
                            색다른 지식을 나누고 발전하고 싶은 사람들이
                            모여있어요.<br />
                            함께 도전해보세요!
                        </p>
                    </a>
                </div>
                <!-- /box_news -->
            </div>
            <!-- /row -->
            <p class="btn_home_align">
                <a href="blog.html" class="btn_1 rounded">View all Groups</a>
            </p>
        </div>
        <!-- /container -->
    </div>
    <!-- /bg_color_1 -->
</main>
<!-- /main -->
