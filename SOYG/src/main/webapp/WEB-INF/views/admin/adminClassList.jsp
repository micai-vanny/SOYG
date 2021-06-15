<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style>
.wrap {
	margin-top: 20px;
}
</style>
<script>
function select(class_code){
	location.href = "adminClassSelect.do?class_code=" + class_code;
	}

window.onload = function(){
	$("#keyword").keyup(function(){
		var k = $(this).val();
		$("#dataTable > tfoot > tr").hide();
		var temp = $("#dataTable > tfoot > tr > td:nth-child(6n+4):contains('" + k + "')");
		
		$(temp).parent().show();
	});
};

</script>

<section id="hero_in" class="general">
	<div class="wrapper">
		<div class="container">
			<h1 class="fadeInUp">
				<span></span>스터디 관리 페이지
			</h1>
		</div>
	</div>
</section>
<!--/hero_in-->

<!-- 스터디 전제조회 테이블 -->
<body>
	<div align="center" class="wrap">
		<div>
			<div class="content-wrapper">
				<div class="container-fluid">
					<!-- 상단바-->
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="admin.do">관리자페이지</a></li>
						<li class="breadcrumb-item active">스터디 리스트</li>
					</ol>
					<!-- 테이블 데이터-->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-table"></i> 스터디 전체 조회
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper container-fluid dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12 col-md-6">
											<div id="dataTable_filter" class="dataTables_filter">
												<label> Search: <input type="search" id="keyword"
													class="form-fontrol form-control-sm" placeholder="스터디명으로 검색"
													aria-controls="dataTable">
												</label>
											</div>
										</div>
										<table class="table table-bordered" id="dataTable"
											width="100%" role="grid" aria-describedby="dataTable_info"
											cellspacing="0">
											<thead>
												<tr>
													<th>스터디 코드</th>
													<th>지역 코드</th>
													<th>분야분류 코드</th>
													<th>스터디명</th>
													<th>활성/비활성 여부</th>
													<th>시작여부</th>
												</tr>
											</thead>
											<tfoot>
												<c:forEach var="clas" items="${classes }">
													<tr onclick="select(${clas.class_code })">
														<td>${clas.class_code }</td>
														<td>${clas.loc_code }</td>
														<td>${clas.field_code }</td>
														<td>${clas.class_name }</td>
														<td>${clas.class_active }</td>
														<td>${clas.class_startchk }</td>
													</tr>
												</c:forEach>
											</tfoot>
										</table>
									</div>
									<div>
										<ul>
											<c:if test="${pageMaker.prev }">
												<li><a href="list${pageMaker.makeQuery(pageMaker.startPage -1) }">이전</a></li>
											</c:if>
											<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
												<li><a href="list${pageMaker.makeQuery(idx) }">${idx }</a></li>
											</c:forEach>
											<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
												<li><a href="lsit${pageMaker.makeQuery(pageMaker.endPage + 1) }" >다음</a></li>
											</c:if>
										</ul>
									</div>
									<!-- 페이징처리 -->
									<jsp:include page="../common/paging.jsp" flush="true">
										<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
										<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
										<jsp:param name="startPageNo" value="${paging.startPageNo}" />
										<jsp:param name="pageNo" value="${paging.pageNo}" />
										<jsp:param name="endPageNo" value="${paging.endPageNo}" />
										<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
										<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
									</jsp:include>
								</div>
							</div>
						</div>
						<!-- /tables-->
					</div>
					<!-- /container-fluid-->
				</div>
				<!-- /container-wrapper-->
			</div>
		</div>
	</div>
	</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Page level plugin JavaScript-->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="vendor/jquery.selectbox-0.2.js"></script>
	<script src="vendor/retina-replace.min.js"></script>
	<script src="vendor/jquery.magnific-popup.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="js/admin-datatables.js"></script>
</body>
</html>