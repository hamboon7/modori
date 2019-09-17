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
		<form class="form-inline" method="post"
			action="Controller?cmd=searchAction">
			<input name="word" class="form-control col-10" type="text"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success col-2" type="submit">
				Search</button>
		</form>
	</div>

	<div id="div_id_kinds" class="form-group required">

		<label for="id_kinds" class="control-label col-md-4  requiredField">1차
			상품분류</label>

		<div class="controls col-md-8 ">

			<select id="dropdown" name="category1">

				<option value="0">상품분류</option>

				<option value="area1">여성의류</option>

				<option id="2" value="area2">여성신발</option>

				<option id="3" value="area3">여성가방</option>

				<option id="4" value="area4">언더웨어</option>

				<option id="5" value="area5">지갑/벨트</option>

				<option id="6" value="area6">쥬얼리</option>

				<option id="7" value="area7">시계</option>

				<option id="8" value="area8">잡화/소품</option>

				<option id="9" value="area9">스킨케어</option>

				<option value="area10">메이크업</option>

				<option value="area11">선케어</option>

				<option value="area12">향수</option>

				<option value="area13">뷰티소품</option>

				<option value="area14">네일</option>

				<option value="area15">생필품</option>

				<option value="area16">뷰티소품</option>

				<option value="area17">문구류</option>

				<option value="area18">화방용품</option>

				<option value="area19">음반/DVD</option>

				<option value="area20">반려동물용품</option>

				<option value="area21">e티켓/공연/여행</option>

			</select>

		</div>

	</div>

	<div id="div_id_kinds" class="form-group required">

		<label for="id_kinds" class="control-label col-md-4  requiredField">2차
			상품종류</label>

		<div class="box col-md-8 " id="divarea1">

			<select class="2cha 11">

				<option value="">상품분류</option>

				<option value="111">원피스</option>

				<option value="112">블라우스</option>

				<option value="113">상의</option>

				<option value="114">바지</option>

				<option value="115">니트/스웨터</option>

				<option value="116">치마</option>

				<option value="117">아우터</option>

				<option value="118">트레이닝</option>

				<option value="119">기타</option>

			</select> <select class="2cha 22">

				<option value="">상품분류</option>

				<option value="121">힐</option>

				<option value="122">로퍼/플랫</option>

				<option value="123">샌달</option>

				<option value="124">부츠</option>

				<option value="125">스니커즈</option>

				<option value="126">기타</option>

			</select> <select class="2cha 33">
				<option value="">상품분류</option>
				<option value="131">숄더백</option>
				<option value="132">크로스백</option>
				<option value="133">클러치</option>
				<option value="134">백팩</option>
				<option value="135">에코백</option>
				<option value="136">기타</option>
			</select> <select class="2cha 44">
				<option value="">상품분류</option>
				<option value="141">파자마/홈웨어</option>
				<option value="142">브라</option>
				<option value="143">팬티</option>
				<option value="144">속옷세트</option>
				<option value="145">속바지</option>
				<option value="146">기타</option>
			</select> <select class="2cha 55">
				<option value="">상품분류</option>
				<option value="151">지갑</option>
				<option value="152">벨트</option>
				<option value="153">기타</option>
			</select> <select class="2cha 66">
				<option value="">상품분류</option>
				<option value="161">귀걸이</option>
				<option value="162">목걸이</option>
				<option value="163">반지</option>
				<option value="164">팔찌</option>
				<option value="165">헤어 액세서리</option>
				<option value="166">기타</option>
			</select> <select class="2cha 77">
				<option value="">상품분류</option>
				<option value="171">여성/남성시계</option>
				<option value="172">시계소품</option>
				<option value="173">기타</option>
			</select> <select class="2cha 88">
				<option value="">상품분류</option>
				<option value="181">스타킹/양말</option>
				<option value="182">모자</option>
				<option value="183">양산/우산</option>
				<option value="184">손수건</option>
				<option value="185">장갑</option>
				<option value="186">목도리/스카프</option>
				<option value="187">기타</option>


			</select> <select class="2cha 99">
				<option value="">상품분류</option>
				<option value="211">스킨/토너</option>
				<option value="212">로션/에멀젼</option>
				<option value="213">에센스/세럼</option>
				<option value="214">앰플</option>
				<option value="215">크림</option>
				<option value="216">미스트</option>
				<option value="217">오일</option>
				<option value="218">맥/마스크</option>
				<option value="219">클렌징</option>
				<option value="220">기타</option>
			</select> <select class="2cha 1010">
				<option value="">상품분류</option>
				<option value="221">페이스 메이크업</option>
				<option value="222">아이 메이크업</option>
				<option value="223">립 메이크업</option>
				<option value="224">치크/하이라이터</option>
				<option value="225">기타</option>
			</select> <select class="2cha 1111">
				<option value="">상품분류</option>
				<option value="231">선크림/선블록</option>
				<option value="232">선밤</option>
				<option value="233">선파우더/쿠션</option>
				<option value="234">선 스프레이</option>
				<option value="235">기타</option>
			</select> <select class="2cha 1212">
				<option value="">상품분류</option>
				<option value="241">여성/남성향수</option>
				<option value="242">공용향수</option>
				<option value="243">기타</option>
			</select> <select class="2cha 1313">
				<option value="">상품분류</option>
				<option value="251">페이스 소품</option>
				<option value="252">클렌징 소품</option>
				<option value="253">헤어 소품</option>
				<option value="254">피부관리기</option>
				<option value="255">용기/거울/기타제품</option>
			</select> <select class="2cha 1414">
				<option value="">상품분류</option>
				<option value="261">네일팁/스티커</option>
				<option value="262">일반 네일</option>
				<option value="263">젤 네일</option>
				<option value="264">큐티클/영양</option>
				<option value="265">네일케어도구</option>
				<option value="266">네일아트소품</option>
				<option value="267">기타</option>
			</select> <select class="2cha 1515">
				<option value="">상품분류</option>
				<option value="311">세탁세제</option>
				<option value="312">청소/주방세제</option>
				<option value="313">화장지/생리대</option>
				<option value="314">탈취/방향/살충</option>
				<option value="315">욕실용품</option>
				<option value="316">세탁/청소용품</option>
				<option value="317">수납/정리</option>
				<option value="318">생활잡화</option>
				<option value="319">주방 수납/잡화</option>
				<option value="320">건강/의료용품</option>
				<option value="321">공구</option>
				<option value="322">생활전기</option>
				<option value="323">안전/호신용품</option>
				<option value="324">기타</option>
			</select> <select class="2cha 1616">
				<option value="">상품분류</option>
				<option value="411">필기구</option>
				<option value="412">노트/수첩</option>
				<option value="413">다이어리/플래너</option>
				<option value="414">보드/칠판</option>
				<option value="415">복사용지</option>
				<option value="416">팬시용품</option>
				<option value="417">제도용품</option>
				<option value="418">카드/편지지</option>
				<option value="419">앨범</option>
				<option value="420">사무용품</option>
				<option value="421">화일</option>
				<option value="422">기타</option>
			</select> <select class="2cha 1717">
				<option value="">상품분류</option>
				<option value="431">연필/색연필</option>
				<option value="432">붓</option>
				<option value="433">물감</option>
				<option value="434">캔버스</option>
				<option value="435">이젤</option>
				<option value="436">칼라가이드/마카</option>
				<option value="437">조소용품</option>
				<option value="438">판화용품</option>
				<option value="439">페인팅/염색용품</option>
				<option value="440">미술보조용품</option>
				<option value="441">기타</option>
			</select> <select class="2cha 1818">
				<option value="">상품분류</option>
				<option value="451">음반</option>
				<option value="452">DVD</option>
				<option value="453">기타</option>
			</select> <select class="2cha 1919">
				<option value="">상품분류</option>
				<option value="511">컴퓨터/액세서리</option>
				<option value="512">휴대폰/액세서리</option>
				<option value="513">태블릿PC/액세서리</option>
				<option value="514">카메라/액세서리</option>
				<option value="515">계절가전</option>
				<option value="516">TV/영상가전</option>
				<option value="517">청소기</option>
				<option value="518">생활가전</option>
				<option value="519">미용가전</option>
				<option value="520">주방가전</option>
				<option value="521">차량용 디지털</option>
				<option value="522">기타</option>
			</select> <select class="2cha 2020">
				<option value="">상품분류</option>
				<option value="611">사료</option>
				<option value="612">간식</option>
				<option value="613">하우스/울타리</option>
				<option value="614">급식기/급수기</option>
				<option value="615">미용/목욕</option>
				<option value="616">배변용품</option>
				<option value="617">의류/패션</option>
				<option value="618">장난감/훈련용품</option>
				<option value="619">이동장/외출용품</option>
				<option value="620">건강관리</option>
				<option value="621">기타</option>
			</select> <select class="2cha 2121">
				<option value="">상품분류</option>
				<option value="711">숙박권</option>
				<option value="712">뮤지컬</option>
				<option value="713">연극</option>
				<option value="714">전시/행사</option>
				<option value="715">콘서트</option>
				<option value="716">기프티콘</option>
				<option value="717">기타</option>
			</select>
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
				<li class="media"><img src="img/${mainVO.img1}.png"
					class="mr-3" alt="${mainVO.img1}" width="100px" height="100px">
					<div class="media-body">
						<h5 class="mt-0 mb-1">
							<c:out value="${mainVO.name}" />
							<span class="badge badge-success"><c:out
									value="${mainVO.pro_condition}" /></span>
						</h5>
						가격
						<c:out value="${mainVO.price}" />
						<br> 상품상태 중

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
	<script src="./assets/js/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="./assets/bootstrap-4.3.1/js/bootstrap.min.js"></script>

	<script>
	$(document).ready(function(){
	      $(".2cha").hide();
	      $('#dropdown').change(function() {
	    var value = $(this).val();
	    $(".2cha").hide();
	     alert(value); 
	      if(value == "area1"){
	        $(".11").show();
	        $(".11").attr("name", "category2");
	      }else if(value == "area2"){
	        $(".22").show();
	        $(".22").attr("name", "category2");
	      }else if(value == "area3"){
	        $(".33").show();
	        $(".33").attr("name", "category2");
	      }else if(value == "area4"){
	        $(".44").show();
	        $(".44").attr("name", "category2");
	      }else if(value == "area5"){
	        $(".55").show();
	        $(".55").attr("name", "category2");
	      }else if(value == "area6"){
	        $(".66").show();
	        $(".66").attr("name", "category2");
	      }else if(value == "area7"){
	        $(".77").show();
	        $(".77").attr("name", "category2");
	      }else if(value == "area8"){
	        $(".88").show();
	        $(".88").attr("name", "category2");
	      }else if(value == "area9"){
	        $(".99").show();
	        $(".99").attr("name", "category2");
	      }else if(value == "area10"){
	        $(".1010").show();
	        $(".1010").attr("name", "category2");
	      }else if(value == "area11"){
	        $(".1111").show();
	        $(".1111").attr("name", "category2");
	      }else if(value == "area12"){
	        $(".1212").show();
	        $(".1212").attr("name", "category2");
	      }else if(value == "area13"){
	        $(".1313").show();
	        $(".1313").attr("name", "category2");
	      }else if(value == "area14"){
	        $(".1414").show();
	        $(".1414").attr("name", "category2");
	      }else if(value == "area15"){
	        $(".1515").show();
	        $(".1515").attr("name", "category2");
	      }else if(value == "area16"){
	        $(".1616").show();
	        $(".1616").attr("name", "category2");
	      }else if(value == "area17"){
	        $(".1717").show();
	        $(".1717").attr("name", "category2");
	      }else if(value == "area18"){
	        $(".1818").show();
	        $(".1818").attr("name", "category2");
	      }else if(value == "area19"){
	        $(".1919").show();
	        $(".1919").attr("name", "category2");
	      }else if(value == "area20"){
	        $(".2020").show();
	        $(".2020").attr("name", "category2");
	      }else if(value == "area21"){
	        $(".2121").show();
	        $(".2121").attr("name", "category2");
	      }
	    });
	});

		$(function() {
			'use strict'

			$('[data-toggle="offcanvas"]').on('click', function() {
				$('.offcanvas-collapse').toggleClass('open')
			})
		})
	</script>
</body>

</body>
</html>