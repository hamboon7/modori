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

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />


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
.navbar-inverse .navbar-nav .nav-link {
    color: #fff;
}
#sidebar {
	padding-left: 0;
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
table {
  text-align: center;
  line-height: 40px;
  border-collapse: separate;
  border-spacing: 0;
  border: 2px solid #f2cb05;
  width: 90%;
  margin: 30px auto;
  border-radius: .25rem;
}

thead tr:first-child {
  background: #f2cb05;
  color: #fff;
  border: none;
}

th:first-child,
td:first-child {
  
  padding: 0 15px 0 20px;
}

th {
  text-align: center;
  font-weight: 500;
}

thead tr:last-child th {
  border-bottom: 3px solid #ddd;
}

tbody tr:last-child td {
  border: none;
}

tbody td {
  border-bottom: 1px solid #ddd;
}

td:last-child {
  text-align: center;
  padding-right: 10px;
}

.button {
  color: #aaa;
  cursor: pointer;
  vertical-align: middle;
  margin-top: -4px;
}

.button2 {
  float: center;
  display: inline-block;
  height: 50px;
  width: 20%;
  box-sizing: border-box;
  border: transparent;
  font-family: 'Raleway', sans-serif;
  font-size: 14px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.2em;
  color: #ffffff;
  background-color: #f2cb05;
  cursor: pointer;
  outline: none;
  margin-bottom: 10px;
  margin-left: 5%;
}

.button2:hover {
  background-color: #e9a900;
}

.edit:hover {
  color: #033e8c;
}


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
						href="#submenu1" data-toggle="collapse" data-target="#submenu1">바자회
							관리 ▾</a>
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
					<table>
					  <thead>
					    <tr>
					      <th colspan="6">바자회 정보</th>
					    </tr>
					    <tr>
					      <th>바자회 이름</th>
					      <th>은행 이름</th>
					      <th>계좌 이름</th>
					      <th>바자회 시작 날짜</th>
					      <th>바자회 마감 날짜</th>
					      <th></th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${bazaarInfoData}" var="studentVO">
					    <input type="hidden" name="num" value="${studentVO.bazInfo_num}">
					    <tr>
					      <td>${studentVO.name}</td>
					      <td>${studentVO.bank}</td>
					      <td>${studentVO.account}</td>
					      <td>${studentVO.start}</td>
					      <td>${studentVO.end}</td>
					      <td>
					      <a href="Controller?cmd=studentCouncilBazzarInfoUpdateAction&number=${studentVO.bazInfo_num}">
					        <i class="material-icons button edit">edit</i>
					      </a>
					      </td>
					    </tr>
					  </c:forEach>
					  </tbody>
					</table>
					<a href="Controller?cmd=studentCouncilBazzarEnrollUI">
						<button class="button2" type="button">바자회 등록</button>
					</a>
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