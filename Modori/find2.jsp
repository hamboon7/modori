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

<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">비밀번호 찾기</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form>
						<div class="form-group">
							<hr class="heading" />
							<div class="controls">
								<input type="text" id="id" class="floatLabel" name="id"
									vlaue="${STR}"> <label for="id">임시 비밀번호</label>
							</div>

						</div>
						<div>
							<a href="Controller?cmd=loginUI"> <input type="button"
								class="col-1-4" value="로그인"></a> <a
								href="Controller?cmd=findUI"> <input type="button"
								class="col-1-4" value="비밀번호 변경"></a>
						</div>
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
