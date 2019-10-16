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
.navbar-inverse .navbar-nav .nav-link {
    color: #fff;
}
#sidebar {
	padding-left: 0;
}

a.nav-link {
	color: #000;
}

.card {
	margin-bottom: 10px;
}

.card-deck {
	width: 50%;
	display: inline;
}

#menu {
	background-color: #e9e9e9;
}

#submenu2 {
	background-color: #fff;
}
.card-body {
	padding: 10px;
}

.price {
	text-decoration: line-through;
}

.badge {
	top: 5px;
}

.button2 {
  float: center;
  display: inline-block;
  height: 50px;
  width: 100%;
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
}

.button2:hover {
  background-color: #e9a900;
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
		width: 100%;
		height: 100%;
	}
	.card {
		margin-bottom: 10px;
	}
	
	.card-deck {
		width: 100%;
	}
	
	.card-deck img {
		height: 400px;
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
		width: 100%;
	}
	.card {
		margin-bottom: 10px;
	}
	
	.card-deck {
		width: 100%;
	}
	.card-deck img {
		height: 400px;
	}
}

.card {
	overflow: hidden;
}

.card-block .rotate {
	z-index: 8;
	height: 100%;
}

.card-block .rotate i {
	color: rgba(20, 20, 20, 0.15);
	position: absolute;
	left: 0;
	left: auto;
	right: -10px;
	bottom: 0;
	display: inline-block;
	-webkit-transform: rotate(-44deg);
	-moz-transform: rotate(-44deg);
	-o-transform: rotate(-44deg);
	-ms-transform: rotate(-44deg);
	transform: rotate(-44deg);
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
				<li class="nav-item active"><a class="nav-link">학생회 관리자</a></li>
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
					<li class="nav-item"><a class="nav-link"
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
					<li class="nav-item" id="menu"><a class="nav-link" href="#submenu2"
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
				<c:forEach items="${bookInfoCalData}" var="studentVO">
					<p class="lead hidden-xs-down">6회 바자회 관리</p>
					<div class="row mb-3">
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-success">
								<div class="card-block bg-success">
									<div class="rotate">
										<i class="fa fa-book fa-5x"></i>
									</div>
									<h4 class="text-uppercase">총 책수(훼손 제외)</h4>
									<h2 class="display-1">${studentVO.allCount}</h2>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-danger">
								<div class="card-block bg-danger">
									<div class="rotate">
										<i class="fa fa-book fa-4x"></i>
									</div>
									<h4 class="text-uppercase">총 훼손수</h4>
									<h2 class="display-1">
										${studentVO.allDamage}
									</h2>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-primary">
								<div class="card-block bg-primary">
									<div class="rotate">
										<i class="fa fa-book fa-4x"></i>
									</div>
									<h4 class="text-uppercase">총 대출수/예약수</h4>
									<h2 class="display-1">
										${studentVO.allRental}/${studentVO.allBooking}
									</h2>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-6">
							<div class="card card-inverse card-info">
								<div class="card-block bg-info">
									<div class="rotate">
										<i class="fa fa-book fa-4x"></i>
									</div>
									<h4 class="text-uppercase">총 반납수</h4>
									<h2 class="display-1">
										${studentVO.allReturn}
									</h2>
								</div>
							</div>
						</div>
					</div>
					<!--/row-->

				</c:forEach>
				<hr>
				<div class="card-deck-wrapper col-md-9 col-lg-10">
					<div class="card-deck">
						<c:forEach items="${bookInfoData}" var="studentVO">
							<div class="card">
							<input type="hidden" name="num" value="${studentVO.reservation_num}">
							<input type="hidden" name="num" value="${studentVO.book_num}">
							<img class="card__image" src="img/${studentVO.book_img}" height="300" />
							<div class="card-body">
								<h4 class="card-title">
									<c:out value="${studentVO.book_name}" />
									<c:choose>
										<c:when test="${studentVO.book_condition == 0}">
											<span class="badge badge-warning">반납</span>
										</c:when>
										<c:when test="${studentVO.book_condition == 1}">
											<span class="badge badge-warning">대여 중</span>
										</c:when>
										<c:otherwise>
											<span class="badge badge-warning">예약 중</span>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${studentVO.book_enroll_condition == 3}">
											<span class="badge badge-danger">훼손</span>
										</c:when>
									</c:choose>
								</h4>
								<h5>
									예약자 : ${studentVO.stu_num}
								</h5>
								<h5>
									대출날짜 : ${studentVO.rental_date}
								</h5>
								<h5>
									반납날짜 : ${studentVO.return_date}
								</h5>
								<div>
								<c:choose>
									<c:when test="${studentVO.book_enroll_condition == 2}">
										<a href="Controller?cmd=bookReturnAction&number=${studentVO.reservation_num}&number2=${studentVO.book_num}"">
											<button class="button2" type="button">반납상태 변경</button>
										</a>
									</c:when>
									<c:when test="${studentVO.book_enroll_condition == 1}">
										<a href="Controller?cmd=bookReturnAction&number=${studentVO.reservation_num}&number2=${studentVO.book_num}"">
											<button class="button2" type="button">반납상태 변경</button>
										</a>
									</c:when>
									<c:otherwise></c:otherwise>
								</c:choose>
								</div>
								<div>
								<c:choose>
									<c:when test="${studentVO.book_enroll_condition == 3}">
									</c:when>
									<c:otherwise>
										<a href="Controller?cmd=studentCouncilDamageAction&number=${studentVO.book_num}">
											<button class="button2" type="button">훼손상태 변경</button>
										</a>
									</c:otherwise>
								</c:choose>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!--/card-columns-->
	</div>
	<!--/main col-->
	<!--/.container-->

	<script>
    // sandbox disable popups
    if (window.self !== window.top && window.name != "view1") {
      window.alert = function() {
        /*disable alert*/
      };
      window.confirm = function() {
        /*disable confirm*/
      };
      window.prompt = function() {
        /*disable prompt*/
      };
      window.open = function() {
        /*disable open*/
      };
    }
    
    // prevent href=# click jump
    document.addEventListener(
      "DOMContentLoaded",
      function() {
        var links = document.getElementsByTagName("A");
        for (var i = 0; i < links.length; i++) {
          if (links[i].href.indexOf("#") != -1) {
            links[i].addEventListener("click", function(e) {
              console.debug("prevent href=# click");
              if (this.hash) {
                if (this.hash == "#") {
                  e.preventDefault();
                  return false;
                } else {
                  /*
                      var el = document.getElementById(this.hash.replace(/#/, ""));
                      if (el) {
                        el.scrollIntoView(true);
                      }
                      */
                }
              }
              return false;
            });
          }
        }
      },
      false
    );
  </script>

	<!--scripts loaded here-->

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>


	<script>
    $(document).ready(function() {
      $("[data-toggle=offcanvas]").click(function() {
        $(".row-offcanvas").toggleClass("active");
      });
    });
  </script>

</body>

</html>