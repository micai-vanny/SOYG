<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: lightblue;
	color: white;
	border-radius: 5px;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	border-radius: 5px;
}
</style>
<!-- 
	부등호
	http://mwultong.blogspot.com/2006/10/html-css-less-than-greater-than-sign.html
 -->
<div class="pagination">
	<a href="javascript:goPage(${param.firstPageNo})" class="first">＜＜</a> 
	<a href="javascript:goPage(${param.prevPageNo})" class="prev">＜</a>
	<span>
		<c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
			<c:choose>
				<c:when test="${i eq param.pageNo}">
					<a href="javascript:goPage(${i})" class="active">${i}</a>
				</c:when>
				<c:otherwise>
					<a href="javascript:goPage(${i})">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</span> <a href="javascript:goPage(${param.nextPageNo})" class="next">＞</a>
	<a href="javascript:goPage(${param.finalPageNo})" class="last">＞＞</a>
</div>
