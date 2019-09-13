<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">

<title>Login</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/floating-labels/">

<!-- Bootstrap core CSS -->
<link href="./assets/bootstrap-4.3.1/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	margin: 0;
	color: #6a6f8c;
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
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
	position: absolute;
	padding: 40px 70px 40px 70px;
	background: #e9e9e9;
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
	color: #000;
	border-color: #f2cb05;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: #fff;
}

.login-form .group .input {
	color: #6a6f8c;
	font-size: 16px;
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #aaa;
}

.login-form .group .button {
	background: #f2cb05;
	font-size: 18px;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-form .group .check:checked+label {
	color: #6a6f8c;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: rgba(255, 255, 255, .2);
}

.foot-lnk {
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
		} else if (document.join.pw.value == ""){
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("암호를 입력하세요");
			return false;
		}
		else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
	
function CheckForm2() {	
	if (document.join2.number.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("아이디를 입력하세요");
		return false;
	
	}
	else if (document.join2.pw.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("비밀번호를 입력하세요");
		return false;
	
	}
	else if (document.join2.name.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("이름를 입력하세요");
		return false;
	
	}
	else if (document.join2.email.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("이메일을 입력하세요");
		return false;
	
	}
	else if (document.join2.phone.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("전화번호를 입력하세요");
		return false;
	
	}
	else if (document.join2.department.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("학과를 입력하세요");
		return false;
	
	}
	else if (document.join2.bank.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("은행을 입력하세요");
		return false;
	
	}
	else if (document.join2.bankNumber.value == "") {
		//암호를 입력하시오! 경고메세지 띄워주기
		window.alert("계좌번호를 입력하세요");
		return false;
	
	}else {//id, pass 모두 잘 입력받았따면? 이동!
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
						<div class="group">
							<label for="user" class="label">ID</label> <input name="id"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input name="pw"
								type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> 아이디 저장</label>
						</div>
						<div class="group">
							<input type="button" class="button" value="Sign In" onclick="CheckForm();" >
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="Controller?cmd=findUI">비밀번호를 잊어버리셨나요?</a>
						</div>
					</form>
				</div>
				<div class="sign-up-htm">
					<form id="join2" name="join2" onsubmit="return validate();"
						method="post" action="Controller?cmd=memberAction">
						<div class="group">
							<label for="user" class="label">ID</label> <input name="number"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input name="pw"
								type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">이름</label> <input name="name"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Email</label> <input name="email"
								type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">전화번호(- 없이 입력해주세요)</label> <input
								name="phone" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">학과</label> <input
								name="department" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">은행 ex)우리, 국민 </label> <input
								name="bank" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">계좌번호 ex) 21-2333-44</label> <input
								name="bankNumber" type="text" class="input">
						</div>
						<div class="group">
							<input type="button" class="button" value="Sign UP"
								onclick="CheckForm2();">
						</div>
						<div class="hr"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>