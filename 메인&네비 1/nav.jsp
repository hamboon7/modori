<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
		margin: 0;
		padding: 0;
} 
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
html,
body {
  overflow-x: hidden; /* Prevent scroll on narrow devices */
}

body {
  padding-top: 66px;
}

@media (max-width: 991.98px) {
  .offcanvas-collapse {
    position: fixed;
    top: 75px; /* Height of navbar */
    bottom: 0;
    right: 100%;
    width: 100%;
    padding-right: 1rem;
    padding-left: 1rem;
    overflow-y: auto;
    visibility: hidden;
    background-color: #ffff;
    transition: visibility .3s ease-in-out, -webkit-transform .3s ease-in-out;
    transition: transform .3s ease-in-out, visibility .3s ease-in-out;
    transition: transform .3s ease-in-out, visibility .3s ease-in-out, -webkit-transform .3s ease-in-out;
  }
  .offcanvas-collapse.open {
    visibility: visible;
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
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

.text-white-50 { color: rgba(255, 255, 255, .5); }

.bg-purple { background-color: #6f42c1; }

.lh-100 { line-height: 1; }
.lh-125 { line-height: 1.25; }
.lh-150 { line-height: 1.5; }

.navbar-brand {margin-left: 15px; color: #000; font-size: 28px;}
.navbar {background-color: #fff;}

#nav-icon3{
  width: 55px;
  height: 47px;
  position: relative;
  margin: 5px 0;
  -webkit-transform: rotate(0deg);
  -moz-transform: rotate(0deg);
  -o-transform: rotate(0deg);
  transform: rotate(0deg);
  -webkit-transition: .5s ease-in-out;
  -moz-transition: .5s ease-in-out;
  -o-transition: .5s ease-in-out;
  transition: .5s ease-in-out;
  cursor: pointer;
}

#nav-icon3 span{
  display: block;
  position: absolute;
  height: 6px;
  width: 100%;
  background: #F2CB05;
  border-radius: 9px;
  opacity: 1;
  left: 0;
  -webkit-transform: rotate(0deg);
  -moz-transform: rotate(0deg);
  -o-transform: rotate(0deg);
  transform: rotate(0deg);
  -webkit-transition: .25s ease-in-out;
  -moz-transition: .25s ease-in-out;
  -o-transition: .25s ease-in-out;
  transition: .25s ease-in-out;
}
#nav-icon3 span:nth-child(1) {
  top: 0px;
}

#nav-icon3 span:nth-child(2),#nav-icon3 span:nth-child(3) {
  top: 18px;
}

#nav-icon3 span:nth-child(4) {
  top: 36px;
}

#nav-icon3.open span:nth-child(1) {
  top: 18px;
  width: 0%;
  left: 50%;
}

#nav-icon3.open span:nth-child(2) {
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
}

#nav-icon3.open span:nth-child(3) {
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

#nav-icon3.open span:nth-child(4) {
  top: 18px;
  width: 0%;
  left: 50%;
}

.cntr {
  display: table;
  width: 100%;
  height: 100%;
}

.cntr .cntr-innr {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}

/*** STYLES ***/
.search {
	display: inline-block;
	position: relative;
	height: 40px;
	width: 40px;
	box-sizing: border-box;
	margin: 0px 8px 7px 0px;
	padding: 7px 9px 0px 9px;
	border: 6px solid #F2CB05;
	border-radius: 25px;
	transition: all 200ms ease;
	cursor: pointer;
}
.search:after {
	content: "";
	position: absolute;
	width: 6px;
	height: 20px;
	right: -5px;
	top: 22px;
	background: #F2CB05;
	border-radius: 3px;
	-webkit-transform: rotate(-40deg);
	transform: rotate(-40deg);
	transition: all 200ms ease;
}

#accordian {
	background: #fff;
	width: 100%;
	margin: 0px auto 0 auto;
	color: #000;
}

#accordian h3 {
	background: #fff;
}

#accordian h3 a {
	padding: 0 10px;
	font-size: 16px;
	line-height: 34px;
	display: block;
	color: #000;
	text-decoration: none;
}

#accordian h3 a:hover {
	text-shadow: 0 0 1px rgba(255, 255, 255, 0.7);
	color: #F2CB05;
}

i {
	margin-right: 10px;
}

#accordian li {
	list-style-type: none;
}

#accordian ul ul li a, #accordian h4 {
	color: #000;
	text-decoration: none;
	font-size: 11px;
	line-height: 27px;
	display: block;
	padding: 0 15px;
	transition: all 0.15s;
	position: relative;
}

#accordian ul ul li a:hover {
	border-left: 5px solid #F2CB05;
}

#accordian ul ul {
	display: none;
}

#accordian li.active>ul {
	display: block;
}

#accordian ul ul ul {
	margin-left: 15px;
	border-left: 1px dotted rgba(0, 0, 0, 0.5);
}

#accordian a:not (:only-child ):after {
	content: "\f104";
	font-family: fontawesome;
	position: absolute;
	right: 10px;
	top: 0;
	font-size: 14px;
}

#accordian .active>a:not (:only-child ):after {
	content: "\f107";
}

hr.style7 {
	border-top: 1px solid #8c8b8b;
	border-bottom: 1px solid #fff;
}
</style>

<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>

<body class="bg-light">
	<nav class="navbar navbar-expand-lg fixed-top">

		<div id="nav-icon3" class="navbar-toggler p-0 border-0"
			data-toggle="offcanvas">
			<span></span> <span></span> <span></span> <span></span>
		</div>

		<a class="navbar-brand h1" href="Controller?cmd=mainUI">MODORI</a>

		<div class="offcanvas-collapse" id="accordian">
			<ul class="navbar-nav">
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-store"></i>중고거래</a>
					</h3>
					<ul>
						<li><a href="#">의류&잡화</a>
							<ul>
								<li><a href="#">여성신발</a></li>
								<li><a href="#">여성가방</a></li>
								<li><a href="#">언더웨어</a></li>
								<li><a href="#">지갑&벨트</a></li>
								<li><a href="#">쥬얼리</a></li>
								<li><a href="#">시계</a></li>
								<li><a href="#">잡화/소품</a></li>
							</ul></li>
						<li><a href="#">뷰티</a>
							<ul>
								<li><a href="#">스킨케어</a></li>
								<li><a href="#">메이크업</a></li>
								<li><a href="#">선케어</a></li>
								<li><a href="#">향수</a></li>
								<li><a href="#">뷰티소품</a></li>
								<li><a href="#">네일</a></li>
							</ul></li>
						<li><a href="#">생필품</a></li>
						<li><a href="#">가전디지털</a></li>
						<li><a href="#">반려동물용품</a></li>
						<li><a href="#">e티켓&공연&여행</a></li>
					</ul>
				</li>

				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-book"></i>도서 바자회</a>
					</h3>
					<ul>
						<li><a href="#">Reports</a></li>
						<li><a href="#">Search</a></li>
						<li><a href="#">Graphs</a></li>
						<li><a href="#">Settings</a></li>
					</ul>
				</li>
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-bookmark"></i>도서 대여&예약</a>
					</h3>
					<ul>
						<li><a href="#">Reports</a></li>
						<li><a href="#">Search</a></li>
						<li><a href="#">Graphs</a></li>
						<li><a href="#">Settings</a></li>
					</ul>
				</li>
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-users"></i>공동구매</a>
					</h3>
					<ul>
						<li><a href="#">Reports</a></li>
						<li><a href="#">Search</a></li>
						<li><a href="#">Graphs</a></li>
						<li><a href="#">Settings</a></li>
					</ul>
				</li>
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-money-bill-wave"></i>경매</a>
					</h3>
					<ul>
						<li><a href="#">Reports</a></li>
						<li><a href="#">Search</a></li>
						<li><a href="#">Graphs</a></li>
						<li><a href="#">Settings</a></li>
					</ul>
				</li>
				<hr class="style7">
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-sign-out-alt aa"></i>로그아웃</a>
					</h3>
				</li>
				<li class="nav-item">
					<h3>
						<a href="#"><i class="fas fa-user aa"></i>마이페이지</a>
					</h3>
				</li>
			</ul>
		</div>

		<div>
				<div class="cntr">
					<div class="cntr-innr">
						<a href="Controller?cmd=searchUI"><label class="search" for="inpt_search"> 
						</label></a>
					</div>
				</div>
		</div>

	</nav>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="js/nav.js"></script>
</body>

</html>