<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Bootstrap 4 Dashboard</title>
<base target="_self">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" value="notranslate">
<link rel="shortcut icon" href="/images/cp_ico.png">

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />


<style type="text/css">
body, html {
	height: 100%;
}
/* workaround modal-open padding issue */
body.modal-open {
	padding-right: 0 !important;
}

.display-1 {
    font-size: 3rem;
}
.navbar {
	background-color: #f2cb05;
}

#sidebar {
	padding-left: 0;
}
.navbar-inverse .navbar-nav .nav-link {
    color: #fff;
}
a.nav-link {
	color: #000;
}
#menu {
	background-color: #e9e9e9;
}
#submenu1 {
	background-color: #fff;
}


.main{
	margin-top: 20px;
}
.allBook{
	text-align: center;
	margin-bottom: -20px;
}

/* ----------------------------------------------------------------메인 */
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

form { max-width: 90%; margin:50px auto; }

.feedback-input {
  font-family: Helvetica, Arial, sans-serif;
  font-weight:500;
  font-size: 18px;
  border-radius: 5px;
  line-height: 22px;
  background-color: transparent;
  border: 1px solid #f2cb05;
  transition: all 0.3s;
  padding: 13px;
  margin-bottom: 15px;
  width:100%;
  box-sizing: border-box;
  outline:0;
  color: #777;
}

[type="submit"] {
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  width: 100%;
  background:#f2cb05;
  border-radius:5px;
  border:0;
  cursor:pointer;
  color:white;
  font-size:24px;
  padding-top:10px;
  padding-bottom:10px;
  transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}
[type="submit"]:hover { background:#e9a900; }

/*
 * Off Canvas at medium breakpoint
 * --------------------------------------------------
 */
@media screen and (max-width: 48em) {
	.row-offcanvas {
		position: relative;
		-webkit-transition: all 0.25s ease-out;
		-moz-transition: all 0.25s ease-out;
		transition: all 0.25s ease-out;
	}
	.row-offcanvas-left .sidebar-offcanvas {
		left: -33%;
	}
	.row-offcanvas-left.active {
		left: 33%;
		margin-left: -6px;
	}
	.sidebar-offcanvas {
		position: absolute;
		top: 0;
		width: 33%;
		height: 100%;
	}
}
/*
 * Off Canvas wider at sm breakpoint
 * --------------------------------------------------
 */
@media screen and (max-width: 34em) {
	.row-offcanvas-left .sidebar-offcanvas {
		left: -45%;
	}
	.row-offcanvas-left.active {
		left: 45%;
		margin-left: -6px;
	}
	.sidebar-offcanvas {
		width: 45%;
	}
}
</style>

</head>

<body>
	<nav
		class="navbar navbar-fixed-top navbar-toggleable-sm navbar-inverse mb-3">
		<button type="button" class="navbar-toggler navbar-toggler-right"
			data-toggle="offcanvas" title="Toggle responsive left sidebar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="flex-row d-flex">
			<a class="navbar-brand mb-1" href="Controller?cmd=studentAdminAction">Modori</a>
		</div>
		<div class="navbar-collapse collapse" id="collapsingNavbar">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">43회
						학생회 관리자 <span class="nav-link sr-only">43회 학생회 관리자</span>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="Controller?cmd=logoutAction">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<ul class="nav flex-column pl-1">
					<li class="nav-item" id="menu"><a class="nav-link"
						href="#submenu1" data-toggle="collapse" data-target="#submenu1">바자회 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu1"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarInfoAction">바자회 관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=6">6회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=5">5회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=4">4회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=3">3회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=2">2회</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBazzarAction&number=1">1회</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#submenu2"
						data-toggle="collapse" data-target="#submenu2">대여/예약 관리 ▾</a>
						<ul class="list-unstyled flex-column pl-3 collapse" id="submenu2"
							aria-expanded="false">
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilBookCountAction">재고관리</a></li>
							<li class="nav-item"><a class="nav-link" href="Controller?cmd=studentCouncilDamageAction&number=1">훼손관리</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/col-->

			<div class="col-md-9 col-lg-10 main">
				<div>
					<h5 class="enroll">바자회 수정</h5>
					<c:forEach items="${bazaarInfoUpdateData}" var="studentVO"> 
					<form method="post" action="Controller?cmd=studentCouncilBazzarUpdateAction&number=${studentVO.bazInfo_num}"> 
					  <input type="hidden" name="num" value="${studentVO.bazInfo_num}"> 
					  <input name="name" type="text" class="feedback-input" value="${studentVO.name}" />   
					  <input name="bank" type="text" class="feedback-input" value="${studentVO.bank}" />
					  <input name="account" type="text" class="feedback-input" value="${studentVO.account}" />
					  <input name="startDate" type="date" class="feedback-input" value="${studentVO.start}" />
					  <input name="endDate" type="date" class="feedback-input" value="${studentVO.end}" />
					  <input type="submit" value="수정"/>
					</form>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--/card-columns-->
	</div>
	<!--/main col-->
	<!--/.container-->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
	
</body>

</html>