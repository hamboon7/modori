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
<link href="css/login.css" rel="stylesheet"> <!------------------------ 메인css-------------------------->

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js"></script>

<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("학번을 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join.id.select();
			return false; //현재 submit이벤트를 중지하는 개념
			//[2]암호체크
			//만약 document문서 안에 있는 join아이디를 가지는 폼안에 있는
			//txtpassword라는 id를 가진 <input>태그로 부터 입력받은 패스워드가 없다면?
		} else if (document.join.email.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("이메일을 입력하세요");
			return false;
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}

	function CheckForm2() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join2.id2;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("학번을 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join2.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join2.id.select();
			return false; //현재 submit이벤트를 중지하는 개념
			//[2]암호체크
			//만약 document문서 안에 있는 join아이디를 가지는 폼안에 있는
			//txtpassword라는 id를 가진 <input>태그로 부터 입력받은 패스워드가 없다면?
		} else if (document.join2.pw.value == "") {
			//암호를 입력하시오! 경고메세지 띄워주기
			window.alert("비밀번호를 입력하세요");
			return false;
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>

</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">비밀번호 찾기</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab">비밀번호 변경</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form id="join" name="join" onsubmit="return validate();"
						method="post" action="Controller?cmd=findAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading" />
							<div class="controls">
								<input type="text" id="id" class="floatLabel" name="id">
								<label for="id">학번</label>
							</div>
							<div class="controls">
								<input type="text" id="email" class="floatLabel" name="e-mail">
								<label for="email">이메일</label>
							</div>
						</div>
						<input type="button" class="col-1-4" value="확인"
							onclick="CheckForm();">

					</form>
				</div>
				<div class="sign-up-htm">
					<form id="join2" name="join2" onsubmit="return validate();"
						method="post" action="Controller?cmd=findUpdateAction">
						<!--  General -->
						<div class="form-group">
							<hr class="heading" />
							<div class="controls">
								<input type="text" id="id2" class="floatLabel" name="id">
								<label for="id2">학번</label>
							</div>
							<div class="controls">
								<input type="password" id="pw" class="floatLabel" name="pw"
									data-type="password"> <label for="pw">비밀번호</label>
							</div>
						</div>
						<input type="button" class="col-1-4" value="확인"
							onclick="CheckForm2();">
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		(function($) {
			function floatLabel(inputType) {
				$(inputType).each(function() {
					var $this = $(this);
					// on focus add cladd active to label
					$this.focus(function() {
						$this.next().addClass("active");
					});
					//on blur check field and remove class if needed
					$this.blur(function() {
						if ($this.val() === '' || $this.val() === 'blank') {
							$this.next().removeClass();
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
