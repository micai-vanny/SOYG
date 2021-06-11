<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<style>
.wrap {
	margin: auto 0;
	padding-top: 10%;
	padding-bottom: 10%;
}
</style>    
<div class="wrap">
	<h1>Welcome This is Region List</h1>
	<br>
	<table border="1">
		<tr>
			<th>
				지역
			</th>
			<th>
				스터디명
			</th>
			<th>
				스터디 소개
			</th>
		</tr>
		<c:forEach items="${regionList }" var="vo">
			<tr>
				<td>
					${vo.loc_code }
				</td>
				<td>
					${vo.class_name }
				</td>
				<td>
					${vo.class_info }
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
