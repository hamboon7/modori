<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${loginOK == null }">
	<c:redirect url="error.html" />
</c:if>


<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>검색화면</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/offcanvas/">

<script src="https://kit.fontawesome.com/a32c0865ec.js"></script>

<!-- Bootstrap core CSS -->
<link href="./assets/bootstrap-4.3.1/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

html, body {
	overflow-x: hidden; /* Prevent scroll on narrow devices */
}

body {
	padding-top: 56px;
}

@media ( max-width : 991.98px) {
	.offcanvas-collapse {
		position: fixed;
		top: 56px; /* Height of navbar */
		bottom: 0;
		left: 100%;
		width: 100%;
		padding-right: 1rem;
		padding-left: 1rem;
		overflow-y: auto;
		visibility: hidden;
		background-color: #343a40;
		transition: visibility .3s ease-in-out, -webkit-transform .3s
			ease-in-out;
		transition: transform .3s ease-in-out, visibility .3s ease-in-out;
		transition: transform .3s ease-in-out, visibility .3s ease-in-out,
			-webkit-transform .3s ease-in-out;
	}
	.offcanvas-collapse.open {
		visibility: visible;
		-webkit-transform: translateX(-100%);
		transform: translateX(-100%);
	}
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	color: rgba(255, 255, 255, .75);
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.nav-underline .nav-link {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: .875rem;
	color: #6c757d;
}

.nav-underline .nav-link:hover {
	color: #007bff;
}

.nav-underline .active {
	font-weight: 500;
	color: #343a40;
}

.text-white-50 {
	color: rgba(255, 255, 255, .5);
}

.bg-purple {
	background-color: #6f42c1;
}

.lh-100 {
	line-height: 1;
}

.lh-125 {
	line-height: 1.25;
}

.lh-150 {
	line-height: 1.5;
}
</style>

</head>
<body class="bg-light">
	<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
		<a class="navbar-brand mr-auto mr-lg-0" href="#"><i
			class="fas fa-arrow-left"></i></a>
		<button class="navbar-toggler p-0 border-0" type="button"
			data-toggle="offcanvas">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="navbar-collapse offcanvas-collapse"
			id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">바자회 거래</a></li>
				<li class="nav-item"><a class="nav-link" href="#">일반 거래</a></li>
				<li class="nav-item"><a class="nav-link"
					href="Controller?cmd=enrollUI">물품 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="#">도서 예약/대여</a>
				</li>
				<li class="nav-item "><a class="nav-link ">경매</a></li>
				<li class="nav-item "><a class="nav-link ">${loginOK}님
						환영합니다.</a></li>

			</ul>

		</div>
	</nav>

	<main role="main" class="container">
	
	<div class="  p-3 my-3 text-white-50  rounded shadow-sm">
		<form class="form-inline" method="post" action="Controller?cmd=searchAction">
			<input name="word" class="form-control col-10" type="text" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-outline-success col-2" type="submit">
				Search
			</button>
		</form>
	</div>

	<div class="dropdown text-right">
		<button class="btn btn-secondary dropdown-toggle" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">
			최신순
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
				x-placement="bottom-start"
				style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 38px, 0px);">
				<a class="dropdown-item" href="#">Action</a> <a
					class="dropdown-item" href="#">Another action</a> <a
					class="dropdown-item" href="#">Something else here</a>
			</div>
	</div>
	
	

	<ul class="list-unstyled">	
		<c:forEach items="${mainData}" var="mainVO">
			<li class="media"><img
				src="img/${mainVO.img1}.png" class="mr-3"
				alt="${mainVO.img1}" width = "100px" height = "100px">
				<div class="media-body">
					<h5 class="mt-0 mb-1">
						<c:out value="${mainVO.name}" /> <span class="badge badge-success"><c:out value="${mainVO.pro_condition}" /></span>
					</h5>
					가격 <c:out value="${mainVO.price}" /><br> 상품상태 중

					<blockquote class="blockquote text-right">

						<p class="mb-0">
							<span class="badge badge-warning">super</span> 
						</p>
					</blockquote>
				</div></li>

		</c:forEach>
	</ul>
	</main>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script>$(function () {
  'use strict'

  $('[data-toggle="offcanvas"]').on('click', function () {
    $('.offcanvas-collapse').toggleClass('open')
  })
})</script>
</body>

</body>
</html>