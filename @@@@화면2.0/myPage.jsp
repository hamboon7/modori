<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>검색화면</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>
<style>
a {
	color: #6c757d;
}

.card h-100 {
	max-height: 50px;
}

.carousel-inner {
	height: 360px;
}
.col, .dropdown-menu {
	text-align: center;
}
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


@media ( max-width : 991.98px) {
	.offcanvas-collapse {
		position: fixed;
		
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
	line-height: 2.5;
}

.lh-150 {
	line-height: 1.5;
}

#dropdownMenuButton {
	margin-right: 10px;
}

#name {
	float: left;
	margin-bottom: 10px;
}

blockquote {
	float: left;
}

.media {
	margin: 0 0 -20px 0;
}

#check0 {
	margin-top: 20px;
}
button {
	float: right;
}
.mr-3 {
	float: right;
}
.five {
	color: #F2CB05;
}
</style>

</head>
<body class="bg-light">
	<jsp:include page="nav.jsp" />
    <main role="main" class="container">
      <div class="d-flex align-items-center p-3 my-3 bg-warning rounded box-shadow" id="mypage">
        <img class="mr-3" src="img/profile.png" alt="" width="100" height="100">
		<div class="lh-100" id="myinfo">
				<h6 class="mb-0 lh-100">${loginOK}님</h6>
				<c:forEach items="${myData}" var="myPageVO">
				<small><c:out value="${myPageVO.name}" /></small><small> / <c:out value="${myPageVO.department}" /></small><br>
				<small><c:out value="${myPageVO.email}" /></small><br> <small><c:out value="${myPageVO.phon}" />
					/ <c:out value="${myPageVO.bank}" /> <c:out value="${myPageVO.account}" /></small><br>  <br> 
					<span class="badge badge-info">super</span><small>
					평점 : <c:out value="${myPageVO.total_score}" /></small>
			</c:forEach>
		</div>
	</div>

      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">마이 페이지</h6>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">비밀번호 변경</strong>
        </div>
       <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">프로필 사진 변경</strong>
        </div>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
             <a href="Controller?cmd=memberDeleteUI" class="d-block text-gray-dark"><strong class="d-block text-gray-dark">회원 탈퇴</strong></a>
        </div>
      </div>

       <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0"></h6>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <a href="Controller?cmd=enrollProductAction" class="d-block text-gray-dark"><strong class="d-block text-gray-dark">등록한 상품</strong></a>
        </div>
       <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <a href="Controller?cmd=buyProductAction" class="d-block text-gray-dark"><strong class="d-block text-gray-dark">구매한 상품</strong></a>
        </div>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">대여/예약 목록</strong>
        </div>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">신고 목록</strong>
        </div>
        <div class="media text-muted pt-3">
          	<p class="media-body pb-3 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">쪽지 목록</strong>
        </div>
      </div>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>