<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.fs1 {
	line-height: 1;
	font-size:1.5rem;
	position: relative;
    top: 6px;
}


</style>
<header class="header menu_2">
	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- /Preload -->
	<div id="logo">
		<a href="home.do"><img
			src="resources/udema_v_1.9/html_menu_1/img/logo.png" width="149"
			height="42" alt="" /></a>
	</div>	
	
	<ul id="top_menu">
		<c:choose>
			<c:when test="${!empty id }">
				<li><a class="fs1" href="logOut.do" data-icon="" ></a></li>
				<li><a class="fs1" href="mymenu.do" data-icon=""></a></li>
			</c:when>
			<c:otherwise>
				<li><a href="memberLoginpage.do" class="login">Login</a></li>
				<li class="hidden_tablet"><a href="memberJoin.do"
					class="btn_1 rounded">JOIN</a></li>
			</c:otherwise>
		</c:choose>
		<li><a href="#0" class="search-overlay-menu-btn">Search</a></li>

	</ul>
	<!-- /top_menu -->
	<a href="#menu" class="btn_mobile">
		<div class="hamburger hamburger--spin" id="hamburger">
			<div class="hamburger-box">
				<div class="hamburger-inner"></div>
			</div>
		</div>
	</a>
	<nav id="menu" class="main-menu">
		<ul>
			<li><span><a href="#0">처음으로</a></span></li>
			<li><span><a href="admin.do">관리자페이지</a></span></li>
			<li><span><a href="home.do">Home</a></span>
				<ul>
					<li><a href="index.html">Home version 1</a></li>
					<li><a href="index-2.html">Home version 2</a></li>
					<li><a href="index-6.html">Home version 3</a></li>
					<li><a href="index-3.html">Home version 4</a></li>
					<li><a href="index-4.html">Home version 5</a></li>
					<li><a href="index-5.html">With Cookie bar (EU law)</a></li>
				</ul></li>
			<li><span><a href="#0">Courses</a></span>
				<ul>
					<li><a href="courses-grid.html">Courses grid</a></li>
					<li><a href="courses-grid-sidebar.html">Courses grid
							sidebar</a></li>
					<li><a href="courses-list.html">Courses list</a></li>
					<li><a href="courses-list-sidebar.html">Courses list
							sidebar</a></li>
					<li><a href="course-detail.html">Course detail</a></li>
					<li><a href="course-detail-2.html">Course detail working
							form</a></li>
					<li><a href="admission.html">Admission wizard</a></li>
					<li><a href="teacher-detail.html">Teacher detail</a></li>
				</ul></li>
			<li><span><a href="#0">Pages</a></span>
				<ul>
					<li><a href="#0">Menu 2</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="studySelect.do">Blog</a></li>
					<li><a href="login.html">Login</a></li>
					<li><a href="register.html">Register</a></li>
					<li><a href="contacts.html">Contacts</a></li>
					<li><a href="404.html">404 page</a></li>
					<li><a href="agenda-calendar.html">Agenda Calendar</a></li>
					<li><a href="faq.html">Faq</a></li>
					<li><a href="help.html">Help</a></li>
				</ul></li>
			<li><span><a href="#0">Extra Pages</a></span>
				<ul>
					<li><a href="media-gallery.html">Media gallery</a></li>
					<li><a href="cart-1.html">Cart page 1</a></li>
					<li><a href="cart-2.html">Cart page 2</a></li>
					<li><a href="cart-3.html">Cart page 3</a></li>
					<li><a href="pricing-tables.html">Responsive pricing
							tables</a></li>
					<li><a href="coming_soon/index.html">Coming soon</a></li>
					<li><a href="userControlPage.do">관리자 테스트</a></li>
					<li><a href="icon-pack-2.html">Icon pack 2</a></li>
					<li><a href="icon-pack-3.html">Icon pack 3</a></li>
					<li><a href="icon-pack-4.html">Icon pack 4</a></li>
				</ul></li>
		</ul>
	</nav>
	<!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><span class="closebt"><i
				class="ti-close"></i></span></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit">
				<i class="icon_search"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->
</header>
<!-- /header -->
