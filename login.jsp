<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<title>Login</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link href='https://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js"></script>

<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video, hr {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
}

html {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

caption, th, td {
	text-align: left;
	font-weight: normal;
	vertical-align: middle;
}

q, blockquote {
	quotes: none;
}

q:before, q:after, blockquote:before, blockquote:after {
	content: "";
	content: none;
}

a img {
	border: none;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	main, menu, nav, section, summary {
	display: block;
}

/* Colors */
/* ---------------------------------------- */
* {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	margin: 0;
	color: #6a6f8c;
	text-align: center;
	font-family: 'Lato', 'sans-serif';
	font-weight: 400;
}

a {
	text-decoration: none;
}

.info-text {
	text-align: left;
	width: 100%;
}

header, form {
	padding: 1em 10%;
}
.form-group {
	margin-bottom: 20px;
}

hr.heading {
	color: #506982;
	border-bottom: 1px solid #506982;
	padding-bottom: 3px;
	margin-bottom: 20px;
}
.controls {
	text-align: left;
	position: relative;
}

.controls input[type="text"], .controls input[type="password"], .controls input[type="button"], .controls textarea,
	.controls select {
	padding: 12px;
	font-size: 14px;
	border: 1px solid #c6c6c6;
	width: 100%;
	margin-bottom: 18px;
	color: #888;
	font-family: 'Lato', 'sans-serif';
	font-size: 16px;
	font-weight: 300;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	-webkit-transition: all 0.3s;
	transition: all 0.3s;
}

.controls input[type="text"]:focus, .controls input[type="text"]:hover,
	.controls input[type="password"]:focus, .controls input[type="password"]:hover,
	.controls input[type="button"]:focus, .controls input[type="button"]:hover,
	.controls textarea:focus, .controls textarea:hover, 
	.controls select:focus, .controls select:hover
	{
	outline: none;
	border-color: #9fb1c1;
}

.controls input[type="text"]:focus+label, .controls input[type="text"]:hover+label,
	.controls input[type="password"]:focus+label, .controls input[type="password"]:hover+label,
	.controls input[type="button"]:focus+label, .controls input[type="button"]:hover+label,
	.controls textarea:focus+label, .controls textarea:hover+label,
	.controls select:focus+label, .controls select:hover+label, .controls label:hover {
	color: #bdcc00;
	cursor: text;
}

.controls .fa-sort {
	position: absolute;
	right: 10px;
	top: 17px;
	color: #999;
}

.controls select {
	-moz-appearance: none;
	-webkit-appearance: none;
	background-color: white;
}

.controls label {
	position: absolute;
	left: 8px;
	top: 12px;
	width: 90%;
	color: #999;
	font-size: 16px;
	display: inline-block;
	padding: 4px 10px;
	font-weight: 400;
	background-color: rgba(255, 255, 255, 0);
	-moz-transition: color 0.3s, top 0.3s, background-color 0.8s;
	-o-transition: color 0.3s, top 0.3s, background-color 0.8s;
	-webkit-transition: color 0.3s, top 0.3s, background-color 0.8s;
	transition: color 0.3s, top 0.3s, background-color 0.8s;
	background-color: white;
	
}

.controls label.active {
	top: -11px;
	color: #555;
	background-color: white;
	width: auto;
}

.controls textarea {
	resize: none;
	height: 200px;
}

input[type="button"] {
	cursor: pointer;
	background-color: #1b3d4d;
	border: none;
	color: #fff;
	padding: 12px 0;

}

input[type="button"]:hover {
	background-color: #224c60;
}

.clear:after {
	content: "";
	display: table;
	clear: both;
}

[class*='col-'] {
	float: inherit;
	padding-right: 10px;
}

.grid [class*='col-']:last-of-type {
	padding-right: 0;
}

.col-1-4 {
	width: 25%;
}

@media ( max-width : 760px) {
	.col-1-4-sm {
		width: 100%;
	}
	[class*='col-'] {
		padding-right: 0px;
	}
}

*, :after, :before {
	box-sizing: border-box
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 525px;
	min-height: 870px;
	position: relative;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}
.login-html {
	width: 100%;
	height: 100%;
	padding-top: 40px;
	position: absolute;
}
.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}
.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}
.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}
.login-html .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}
.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	text-align: left;
	color: #506982;
	border-bottom: 1px solid #506982;
	padding-bottom: 3px;
	margin-bottom: 20px;
}
.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}
.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}
.hr {
	color: #506982;
	border-bottom: 1px solid #506982;
	margin: 100px 0 50px 0;
}
.foot-lnk {
	border-bottom: 1px ;
	margin: 50px 0 50px 0;
	text-align: center;
}
</style>

<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("아이디를 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join.id.select();
			return false; //현재 submit이벤트를 중지하는 개념
			//[2]암호체크
			//만약 document문서 안에 있는 join아이디를 가지는 폼안에 있는
			//txtpassword라는 id를 가진 <input>태그로 부터 입력받은 패스워드가 없다면?
		} else if (document.join.pw.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("암호를 입력하세요");
			return false;
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}

	function CheckForm2() {
		if (document.join2.number.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("아이디를 입력하세요");
			return false;

		} else if (document.join2.pw.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("비밀번호를 입력하세요");
			return false;

		} else if (document.join2.name.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("이름를 입력하세요");
			return false;

		} else if (document.join2.email.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("이메일을 입력하세요");
			return false;

		} else if (document.join2.phone.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("전화번호를 입력하세요");
			return false;

		} else if (document.join2.department.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("학과를 입력하세요");
			return false;

		} else if (document.join2.bank.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("은행을 입력하세요");
			return false;

		} else if (document.join2.bankNumber.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("계좌번호를 입력하세요");
			return false;

		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join2.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>

</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Sign In</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form id="join" name="join" onsubmit="return validate();"
						method="post" action="Controller?cmd=loginAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading"/>
							<div class="controls">
								<input type="text" id="id" class="floatLabel" name="id">
								<label for="id">ID</label>
							</div>
							<div class="controls">
								<input type="password" id="password" class="floatLabel" name="pw">
								<label for="password">Password</label>
							</div>
						</div>
						<input type="button" class="col-1-4" value="Sign In" onclick="CheckForm();" >
						
						<div class="foot-lnk">
							<a href="Controller?cmd=findUI">비밀번호를 잊어버리셨나요?</a>
						</div>
					</form>
				</div>
				<div class="sign-up-htm">
					<form id="join2" name="join2" onsubmit="return validate();"
						method="post" action="Controller?cmd=memberAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading"/>
							<div class="controls">
								<input name="number" type="text" id=number class="floatLabel">
								<label for="number">ID</label>
							</div>
							<div class="controls">
								<input type="password" id="pass" class="floatLabel" name="pw" data-type="password">
								<label for="pass">Password</label>
							</div>
							<div class="controls">
								<input name="name" type="text" id="name" class="floatLabel">
								<label for="name">이름</label>
							</div>
							<div class="controls">
								<input name="email" type="text" id="email" class="floatLabel">
								<label for="email">Email</label>
							</div>
							<div class="controls">
								<input name="phone" type="text" id="phone" class="floatLabel">
								<label for="phone">전화번호(- 없이 입력해주세요)</label>
							</div>
							<div class="controls">
								<select id="department" class="floatLabel" name="department" required>
									<option value="">과를 선택하세요</option>
									<option>경영과</option>
									<option>니트패션디자인과</option>
									<option>도예과</option>
									<option>문예창작과</option>
									<option>보건행정과</option>
									<option>비서인재과</option>
									<option>사회복지보육과</option>
									<option>산업디자인과</option>
									<option>생활체육과</option>
									<option>섬유패션디자인과</option>
									<option>세무회계과</option>
									<option>스마트IT과</option>
									<option>시각미디어디자인과</option>
									<option>식품영양과</option>
									<option>실무영어과</option>
									<option>실무일본어과</option>
									<option>실무중국어과</option>
									<option>실용음악과</option>
									<option>영상디자인과</option>
									<option>외식산업과</option>
									<option>유아교육과</option>
									<option>인테리어디자인과</option>
									<option>치위생과</option>
									<option>컴퓨터정보과</option>
									<option>패션디자인과</option>
									<option>항공과</option>
									<option>행정실무과</option>
									<option>호텔관광과</option>
								</select> <label for="department">학과</label>
							</div>
							<div class="controls">
								<input name="bank" type="text" id="bank" class="floatLabel">
								<label for="bank">은행(은행 제외하고 이름만 적어주세요 ex)우리, 국민)</label>
							</div>
							<div class="controls">
								<input name="bankNumber" type="text" id="bankNumber" class="floatLabel">
								<label for="bankNumber">계좌번호(- 적어주세요)</label>
							</div>
						</div>
						<input type="button" class="col-1-4" value="Sign UP" onclick="CheckForm2();">
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		(function($) {
			function floatLabel(inputType) {
				$(inputType)
						.each(
								function() {
									var $this = $(this);
									// on focus add cladd active to label
									$this.focus(function() {
										$this.next().addClass(
												"active");
									});
									//on blur check field and remove class if needed
									$this
											.blur(function() {
												if ($this.val() === ''
														|| $this
																.val() === 'blank') {
													$this
															.next()
															.removeClass();
												}
											});
								});
			}
			// just add a class of "floatLabel to the input field!"
			floatLabel(".floatLabel");
		})(jQuery);
	</script>
</body>
</html>