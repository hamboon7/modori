<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${loginOK == null }">
	<c:redirect url="error.jsp" />
</c:if>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>MODORI</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 직접지정하는 경로----------------------------------------------------------------------------------------------------------- -->
<link href="css/main.css" rel="stylesheet">
<style>
.has-search .form-control {
	padding-left: 2.375rem;
	top: 10px;
}

.main {
	width: 50%;
	margin: 50px auto;
}

div.cards {
	margin: 80px auto;
	max-width: 960px;
	text-align: center;
}
</style>
<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			//아이디를 입력하시오! 경고메세지 띄어주기
			window.alert("검색어를 입력하시오.");
			//아이디 폼에 커서깜빠거리는 포커스 주기
			document.join.id.focus();
			//해당 아이디 폼 영역 선택하기 방법 1
			document.join.id.select();
			return false; //현재 submit이벤트를 중지하는 개념

		} else {//id, pass 모두 잘 입력받았따면? 이동!

			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>
</head>

<body>
	<jsp:include page="nav.jsp" />

	<div class="main">
		<form id="join" name="join" onsubmit="return validate();"
			method="post" action="Controller?cmd=searchAction">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색하기"
					name="word" id="id">
				<div class="input-group-append">
					<button class="btn btn-warning" type="button"
						onclick="CheckForm();">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
			<br>
			<div class="container">
				<div class="row">
					<div class="col">
						
						<select id="dropdown" name="category1" class="custom-select">
							
							<option value="0">상품분류</option>

							<option value="area1">여성의류</option>

							<option value="area2">여성신발</option>

							<option value="area3">여성가방</option>

							<option value="area4">언더웨어</option>

							<option value="area5">지갑/벨트</option>

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
					<div class="col">
						<select class="custom-select 2cha 11" id="a">

							<option>click</option>

							<option value="1101">원피스</option>
									<option value="1102">블라우스</option>
									<option value="1103">상의</option>
									<option value="1104">바지</option>
									<option value="1105">니트/스웨터</option>
									<option value="1106">치마</option>
									<option value="1107">아우터</option>
									<option value="1108">트레이닝</option>
									<option value="1109">기타</option>
						</select> 
						<select class="custom-select 2cha 22" id="b">

							<option>click</option>
							<option value="1201">힐</option>
									<option value="1202">로퍼/플랫</option>
									<option value="1203">샌달</option>
									<option value="1204">부츠</option>
									<option value="1205">운동화</option>
									<option value="1206">기타</option>
						</select> 
						<select class="custom-select 2cha 33" id="c">
							<option >click</option>
							<option value="1301">숄더백</option>
							<option value="1302">크로스백</option>
							<option value="1303">클러치</option>
							<option value="1304">백팩</option>
							<option value="1305">에코백</option>
							<option value="1306">기타</option>

						</select> 
						<select class="custom-select 2cha 44" id="d">
							<option >click</option>
							<option value="1401">파자마/홈웨어</option>
									<option value="1402">브라</option>
									<option value="1403">팬티</option>
									<option value="1404">속옷세트</option>
									<option value="1405">속바지</option>
									<option value="1406">기타</option>

						</select> 
						<select class="custom-select 2cha 55" id="e">
							<option >click</option>
							<option value="1501">지갑</option>
							<option value="1502">벨트</option>
							<option value="1503">기타</option>
						</select> 
						<select class="custom-select 2cha 66" id="f">
							<option >click</option>
							<option value="1601">귀걸이</option>
							<option value="1602">목걸이</option>
							<option value="1603">반지</option>
							<option value="1604">팔찌</option>
							<option value="1605">헤어 액세서리</option>
							<option value="1606">기타</option>
						</select> 
						<select class="custom-select 2cha 77" id="g">
							<option >click</option>
							<option value="1701">여성/남성시계</option>
							<option value="1702">시계소품</option>
							<option value="1703">기타</option>
						</select> 
						<select class="custom-select 2cha 88" id="h">
							<option >click</option>
							<option value="1801">스타킹/양말</option>
							<option value="1802">모자</option>
							<option value="1803">양산/우산</option>
							<option value="1804">손수건</option>
							<option value="1805">장갑</option>
							<option value="1806">목도리/스카프</option>
							<option value="1807">기타</option>


						</select> <select class="custom-select 2cha 99" id="i">
							<option >click</option>
							<option value="2101">스킨/토너</option>
							<option value="2102">로션/에멀젼</option>
							<option value="2103">에센스/세럼</option>
							<option value="2104">앰플</option>
							<option value="2105">크림</option>
							<option value="2106">미스트</option>
							<option value="2107">오일</option>
							<option value="2108">맥/마스크</option>
							<option value="2109">클렌징</option>
							<option value="2110">기타</option>
						</select> <select class="custom-select 2cha 1010" id="j">
							<option >click</option>
							<option value="2201">페이스 메이크업</option>
							<option value="2202">아이 메이크업</option>
							<option value="2203">립 메이크업</option>
							<option value="2204">치크/하이라이터</option>
							<option value="2205">기타</option>
						</select> <select class="custom-select 2cha 1111" id="k">
							<option >click</option>
							<option value="2301">선크림/선블록</option>
							<option value="2302">선밤</option>
							<option value="2303">선파우더/쿠션</option>
							<option value="2304">선 스프레이</option>
							<option value="2305">기타</option>
						</select> <select class="custom-select 2cha 1212" id="l">
							<option >click</option>
							<option value="2401">여성/남성향수</option>
							<option value="2402">공용향수</option>
							<option value="2403">기타</option>
						</select> <select class="custom-select 2cha 1313" id="n">
							<option >click</option>
							<option value="2501">페이스 소품</option>
							<option value="2502">클렌징 소품</option>
							<option value="2503">헤어 소품</option>
							<option value="2504">피부관리기</option>
							<option value="2505">용기/거울/기타제품</option>
						</select> <select class="custom-select 2cha 1414" id="m">
							<option >click</option>
							<option value="2601">네일팁/스티커</option>
							<option value="2602">일반 네일</option>
							<option value="2603">젤 네일</option>
							<option value="2604">큐티클/영양</option>
							<option value="2605">네일케어도구</option>
							<option value="2606">네일아트소품</option>
							<option value="2607">기타</option>
						</select> <select class="custom-select 2cha 1515" id="o">
							<option >click</option>
							<option value="3101">세탁세제</option>
							<option value="3102">청소/주방세제</option>
							<option value="3103">화장지/생리대</option>
							<option value="3104">탈취/방향/살충</option>
							<option value="3105">욕실용품</option>
							<option value="3106">세탁/청소용품</option>
							<option value="3107">수납/정리</option>
							<option value="3108">생활잡화</option>
							<option value="3109">주방 수납/잡화</option>
							<option value="3110">건강/의료용품</option>
							<option value="3111">공구</option>
							<option value="3112">생활전기</option>
							<option value="3113">안전/호신용품</option>
							<option value="3114">기타</option>
						</select> 
						<select class="custom-select 2cha 1616" id="p">
							<option >click</option>
							<option value="4101">필기구</option>
							<option value="4102">노트/수첩</option>
							<option value="4103">다이어리/플래너</option>
							<option value="4104">보드/칠판</option>
							<option value="4105">복사용지</option>
							<option value="4106">팬시용품</option>
							<option value="4107">제도용품</option>
							<option value="4108">카드/편지지</option>
							<option value="4109">앨범</option>
							<option value="4110">사무용품</option>
							<option value="4111">화일</option>
							<option value="4112">기타</option>
						</select> 
						<select class="custom-select 2cha 1717" id="q">
							<option >click</option>
							<option value="4201">연필/색연필</option>
									<option value="4202">붓</option>
									<option value="4203">물감</option>
									<option value="4204">캔버스</option>
									<option value="4205">이젤</option>
									<option value="4206">칼라가이드/마카</option>
									<option value="4207">조소용품</option>
									<option value="4208">판화용품</option>
									<option value="4209">페인팅/염색용품</option>
									<option value="4210">미술보조용품</option>
									<option value="4211">기타</option>

						</select> 
						<select class="custom-select 2cha 1818" id="r">
							<option >click</option>
							<option value="4301">음반</option>
							<option value="4302">DVD</option>
							<option value="4303">기타</option>
						</select> 
						<select class="custom-select 2cha 1919" id="s">
							<option >click</option>
							<option value="5101">컴퓨터/액세서리</option>
							<option value="5102">휴대폰/액세서리</option>
							<option value="5103">태블릿PC/액세서리</option>
							<option value="5104">카메라/액세서리</option>
							<option value="5105">계절가전</option>
							<option value="5106">TV/영상가전</option>
							<option value="5107">청소기</option>
							<option value="5108">생활가전</option>
							<option value="5109">미용가전</option>
							<option value="5110">주방가전</option>
							<option value="5111">차량용 디지털</option>
							<option value="5112">기타</option>
						</select> 
						<select class="custom-select 2cha 2020" id="t">
							<option >click</option>
							<option value="6101">사료</option>
							<option value="6102">간식</option>
							<option value="6103">하우스/울타리</option>
							<option value="6104">급식기/급수기</option>
							<option value="6105">미용/목욕</option>
							<option value="6106">배변용품</option>
							<option value="6107">의류/패션</option>
							<option value="6108">장난감/훈련용품</option>
							<option value="6109">이동장/외출용품</option>
							<option value="6110">건강관리</option>
							<option value="6121">기타</option>
						</select> <select class="custom-select 2cha 2121" id="u">
							<option >click</option>
							<option value="7101">숙박권</option>
							<option value="7102">뮤지컬</option>
							<option value="7103">연극</option>
							<option value="7104">전시/행사</option>
							<option value="7105">콘서트</option>
							<option value="7106">기프티콘</option>
							<option value="7107">기타</option>
						</select>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	
	<div class="cards">	
        <h1>중고거래</h1>
 
		<c:forEach items="${searchProductData}" var="mainVO">
			<div class="card">
				<img class="card__image" src="img/${mainVO.img1}" />
				<div class="card-title">
					<a href="#" class="toggle-info btn"> <span class="left"></span>
						<span class="right"></span>
					</a>
					<h2>
						<c:out value="${mainVO.name}" />
						<small><c:out value="${mainVO.price}" />원</small>
					</h2>
				</div>
				<div class="card-flap flap1">
					<div class="card-description">
						<c:out value="${mainVO.comment}" />
					</div>
					<div class="card-flap flap2">
						<div class="card-actions">
							<a href="#" class="btn">구매하기</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<c:forEach items="${search}" var="mainVO">
			<div class="card">
				<img class="card__image" src="img/${mainVO.img1}.png" />
				<div class="card-title">
					<a href="#" class="toggle-info btn"> <span class="left"></span>
						<span class="right"></span>
					</a>
					<h2>
						<c:out value="${mainVO.name}" />
						<small><c:out value="${mainVO.price}" />원</small>
					</h2>
				</div>
				<div class="card-flap flap1">
					<div class="card-description">
						<c:out value="${mainVO.comment}" />
					</div>
					<div class="card-flap flap2">
						<div class="card-actions">
							<a href="#" class="btn">구매하기</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<br>
		<c:forEach items="${searchBazaarData}" var="BazaarVO">
			<h1>바자회</h1>
			<div class="card">
				<img class="card__image" src="img/${BazaarVO.img1}.png" />
				<div class="card-title">
					<a href="#" class="toggle-info btn"> <span class="left"></span>
						<span class="right"></span>
					</a>
					<h2>
						<c:out value="${BazaarVO.name}" />
						<small><c:out value="${BazaarVO.price}" />원</small>
					</h2>
				</div>
				<div class="card-flap flap1">
					<div class="card-description">
						<c:out value="${BazaarVO.comment}" />
					</div>
					<div class="card-flap flap2">
						<div class="card-actions">
							<a href="#" class="btn">구매하기</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>

	<script src="https://kit.fontawesome.com/a32c0865ec.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

	<script type="text/javascript">
		
		$(document).ready(function() {
			var zindex = 10;

			$("div.card").click(function(e) {
				e.preventDefault();

				var isShowing = false;

				if ($(this).hasClass("show")) {
					isShowing = true
				}

				if ($("div.cards").hasClass("showing")) {
					// a card is already in view
					$("div.card.show").removeClass("show");

					if (isShowing) {
						// this card was showing - reset the grid
						$("div.cards").removeClass("showing");
					} else {
						// this card isn't showing - get in with it
						$(this).css({
							zIndex : zindex
						}).addClass("show");

					}

					zindex++;

				} else {
					// no cards in view
					$("div.cards").addClass("showing");
					$(this).css({
						zIndex : zindex
					}).addClass("show");

					zindex++;
				}

			});
		});

		$(document).ready(function() {

			$(".2cha").hide();
			$('#dropdown').change(function() {
				$(".2cha").hide();
				var value = $(this).val();
				var a = $(".11").val();
				
				if ((value == "area1")&&($(".11").val() == "click")){
					$("#a option:eq(0)").prop("value", "110");
				} else if ((value == "area2")&&($(".22").val() == "click")){
					$("#b option:eq(0)").prop("value", "120");
				} else if ((value == "area3")&&($(".33").val() == "click")){
					$("#c option:eq(0)").prop("value", "130");
				}else if ((value == "area4")&&($(".44").val() == "click")){
					$("#d option:eq(0)").prop("value", "140");
				}else if ((value == "area5")&&($(".55").val() == "click")){
					$("#e option:eq(0)").prop("value", "15");
				}else if ((value == "area6")&&($(".66").val() == "click")){
					$("#f option:eq(0)").prop("value", "16");
				}else if ((value == "area7")&&($(".77").val() == "click")){
					$("#g option:eq(0)").prop("value", "17");
				}else if ((value == "area8")&&($(".88").val() == "click")){
					$("#h option:eq(0)").prop("value", "18");
				}else if ((value == "area9")&&($(".99").val() == "click")){
					$("#i option:eq(0)").prop("value", "21");
				}else if ((value == "area10")&&($(".1010").val() == "click")){
					$("#j option:eq(0)").prop("value", "22");
				}else if ((value == "area11")&&($(".1111").val() == "click")){
					$("#k option:eq(0)").prop("value", "23");
				}else if ((value == "area12")&&($(".1212").val() == "click")){
					$("#l option:eq(0)").prop("value", "24");
				}else if ((value == "area13")&&($(".1313").val() == "click")){
					$("#m option:eq(0)").prop("value", "25");
				}else if ((value == "area14")&&($(".1414").val() == "click")){
					$("#n option:eq(0)").prop("value", "26");
				}else if ((value == "area15")&&($(".1515").val() == "click")){
					$("#o option:eq(0)").prop("value", "31");
				}else if ((value == "area16")&&($(".1616").val() == "click")){
					$("#p option:eq(0)").prop("value", "41");
				}else if ((value == "area17")&&($(".1717").val() == "click")){
					$("#q option:eq(0)").prop("value", "42");
				}else if ((value == "area18")&&($(".1818").val() == "click")){
					$("#r option:eq(0)").prop("value", "43");
				}else if ((value == "area19")&&($(".1919").val() == "click")){
					$("#s option:eq(0)").prop("value", "51");
				}else if ((value == "area20")&&($(".2020").val() == "click")){
					$("#t option:eq(0)").prop("value", "61");
				}else if ((value == "area21")&&($(".2121").val() == "click")){
					$("#u option:eq(0)").prop("value", "71");
				}
				
				
				
				
				if (value == "area1") {
					$(".11").show();
					$(".11").attr("name", "category2");
				} else if (value == "area2") {
					$(".22").show();
					$(".22").attr("name", "category2");
				} else if (value == "area3") {
					$(".33").show();
					$(".33").attr("name", "category2");
				} else if (value == "area4") {
					$(".44").show();
					$(".44").attr("name", "category2");
				} else if (value == "area5") {
					$(".55").show();
					$(".55").attr("name", "category2");
				} else if (value == "area6") {
					$(".66").show();
					$(".66").attr("name", "category2");
				} else if (value == "area7") {
					$(".77").show();
					$(".77").attr("name", "category2");
				} else if (value == "area8") {
					$(".88").show();
					$(".88").attr("name", "category2");
				} else if (value == "area9") {
					$(".99").show();
					$(".99").attr("name", "category2");
				} else if (value == "area10") {
					$(".1010").show();
					$(".1010").attr("name", "category2");
				} else if (value == "area11") {
					$(".1111").show();
					$(".1111").attr("name", "category2");
				} else if (value == "area12") {
					$(".1212").show();
					$(".1212").attr("name", "category2");
				} else if (value == "area13") {
					$(".1313").show();
					$(".1313").attr("name", "category2");
				} else if (value == "area14") {
					$(".1414").show();
					$(".1414").attr("name", "category2");
				} else if (value == "area15") {
					$(".1515").show();
					$(".1515").attr("name", "category2");
				} else if (value == "area16") {
					$(".1616").show();
					$(".1616").attr("name", "category2");
				} else if (value == "area17") {
					$(".1717").show();
					$(".1717").attr("name", "category2");
				} else if (value == "area18") {
					$(".1818").show();
					$(".1818").attr("name", "category2");
				} else if (value == "area19") {
					$(".1919").show();
					$(".1919").attr("name", "category2");
				} else if (value == "area20") {
					$(".2020").show();
					$(".2020").attr("name", "category2");
				} else if (value == "area21") {
					$(".2121").show();
					$(".2121").attr("name", "category2");
				} else if ((value == "area1")&&($(".11").val() == "click")){
					alert("녀기까진 온다");
					$("#a option:eq(0)").prop("value", "11");
				}
				
			});
		});
						
		
	</script>
</body>
</html>