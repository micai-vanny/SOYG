<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style>
.wrap{

margin-top: 200px;
}
</style>
<script >
function select(class_code){
	location.href = "adminClassSelect.do?class_code=" + class_code;
	}
</script>
<!-- 스터디 전제조회 테이블 -->
<body>
	<div align="center" class="wrap">
		<div>
			<h1>StudyList</h1>
	
		 <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
      </ol>
		<!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> 스터디 전체 조회 </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>스터디 코드</th>
                  <th>지역 코드</th>
                  <th>분야분류 코드</th>
                  <th>스터디명</th>
                  <th>활성/비활성 여부</th>
                  <th>시작여부dd</th>
                </tr>
              </thead>
              <tfoot>
			<c:forEach var="clas" items="${classes }">
                <tr onclick="select(${clas.class_code })">
                  <th>${clas.class_code }</th>
                  <th>${clas.loc_code }</th>
                  <th>${clas.field_code }</th>
                  <th>${clas.class_name }</th>
                  <th>${clas.class_active }</th>
                  <th>${clas.class_startchk }</th>
                </tr>
                  	</c:forEach>
              </tfoot>
              <tbody>
         
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
	  <!-- /tables-->
	  </div>
	  <!-- /container-fluid-->
   	</div>
    <!-- /container-wrapper-->
		<a href="#">회원목록</a> <a href="#">홈 가기</a> <a href="#">맴버 추가</a>
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