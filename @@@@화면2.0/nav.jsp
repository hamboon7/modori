<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
ul.nav.justify-content-center {
	height: 70px;
	box-shadow: 0px 1px 9px -5px;
	padding: 15px 0 0 0;
}

a.nav-link {
	margin-top: -3px;
	color: #000;
	font-size: 11px;
}

.material-icons {
	font-size: 25px;
}

.navfont {
	margin: -4px 0 0 2px;
	color: #000;
}

.ca {
	margin-left: -7px;
}

.me {
	margin-left: -3px;
}

.cca {
	margin-right: -12px;
}

.fl {
	margin-left: -4px;
}

.activeee {
	color: #F2CB05;
}

small {
	position: absolute;
	right: 10px;
	top: 5px;
}
</style>

</head>

<body>
	<ul class="nav justify-content-center">
		<li class="nav-item ">
		<a class="nav-link " href="Controller?cmd=mainAction"> <i
				class="material-icons first">search</i>
				<div class="navfont">검색</div></a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link cca " href="Controller?cmd=categoryUI">
		<i class="material-icons secon">menu</i>
				<div class="navfont ca">카테고리</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link third" href="Controller?cmd=bazaarAction"><i
				class="material-icons third">turned_in_not</i>
				<div class="navfont bo">서적</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link " href="#"><i
				class="material-icons furth">local_florist</i>
				<div class="navfont fl">EVENT</div> </a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link " href="Controller?cmd=myPageAction"><i
				class="material-icons five">person</i>
				<div class="navfont me">내정보</div> </a>
		</li>
		
		<a href="Controller?cmd=logoutAction"><small>로그아웃</small></a>
	</ul>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/nav.js"></script>
	
</body>

</html>