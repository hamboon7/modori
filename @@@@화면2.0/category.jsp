<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	margin: 0 auto;
}

.bg {
	margin-top: 10px;
}

.container {
	margin: 0px 0 5px 0;
	padding: 20px 20px 10px 20px;
	background: #fff;
}

.g {
	margin-bottom: 20px;
}

hr {
	background: #d4d4d4;
}
.secon {
	color: #F2CB05;
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="bg">
		<div class="container">
			<p>
				<strong>의류&잡화</strong>
			</p>
			<div class="row">
				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=1">여성의류</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=2">여성신발</a></div>

				<!-- Force next columns to break to new line at md breakpoint and up -->
				<div class="w-100 d-none d-md-block"></div>
				
				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=3">여성가방</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=5">지갑&벨트</a></div>

				<div class="w-100 d-none d-md-block"></div>

				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=6">쥬얼리</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=7">시계</a></div>

				<div class="w-100 d-none d-md-block"></div>
				
				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=4">언더웨어</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=8">잡화/소품</a></div>

			</div>
		</div>
		<hr />
		<div class="container">
			<p>
				<strong>뷰티</strong>
			</p>
			<div class="row">
				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=9">스킨케어</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=10">메이크업</a></div>

				<!-- Force next columns to break to new line at md breakpoint and up -->
				<div class="w-100 d-none d-md-block"></div>

				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=11">선케어</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=12">향수</a></div>

				<div class="w-100 d-none d-md-block"></div>

				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=13">뷰티소품</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=14">네일</a></div>
			</div>
		</div>
		<hr />
		<div class="container">
			<p>
				<strong>기타</strong>
			</p>
			<div class="row">
				<div class="col-6 col-sm-4 g"><a href="Controller?cmd=productSelectAction&category=15">생필품</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=16">가전/디지털</a></div>

				<!-- Force next columns to break to new line at md breakpoint and up -->
				<div class="w-100 d-none d-md-block"></div>

				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=17">애완용품</a></div>
				<div class="col-6 col-sm-4"><a href="Controller?cmd=productSelectAction&category=18">티켓</a></div>
			</div>
		</div>
	</div>
</body>
</html>