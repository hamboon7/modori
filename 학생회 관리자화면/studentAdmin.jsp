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
.navbar-inverse .navbar-nav .nav-link {
    color: #fff;
}

#sidebar {
	padding-left: 0;
}

a.nav-link {
	color: #000;
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
		width: 45%;
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
				<li class="logout nav-item"><a class="nav-link"
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
				<div>
					<h5>바자회 통계</h5>
					<canvas class="my-4" id="myChart" width="900" height="380"></canvas>
				</div>
				<hr>
				<br>
				<div>
					<h5>도서 대여/예약 통계</h5>
					<c:forEach items="${bookInfoCalData}" var="studentVO">
						<p class="allBook">총 책 수(반납수+대여수) : ${studentVO.allCount}권</p>
					</c:forEach>
					<canvas class="my-4" id="myChart2" width="900" height="380"></canvas>
				</div>
			</div>
		</div>
		<!--/card-columns-->
	</div>
	<!--/main col-->
	<!--/.container-->

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      const countData = <c:forEach items="${studentBazaarData}" var="bazaar">[${bazaar.count1}, ${bazaar.count2}, ${bazaar.count3}, 
		${bazaar.count4}, ${bazaar.count5}, ${bazaar.count6}]</c:forEach>;
      const sumData = <c:forEach items="${studentBazaarData}" var="bazaar">[${bazaar.sum1}, ${bazaar.sum2}, 
		${bazaar.sum3}, ${bazaar.sum4}, ${bazaar.sum5}, ${bazaar.sum6}]</c:forEach>;
	  const bookData = <c:forEach items="${bookInfoCalData}" var="book">[${book.allRental}, ${book.allBooking}, 
		  ${book.allReturn}, ${book.allDamage}]</c:forEach>;
	  data = {
			datasets: [{
				backgroundColor: ['rgba(255, 0, 0, 0.1)', 'rgba(0, 255, 0, 0.1)', 'rgba(0, 0, 255, 0.1)'],
				data: bookData
			}],
			labels: ['대여 중', '예약 중', '반납', '훼손']
	  };
	  
	  var ctx1 = document.getElementById("myChart");
	  
      var mixedChart = {
		type: 'bar',
		labels: ["1회", "2회", "3회", "4회", "5회", "6회"],
	    datasets: [{
			   label: '바자회 회차별 책 수(권)',
			   data: countData,
			   yAxisID: 'A',
			   backgroundColor: 'rgba(0, 0, 255, 0.1)',
			},
			{
			   label: '바자회 회차별 매출(원)',
			   data: sumData,
			   yAxisID: 'B',
			   backgroundColor: 'transparent',
			   borderColor: '#f2cb05',
			   pointBackgroundColor: '#f2cb05',
			   type: 'line'
			}]
	  };
      var myChart = new Chart(ctx1, {
        type: 'bar',
        data: mixedChart,
        options: {
			scales: {
				yAxes: [{
					id: 'A',
					type: 'linear', 
				    position: 'left', 
					ticks: {
						max: 7,
						beginAtZero: true,
						stepSize: 1,
					}
				},
				{
					id: 'B',
					type: 'linear', 
				    position: 'right', 
					ticks: {
						max: 14000,
						beginAtZero: true,
						stepSize: 2000,
					}
				}]
			},
          	legend: {
				display: true,
          }
        }
      });
	  
      var ctx2 = document.getElementById("myChart2");
		
      var myChart2 = new Chart(ctx2, {
        type: 'doughnut',
        data: data,
        options: {
        	legend: {
				display: true,
	        }
	      }
      });
    </script>
</body>

</html>