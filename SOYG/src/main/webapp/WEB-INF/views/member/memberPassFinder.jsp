<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>
.width {
	width: 600px;
	text-align: center;
	margin: auto;
}

button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: #fff;
	color: #1AAB8A;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}


.step {
    height: 600px;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    margin-top : 83px;
}

</style>
<div class="width">
	<div id="form_container" class="clearfix">
				
		<form name = "frm" action="passFinder.do" method="post">
		
			<div class="step">
			
				<h3 class="main_question">
					<strong style="text-align: left">회원 정보 확인</strong>
				</h3>

				<div class="form-group">
					<input type="text" name="userID" id="userID" class="form-control required" placeholder = "아이디를 입력해 주세요" maxlength = "15">
				</div>
				
				<div class="form-group">
					<input type="text" name="name" id="name" class="form-control required" placeholder = "이름를 입력해 주세요" maxlength = "15">
				</div>
				
				<div class="form-group">
					<input type="text" name="birth" id="birth" class="form-control" placeholder="생년월일을 입력해 주세요" maxlength = "6">
				</div>
				
				<div class="form-group" style = "display: flex; align-items: flex-end;">
					<select name = "localPhoneNumber" class = "form-control" style = "height : 35.8px;">
						<option value = "010">010</option>
						<option value = "053">053</option>
					</select> - 
					<input type="text" name="phone1" class="form-control" placeholder="4자리" maxlength = "4">	-
					<input type="text" name="phone2" class="form-control" placeholder="4자리" maxlength = "4">
				</div>
				
				<button type="submit" onclick = "submitBtn()">확인!</button>
				
			</div>
			
		</form>
				
	</div>
</div>