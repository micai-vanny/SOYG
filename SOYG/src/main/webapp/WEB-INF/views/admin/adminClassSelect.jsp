<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.wrap {
	margin-top: 200px;
}
</style>

<!--class한건 조회-->
<div class="wrap">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
		<li class="breadcrumb-item active">Add listing</li>
	</ol>
	<div class="box_general padding_bottom">
		<div class="header_box version_2">
			<h2>
				<i class="fa fa-file"></i> class 한건조회
			</h2>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>스터디코드</label> <input type="text" class="form-control"
						placeholder="${adminClassSelect.class_name }">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>지역분류코드</label> <input type="text" class="form-control"
						placeholder="Course category">
				</div>
			</div>
		</div>
		<!-- /row-->
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>스터디분류코드</label> <input type="text"
						class="form-control date-pick" placeholder="Course start">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>스터디이름</label> <input type="email"
						class="form-control date-pick" placeholder="Your email">
				</div>
			</div>
		</div>
		<!-- /row-->
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>시작일</label> <input type="text" class="form-control"
						placeholder="Course teacher">
				</div>
			</div>
		</div>
		<!-- /row-->
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>Course picture</label>
					<form action="/file-upload" class="dropzone"></form>
				</div>
			</div>
		</div>
		<!-- /row-->
	</div>
</div>