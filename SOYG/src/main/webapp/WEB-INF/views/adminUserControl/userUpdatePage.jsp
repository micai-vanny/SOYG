<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">


<style>
	
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
		-webkit-appearance: none;
	}
	
	.info_update_window {
	    padding-top: 100px;
	    display: flex;
	    flex-direction: column;
	    align-content: center;
	    flex-wrap: wrap;
	    align-items: center;
	}
	
	.btn_group {
		text-align : center;
		padding : 20px;
	}
	.header { display : none; }
	footer { display : none !important; }
	.modal-backdrop { display: none; }
</style>

<script>

	function numberLength(e) {
		if(e.value.length > e.maxLength){
			e.value = e.value.slice(0, e.maxLength);
		}
	}
	
	function checkThePwd(){
		
		let modiPwd = document.getElementsByName('mPwd')[0].value;	// 수정 비번
		let idenPwd = document.getElementsByName('iPwd')[0].value;	// 확인 비번
		
		if(modiPwd != idenPwd){
			
			alert('XXXXXXXXXXXXXXX');
			frm.iPwd.focus();
			return;
			
		} else {
			
			alert('O');
			frm.pwdCheck.value = "checked";
		}
		
	}
	
	function submitBtn(){
		
		let modiPwd = document.getElementsByName('mPwd')[0].value;				// 수정 비번
		let checkPwd = document.getElementsByName('pwdCheck')[0].value;			// 비번 확인 버튼
		let emailWrite = document.getElementsByName('mail')[0].value;			// 입력 이메일
		let emailSelect = document.getElementsByName('localEmail')[0].value;	// 선택 이메일
		let frontNumber = document.getElementsByName('phoneNumber1')[0].value;	// 전번 앞번호
		let backNumber = document.getElementsByName('phoneNumber2')[0].value;	// 전번 뒷번호
		
		if (modiPwd != "" && checkPwd == "unChecked") {
			
			alert('비밀번호 확인 버튼 체크해라');
			frm.iPwd.focus();
			return;
			
		}else if (modiPwd != frm.iPwd.value){
			
			alert('비번이 같지 않다.');
			frm.iPwd.focus();
			frm.pwdCheck.value = "unChecked";
			return;
			
		} else if (modiPwd != frm.iPwd.value && checkPwd == "unChecked"){
			 
			alert("비번 한 번 더 체크해라");
			frm.iPwd.focus();
			return;
			
		} else if((frontNumber != "" || backNumber != "") && (frontNumber.length < 4 || backNumber.length < 4)){
		
			alert('수정할 전화번호를 8자리 모두 입력해라.');
			frm.phoneNumber1.focus();
			return;
		
		} else if(emailWrite != "" && emailSelect == '선택'){
			
			alert('이메일 주소 선택해라');
			frm.mail.focus();
			return;
			
		} else {
			
			alert('수정됨\n미입력 정보는 기존값으로 넣어짐');	// 안 돼도 됐다고 함.
			frm.submit();
			
		}
	}
	
	// 주소 api ~>> http://postcode.map.daum.net/guide
	function findPostCode(){
		
		new daum.Postcode({
			
			oncomplete: function(data){
				// 팝업에서 검색 결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분.
				
				// 내려오는 변수가 값이 없는 경우 공백('') 값을 가지므로, 참고하여 분기한다.
				var roadAddress = data.roadAddress;		// 도로명 주소 변수
				var extraRoadAddress = '';				// 참고 항목 변수
				
				// 법정 동명이 있을 경우 추가. 단, 법정리는 제외.
				if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					
					extraRoadAddress += data.bname;
				}
				
				// 건물명이 있고 공동 주택일 경우 추가
				if (data.buildngName !== '' && data.apartment === 'Y'){
					
					extraRoadAddress += (extraRoadAddress !== ''? ', ' + data.buildingName : data.buildingName);
				}
				
				// 표시할 참고 항목이 있을 경우 괄호까지 추가한 최종 문자열을 만든다.
				if(extraRoadAddress !== ''){
					
					extraRoadAddress = ' (' + extraRoadAddress + ')';
				}
				
				// 우편 번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('postCode').value = data.zonecode;
				document.getElementById('roadAddr').value = roadAddress;
				document.getElementById('bunAddr').value = data.jibunAddress;
				
				// 참고 항목 문자열이 있을 경우 해당 필드에 넣는다.
				if(roadAddr !== ''){
					
					document.getElementById('extraAddr').value = extraRoadAddress;
				} else {
					
					document.getElementById('extraAddr').value = '';
				}
				
				var guideTextBox = document.getElementById("guide");
				
				// 사용자가 '선택 안 함'을 클릭할 경우, 예상 주소라는 표시를 해 준다.
				if(data.autoRoadAddress){
					
					var expRoadAddr = data.autoRoadAddress + extraRoadAddress;
					guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
					guideTextBox.style.display = 'block';
					
				} else if(data.autoJibunAddress) {
					
					var expJibunAddr = data.autoJibunAddress;
					guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
					guideTextBox.style.display = 'block';
					
				} else {
					
					guideTextBox.innerHTML = '';
					guideTextBox.style.display = 'none';
				}
			}
		
		}).open();
	}
</script>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>UDEMA - Admin dashboard</title>
	
  <!-- Favicons-->
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
  <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
  <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

  <!-- GOOGLE WEB FONT -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
	
  <!-- Bootstrap core CSS-->
  <link href="/soyg/resources/udema_v_1.9/admin_section/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Main styles -->
  <link href="/soyg/resources/udema_v_1.9/admin_section/css/admin.css" rel="stylesheet">
  <!-- Icon fonts-->
  <link href="/soyg/resources/udema_v_1.9/admin_section/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Plugin styles -->
  <link href="/soyg/resources/udema_v_1.9/admin_section/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="/soyg/resources/udema_v_1.9/admin_section/vendor/dropzone.css" rel="stylesheet">
  <!-- Your custom styles -->
  <link href="/soyg/resources/udema_v_1.9/admin_section/css/custom.css" rel="stylesheet">
	
</head>

<body class="fixed-nav sticky-footer" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-default fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html"><img src="/soyg/resources/udema_v_1.9/admin_section/img/logo.png" data-retina="true" alt="" width="163" height="36"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Messages">
          <a class="nav-link" href="messages.html">
            <i class="fa fa-fw fa-envelope-open"></i>
            <span class="nav-link-text">Messages</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Bookings">
          <a class="nav-link" href="courses.html">
            <i class="fa fa-fw fa-archive"></i>
            <span class="nav-link-text">Courses <span class="badge badge-pill badge-primary">6 New</span></span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Reviews">
          <a class="nav-link" href="reviews.html">
            <i class="fa fa-fw fa-star"></i>
            <span class="nav-link-text">Reviews</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Bookmarks">
          <a class="nav-link" href="bookmarks.html">
            <i class="fa fa-fw fa-heart"></i>
            <span class="nav-link-text">Bookmarks</span>
          </a>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Add listing">
          <a class="nav-link" href="add-listing.html">
            <i class="fa fa-fw fa-plus-circle"></i>
            <span class="nav-link-text">Add listing</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="My profile">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseProfile" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">My profile</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseProfile">
            <li>
              <a href="user-profile.html">User profile</a>
            </li>
			<li>
              <a href="teacher-profile.html">Teacher profile</a>
            </li>
          </ul>
        </li>
		<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-gear"></i>
            <span class="nav-link-text">Components</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="charts.html">Charts</a>
            </li>
			<li>
              <a href="tables.html">Tables</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control search-top" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- /Navigation-->
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add listing</li>
      </ol>
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-user"></i>회원 상세 정보</h2>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
					<label>Your photo</label>
						<form action="/file-upload" class="dropzone"></form>
				    </div>
				</div>
				<div class="col-md-8 add_top_30">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>이름</label>
								<input type="text" class="form-control" placeholder="Your name">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Last name</label>
								<input type="text" class="form-control" placeholder="Your last name">
							</div>
						</div>
					</div>
					<!-- /row-->
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>연락처</label>
								<input type="text" class="form-control" placeholder="Your telephone number">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>이메일</label>
								<input type="email" class="form-control" placeholder="Your email">
							</div>
						</div>
					</div>
					<!-- /row-->
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>Personal info</label>
								<textarea style="height:100px;" class="form-control" placeholder="Personal info"></textarea>
							</div>
						</div>
					</div>
					<!-- /row-->
				</div>
			</div>
		</div>
		<!-- /box_general-->
		<div class="row">
			<div class="col-md-6">
				<div class="box_general padding_bottom">
					<div class="header_box version_2">
						<h2><i class="fa fa-lock"></i>비밀번호 변경</h2>
					</div>
					<div class="form-group">
						<label>현재 비밀번호</label>
						<input class="form-control" type="password">
					</div>
					<div class="form-group">
						<label>새로운 비밀번호</label>
						<input class="form-control" type="password">
					</div>
					<div class="form-group">
						<label>새 비밀번호 확인</label>
						<input class="form-control" type="password">
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="box_general padding_bottom">
					<div class="header_box version_2">
						<h2><i class="fa fa-envelope"></i>이메일 변경</h2>
					</div>
					<div class="form-group">
						<label>현재 이메일</label>
						<input class="form-control" name="old_email" id="old_email" type="email">
					</div>
					<div class="form-group">
						<label>새로운 이메일</label>
						<input class="form-control" name="new_email" id="new_email" type="email">
					</div>
					<div class="form-group">
						<label>새 이메일 확인</label>
						<input class="form-control" name="confirm_new_email" id="confirm_new_email" type="email">
					</div>
				</div>
			</div>
		</div>
		<!-- /row-->
		<p><a href="#0" class="btn_1 medium">저장</a></p>
	  </div>
	  <!-- /.container-fluid-->
   	</div>
    <!-- /.container-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © UDEMA 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/jquery/jquery.min.js"></script>
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/chart.js/Chart.min.js"></script>
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/datatables/jquery.dataTables.js"></script>
    <script src="/soyg/resources/udema_v_1.9/admin_section/vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="/soyg/resources/udema_v_1.9/admin_section/vendor/jquery.selectbox-0.2.js"></script>
	<script src="/soyg/resources/udema_v_1.9/admin_section/vendor/retina-replace.min.js"></script>
	<script src="/soyg/resources/udema_v_1.9/admin_section/vendor/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="/soyg/resources/udema_v_1.9/admin_section/js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="/soyg/resources/udema_v_1.9/admin_section/vendor/dropzone.min.js"></script>
	
</body>
</html>

<!-- -----------------------------------------------------------------------------------------------------------------  -->
	<%-- <div class = info_update_window>

		<h2>정보 수정 페이지</h2>
	
		<div class="information">
			<Strong>${id }</Strong> 님의 정보입니다.<br>
			회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다.<br>
			<a href = "#" target = "_blank">개인정보처리방침</a>
		</div>
		<form name = "frm" action = "memberUpdateForm.do" method = "post">
		
			<input type = "hidden" name = "hiddenPhone" value = "${vo.phone }">
			<input type = "hidden" name = "hiddenName" value = "${vo.name }">
			<input type = "hidden" name = "hiddenMail" value = "${vo.mail }">
			<input type = "hidden" name = "hiddenAddr" value = "${vo.address }">
			<input type = "hidden" name = "hiddenPwd" value = "${vo.passwd }">
			
			<table border = "1">
				<tr>
					<th>이름</th>
					<td>
						${vo.name }
						<p><br><input type = "text" name = "mName" placeholder = "바꿀 이름 입력." maxlength = "30"></p>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
						<input type = "password" name = "mPwd" placeholder = "수정할 비밀번호 입력" maxlength = "20">
						<p><br>
							<input type = "password" name = "iPwd" placeholder = "비밀번호 재입력"  maxlength = "20">
							<button class="btn btn-outline-dark mt-auto" type = "button" name = "pwdCheck" onclick = "checkThePwd()" value = "unChecked">확인</button>
						</p>
					</td>
				</tr>
				
				<tr>
				<th>전번</th>
					<td>
						${vo.phone }<br><br>
						<select name = "localPhoneNumber" style = "width : 150px;">
							<option value = "010">010</option>
							<option value = "053">053</option>
						</select> -
						<span>
							<input class = "form-number-control" type = "number" name = "phoneNumber1" maxlength = "4" placeholder= "숫자 4자리" oninput = "numberLength(this);">
						</span> -
						<span>
							<input class = "form-number-control" type = "number" name = "phoneNumber2" maxlength = "4" placeholder = "숫자 4자리" oninput = "numberLength(this);">
						</span>
					</td>
				</tr>
				
				<tr>
					<th>이메일</th>
					<td>
						${vo.mail }<br><br>
						<input type = "text" name = "mail" maxlength="30"> @ 
						<!-- <input type = "text" name = "email" id = "email" value ="" readonly> -->
						<select name = "localEmail" style = "width : 150px;">
						 <!-- onchange = "selectEmail()" -->
							<option>선택</option>
							<!-- <option>직접입력</option> -->
							<option value = "@naver.com">naver.com</option>
							<option value = "@google.com">google.com</option>
							<option value = "@daum.net">daum.net</option>
							<option value = "@nate.net">nate.net</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<th>주소</th>
					<td>
						${vo.address}
						<p><br><!-- <p><br><input type = "text" name = "addr" maxlength = "30"></p> -->
							<input type = "text" id = "postCode" name = "postCode" placeholder = "우편번호">
							<input class="btn btn-outline-dark mt-auto" type = "button" onclick = "findPostCode()" value = "우편번호 찾기"><br>
							<input type = "text" id = "roadAddr" name = "roadAddr" placeholder = "도로명 주소">
							<input type = "text" id = "bunAddr" name = "bunAddr" placeholder = "지번 주소">
							<span id = "guide" style = "color:#999; display:none"></span>
							<input type = "text" id = "detailAddr" name = "detailAddr" placeholder = "상세 주소">
							<input type = "text" id = "extraAddr" name = "extraAddr" placeholder = "참고 항목">
						</p>
					</td>
				</tr>
			</table>
			<div class = "btn_group">
				<input class="btn btn-outline-dark mt-auto" type = "button" value = "수정" onclick = "submitBtn()">
			</div>
		</form>
	</div>
</body>
</html> --%>