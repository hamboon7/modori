<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="./assets/bootstrap-4.3.1/css/bootstrap.min.css">
<link href="css/login.css" rel="stylesheet">
<!------------------------ 메인css-------------------------->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery-ui-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.js"></script>
<script
	src="//raw.githubusercontent.com/andiio/selectToAutocomplete/master/jquery.select-to-autocomplete.min.js"></script>

<title>비밀번호 변경</title>

<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.pw;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("변경할 비밀번호를 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join.id.select();
			return false; //현재 submit이벤트를 중지하는 개념

		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
			window.alert("비밀번호가 변경되었습니다.");
		}
	}
</script>
</head>

<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">비밀번호 변경</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
				
					<form id="join" name="join" method="post"
						action="Controller?cmd=findUpdate2Action">

						<div class="form-group">
							<hr class="heading" />
							<div class="controls">
								<input id="pw" type="password" class="floatLabel" name="pw"><label
									for="pw">변경 비밀번호</label>
							</div>
						</div>

						<input name="cafeId" type="button" class="col-1-4" value="변경하기" onclick="CheckForm();">

					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
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