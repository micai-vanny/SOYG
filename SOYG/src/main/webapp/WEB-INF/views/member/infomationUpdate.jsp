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

.modify-flex {
	display: flex;
}
</style>
<div class="width">
	<div id="form_container" class="clearfix">
		<figure>
			<a href="index.html"><img src="img/logo.png" width="149"
				height="42" alt=""></a>
		</figure>
		<div id="wizard_container">
			<div id="top-wizard">
				<div id="progressbar"></div>
			</div>
			<!-- /top-wizard -->
			<div id="middle-wizard">
				<div class="step">
					<div id="intro">
						<figure>
							<img src="img/wizard_intro_icon.svg" alt="">
						</figure>
					</div>
				</div>
				<form>
					<div class="step">
						<h3 class="main_question">
							<strong style="text-align: left">기본정보변경</strong>
						</h3>

						<div class="form-group">
							<input type="text" name="userId" id="userId"
								class="form-control required" value="${user.userId }" readonly>
						</div>
						<div class="form-group">
							<input type="text" name="name" id="name"
								class="form-control required" value="${user.name }" readonly>
						</div>
						<div class="form-group">
							<input type="email" name="email" id="email"
								class="form-control required" value="${user.email }"
								placeholder="Your Email">
						</div>
						<div class="form-group">
							<input type="text" name="phone" id="phone" class="form-control"
								value="${user.phone }" placeholder="Your Telephone">
						</div>
						<div class="form-group">
							<input type="text" name="birth" id="birth" class="form-control"
								value="${user.birth }" placeholder="BirthDay">
						</div>
						<button type="submit" name="process" class="submit">정보수정하기!</button>

					</div>
				</form>
				<hr>
				<form>
					<div class="form-group">
						<input type="text" class="form-control required"
							value="${user.address }">
					</div>
					<div class="modify-flex">
						<div class="form-group" style="width: 90%">
							<input type="text" style="float: left" name="postcode"
								id="postcode" class="form-control required" placeholder="우편주소"
								readonly>
						</div>
						<div>
							<input style="height: 35px;" type="button" onclick="execDaumPostcode()" value="주소찾기">
						</div>
					</div>
					<div class="form-group">
						<input type="text" name="roadAddress" id="roadAddress"
							class="form-control required" placeholder="도로명주소" readonly>
					</div>
					<div class="form-group">
						<input type="text" name="extraAddress" id="extraAddress"
							class="form-control required" placeholder="참고주소" readonly>
					</div>
					<div class="form-group">
						<input type="text" name="detailAddress" id="detailAddress"
							class="form-control required" placeholder="상세주소를 입력해주세요">
					</div>
					&nbsp; &nbsp; &nbsp;
					<button type="submit" name="process" class="submit">주소수정하기!</button>
					<hr>
				</form>
				<!-- /step-->
				<form>
					<div class="step">
						<h3 class="main_question">
							<strong style="text-align: left">비밀번호 변경</strong>
						</h3>
						<div class="form-group">
							<input type="password" name="pastPassword" id="pastPassword"
								class="form-control required" placeholder="현재비밀번호를 입력하세요.">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control required" placeholder="새로운 비밀번호를 입력하세요.">
						</div>
						<div class="form-group">
							<input type="password" name="password2" id="password2"
								class="form-control required" placeholder="새로운 비밀번호를 한번더 입력하세요.">
						</div>
					</div>
					<div id="bottom-wizard">
						<button type="submit" name="process" class="submit">비밀번호변경!</button>
						<hr>
					</div>
				</form>
				<!-- /step-->
			</div>


		</div>
	</div>
</div>