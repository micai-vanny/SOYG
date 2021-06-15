<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
	
	.btn_1.medium {
    float: right;
}
	
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
		
		console.log('수정 비번 : ' + modiPwd);
		console.log('확인 비번 : ' + idenPwd);
		
		if(modiPwd === "" && idenPwd === ""){
			
			alert('변경할 비밀번호가 입력되어 있지 않습니다.');
			frm.mPwd.focus();
			return;
			
		} else if (modiPwd != idenPwd){
			
			alert('비밀번호가 일치하지 않습니다.');
			frm.iPwd.focus();
			return;
			
		} else {
			
			alert('일치합니다.');
			frm.pwdCheck.value = "checked";
		}
		
	}
	
	function submitBtn(){
		
		let modiPwd = document.getElementsByName('mPwd')[0].value;				// 수정 비번
		let checkPwd = document.getElementsByName('pwdCheck')[0].value;			// 비번 확인 버튼
		let emailWrite = document.getElementsByName('email')[0].value;			// 입력 이메일
		let emailSelect = document.getElementsByName('localEmail')[0].value;	// 선택 이메일
		let frontNumber = document.getElementsByName('phoneNumber1')[0].value;	// 전번 앞번호
		let backNumber = document.getElementsByName('phoneNumber2')[0].value;	// 전번 뒷번호
		
		if (modiPwd != "" && checkPwd == "unChecked") {
			
			alert('비밀번호 확인 버튼을 누르시오.');
			frm.iPwd.focus();
			return;
			
		}else if (modiPwd != frm.iPwd.value){
			
			alert('비번이 같지 않습니다.');
			frm.iPwd.focus();
			frm.pwdCheck.value = "unChecked";
			return;
			
		} else if (modiPwd != frm.iPwd.value && checkPwd == "unChecked"){
			 
			alert("비밀번호를 한번 더 체크하시오.");
			frm.iPwd.focus();
			return;
			
		} else if((frontNumber != "" || backNumber != "") && (frontNumber.length < 4 || backNumber.length < 4)){
		
			alert('수정할 전화번호를 8자리 모두 입력하시오.');
			frm.phoneNumber1.focus();
			return;
		
		} else if(emailWrite != "" && emailSelect == '선택'){
			
			alert('이메일 주소를 선택하시오.');
			frm.email.focus();
			return;
			
		} else {
			
			alert('수정됐습니다.\n미입력 정보는 기존값으로 넣어집니다.');	// 안 돼도 됐다고 함.
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
    <a class="navbar-brand" href="home.do"><img src="/soyg/resources/udema_v_1.9/admin_section/img/logo.png" data-retina="true" alt="" width="163" height="36"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class = "collaps navbar-collapse" id = "navbar-Responsive">
      
      
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>로그아웃</a>
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
          <a href="admin.do">관리자 페이지</a>
        </li>
        <li class="breadcrumb-item active">회원 정보 수정 페이지</li>
      </ol>
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-user"></i>회원 상세 정보</h2>
			</div>
			
			<form name = "frm" action = "userUpdate.do" method = "POST">
			
			<!-- 미수정 시 받아갈 값들 -->
			<input type = "hidden" name = "hiddenPhone" value = "${user.phone }">
			<input type = "hidden" name = "hiddenName" value = "${user.name }">
			<input type = "hidden" name = "hiddenMail" value = "${user.email }">
			<input type = "hidden" name = "hiddenAddr" value = "${user.address }">
			<input type = "hidden" name = "hiddenPwd" value = "${user.password }">
			
			<div class="row">
				<div class="col-md-8 add_top_30">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>아이디</label>
								<input type="text" class="form-control" readonly placeholder="${user.userID }">
							</div>
						</div>
					
						<div class="col-md-6">
							<div class="form-group">
								<label>이름</label>
								<input type="text" class="form-control" placeholder="${user.name }">
							</div>
						</div>
					</div>
					<!-- /row-->
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>생년월일</label>
								<input type="text" class="form-control" placeholder="${user.birth }">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>성별</label>
								<input type="email" class="form-control" placeholder="${user.email }">
							</div>
						</div>
					</div>
					<!-- /row-->
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>주소</label>
								<!-- <textarea style="height:100px;" class="form-control" placeholder="소개말"></textarea> -->
								<input type="text" class="form-control" readonly placeholder="${user.address }">
								<p>
									<input type = "text" id = "postCode" name = "postCode" placeholder = "우편번호">
									<input class="btn btn-outline-dark mt-auto" type = "button" onclick = "findPostCode()" value = "우편번호 찾기"><br>
									<input type = "text" id = "roadAddr" name = "roadAddr" placeholder = "도로명 주소">
									<input type = "text" id = "bunAddr" name = "bunAddr" placeholder = "지번 주소">
									<span id = "guide" style = "color:#999; display:none"></span>
									<input type = "text" id = "detailAddr" name = "detailAddr" placeholder = "상세 주소">
									<input type = "text" id = "extraAddr" name = "extraAddr" placeholder = "참고 항목">
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>연락처</label>
								<!-- <textarea style="height:100px;" class="form-control" placeholder="소개말"></textarea> -->
								<input type="text" class="form-control" placeholder="${user.phone }">
								<select name = "localPhoneNumber">
									<option value = "010">010</option>
									<option value = "053">053</option>
								</select> -
								<input type = "number" name = "phoneNumber1" maxlength = "4" placeholder= "숫자 4자리" oninput = "numberLength(this);"> -
								<input type = "number" name = "phoneNumber2" maxlength = "4" placeholder = "숫자 4자리" oninput = "numberLength(this);">
							</div>
						</div>
					</div>
					<!-- /row-->
				</div>
			</div>
			</form>
			
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
						<input class="form-control" type="text" placeholder = "${user.password }">	<!-- 관리자니까 type을 text로 해도 되지 않을까 -->
					</div>
					<div class="form-group">
						<label>새로운 비밀번호</label>
						<input class="form-control" type="text" maxlength = "20" name = "mPwd">
					</div>
					<div class="form-group">
						<label>새 비밀번호 확인</label>
						<button onclick="checkThePwd()" class="btn_1 gray approve" value = "unChecked" name = "pwdCheck"><i class="fa fa-fw fa-check-circle-o"></i>일치 여부 확인</button>
						<input class="form-control" type="text" maxlength = "20" name = "iPwd">
					</div>
					<!-- <div class = "form-group">
						<label>비밀 번호 일치 여후 확인</label>
						<button class="form-control" type = "button" name = "pwdCheck" onclick = "checkThePwd()" value = "unChecked">확인</button>
					</div> -->
				</div>
			</div>
			<div class="col-md-6">
				<div class="box_general padding_bottom">
					<div class="header_box version_2">
						<h2><i class="fa fa-envelope"></i>이메일 변경</h2>
					</div>
					<div class="form-group">
						<label>현재 이메일</label>
						<input class="form-control" name="old_email" id="old_email" type="email" placeholder = "${user.address }">
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
		<p><button type = "submit" onclick = "submitBtn()" class="btn_1 medium">저장</button></p>
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
            <h5 class="modal-title" id="exampleModalLabel">정말로 로그아웃 하시겠습니까?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">로그아웃 하시려면 '로그아웃'을 클릭해 주십시오.</div>
          <div class="modal-footer">
            <a class="btn btn-primary" href="login.html">로그아웃</a>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
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
		
			<input type = "hidden" name = "hiddenPhone" value = "${user.phone }">
			<input type = "hidden" name = "hiddenName" value = "${user.name }">
			<input type = "hidden" name = "hiddenMail" value = "${user.email }">
			<input type = "hidden" name = "hiddenAddr" value = "${user.address }">
			<input type = "hidden" name = "hiddenPwd" value = "${user.password }">
			
			<table border = "1">
				<tr>
					<th>이름</th>
					<td>
						${user.name }
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
						${user.phone }<br><br>
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
						${user.email }<br><br>
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
						${user.address}
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