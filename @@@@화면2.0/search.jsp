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
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
	
<style>
/*--------------------body--------------------------------------------------------*/
body {overflow-y: hidden;}
.page {
  min-height: calc(100vh - 56px);
  max-height: calc(100vh - 56px);
  width: 100%;
  left: 0;
  will-change: transform;
  -webkit-overflow-scrolling: touch;
   overflow-y:scroll; 
}

.main {
  display: flex;
  align-items: flex-start;
  flex-wrap: wrap;
  justify-content: center;
  transition: -webkit-transform .3s;
  transition: transform .3s;
  transition: transform .3s, -webkit-transform .3s;
  
}
.main.disabled {
  -webkit-transform: translateX(-100%);
          transform: translateX(-100%);
}

.cardee {
  flex: auto;
  align-self: flex-start;
  height: 0px;
  width: 200px;
  min-width: 175px;
  max-width: 225px;
  margin: 6px;
  position: relative;
  
}
.pname {
  content: '';
  background: #FFF;
  height: 40px;
  width: 100%;
  padding: 5px;
  position: absolute;
  bottom: 0;
  left: 0;
  text-align: center;
  font-size: 10px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.badg {
    font-size: 55%;
    font-weight: 700;
    padding: 1px 6px 2px 5px;
    color: black;
    position: relative;
    top: -1px;
    text-shadow: none !important;
    white-space: nowrap;
    letter-spacing: 0;
    position: absolute;
}
.badge-ing {
    background: #ffdd40;
}
.badge-com {
    background: #808080;
    color: #fff;
}

.cardee img {
  width: 100%;
}

.ripple {
  overflow: hidden;
  position: relative;
  -webkit-transform: translateZ(0);
          transform: translateZ(0);
}
.ripple .rippling {
  position: absolute;
  border-radius: 50%;
  background-color: #000;
  pointer-events: none;
  padding: 0;
  margin: 0;
  opacity: .2;
  -webkit-transform: translate3d(-50%, -50%, 0);
          transform: translate3d(-50%, -50%, 0);
  will-change: width, height;
}
@media (max-width: 756px) {
  .cardee {
    width: 25vw;
    min-width: 100px;
    max-width: 28vw;
  }
}
@media (max-width: 480px) {
  .cardee {
    width: 35vw;
    min-width: 80px;
    max-width: 45vw;
  }
}
.bott{
  margin-bottom: 500px;
}

/*------------------------검색-------------------------------------------------*/

.search-form {
  position: relative;
  top:25px;
  left: 145px;
  margin: 5px auto 20px auto;
  width: 290px;
  height: 40px;
  border-radius: 40px;
  box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  background: #F2CB05;
  transition: all 0.3s ease;
}
.search-form.focus {
  box-shadow: 0 3px 4px rgba(0, 0, 0, 0.15);
}

.search-input {
  position: absolute;
  top: 10px;
  left: 30px;
  font-size: 14px;
  background: none;
  color: #5a6674;
  width: 195px;
  height: 20px;
  border: none;
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  outline: none;
}
.search-input::-webkit-search-cancel-button {
  -webkit-appearance: none;
          appearance: none;
}

.search-button {
  position: absolute;
  top: 10px;
  left: 250px;
  height: 20px;
  width: 20px;
  padding: 0;
  margin: 0;
  border: none;
  background: none;
  outline: none !important;
  cursor: pointer;
  -webkit-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
.search-button svg {
  width: 20px;
  height: 20px;
  fill: #5a6674;
}

.fa-arrow-left {
  position: absolute;
  top: 22px;
  left: 10px;
  color: #000;
}
/*탭----------------------------------------------------------------------------*/

.tabs-buttons {
  height: auto;
  box-shadow: inset 0 -2px #e6e6e6;
}
.tabs-buttons .swiper-wrapper {
  display: flex;
  justify-content: space-between;
}
.tabs-buttons .swiper-slide {
  width: auto;
  height: auto;
  padding: 1rem 2rem;
  cursor: pointer;
  border-bottom: 2px solid transparent;
  
}
.tabs-buttons .active-tab {
  opacity: 1;
  border-bottom-color: red;
}
 /*--------------------------------------------------------------------검색필터-------------------------------------------------*/

.hamburger {
  position: fixed;
  top: 13px;
  right: -6px;
  color: #000;
  cursor: pointer;
  z-index: 1000;
  padding: 10px 15px 5px;
}

.menu {
  width: 250px;
  height: 100%;
  padding: 75px 20px 0;
  background-color: #F2CB05;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
  position: fixed;
  right: -100%;
  top: 0;
  opacity: 0;
  z-index: 999;
  margin-top: 0;
  -webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  transition: all 0.2s ease;
}

.open .menu {
  right: 0;
  opacity: 1;
  -webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  transition: all 0.2s ease;
}


.menu:hover {
  overflow-y: auto;
}
h4 {margin: -43px 0 0 0;}
.main {
  margin-top: 10px;
}
p {
  margin: 0 0 10px -16px;
}
.row {
  margin: 0 0 30px 0;
}
#dropdown {
  margin: 0 0 10px 0;
}


ul{
	list-style-type: none;
  color: #000;
	width: 220px;
	margin: 0 0 0 -50px;
}

li {
	position: relative;
	padding: 10px;
	padding-left: 40px;
	height:30px;
}

label:before {
    content: "";
    width: 10px;
    height: 10px;
    background: #fff;
    position: absolute;
    left: 4px;
		top: calc(50% - 6px);
    box-sizing: border-box;
    border-radius: 50%;
}

input[type="radio"] {
	opacity: 0;
	-webkit-appearance: none;
	display: inline-block;
	vertical-align: middle;
	z-index: 100;
	margin: 0;
	padding: 0;
  width: 100%;
	height: 30px;
	position: absolute;
	left: 0;
	top: calc(50% - 15px);
	cursor: pointer;
}

.bullet {
    position: relative;
    width: 25px;
    height: 25px;
    left: -3px;
    top: 2px;
    border: 5px solid #fff;
    opacity: 0;
    border-radius: 50%;
}

input[type="radio"]:checked ~ .bullet {
	position:absolute;
	opacity: 1;
	animation-name: explode;
	animation-duration: 0.350s;
}

.line {
	position: absolute;
	width: 10px;
	height: 2px;
	background-color: #fff;
	opacity:0;
}

.line.zero {
	left: 11px;
	top: -21px;
	transform: translateY(20px);
	width: 2px;
	height: 10px;
}

.line.one {
	right: -7px;
	top: -11px;
	transform: rotate(-55deg) translate(-9px);
}

.line.two {
	right: -20px;
	top: 11px;
	transform: translate(-9px);
}

.line.three {
	right: -8px;
	top: 35px;
	transform: rotate(55deg) translate(-9px);
}

.line.four {
	left: -8px;
	top: -11px;
	transform: rotate(55deg) translate(9px);
}

.line.five {
	left: -20px;
	top: 11px;
	transform: translate(9px);
}

.line.six {
	left: -8px;
	top: 35px;
	transform: rotate(-55deg) translate(9px);
}

.line.seven {
	left: 11px;
	bottom: -21px;
	transform: translateY(-20px);
	width: 2px;
	height: 10px;
}

input[type="radio"]:checked ~ .bullet .line.zero{
	animation-name:drop-zero;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.one{
	animation-name:drop-one;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.two{
	animation-name:drop-two;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.three{
	animation-name:drop-three;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.four{
	animation-name:drop-four;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.five{
	animation-name:drop-five;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.six{
	animation-name:drop-six;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

input[type="radio"]:checked ~ .bullet .line.seven{
	animation-name:drop-seven;
	animation-delay: 0.100s;
	animation-duration: 0.9s;
	animation-fill-mode: forwards;
}

@keyframes explode {
	0%{
		opacity: 0;
		transform: scale(10);
	}
	60%{
		opacity: 1;
		transform: scale(0.5);
	}
	100%{
		opacity: 1;
		transform: scale(1);
	}
}

@keyframes drop-zero {
	0% {
		opacity: 0;
		transform: translateY(20px);
		height: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: translateY(-2px);
		height: 0px;
		opacity:0;
	}
}

@keyframes drop-one {
	0% {
		opacity: 0;
		transform: rotate(-55deg) translate(-20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: rotate(-55deg) translate(9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-two {
	0% {
		opacity: 0;
		transform: translate(-20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: translate(9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-three {
	0% {
		opacity: 0;
		transform: rotate(55deg) translate(-20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: rotate(55deg) translate(9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-four {
	0% {
		opacity: 0;
		transform: rotate(55deg) translate(20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: rotate(55deg) translate(-9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-five {
	0% {
		opacity: 0;
		transform: translate(20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: translate(-9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-six {
	0% {
		opacity: 0;
		transform: rotate(-55deg) translate(20px);
		width: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: rotate(-55deg) translate(-9px);
		width: 0px;
		opacity:0;
	}
}

@keyframes drop-seven {
0% {
		opacity: 0;
		transform: translateY(-20px);
		height: 10px;
	}
	20% {
		opacity:1;
	}
	100% {
		transform: translateY(2px);
		height: 0px;
		opacity:0;
	}
}


input[type=submit]{
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #000;
  width: 100%;
  border: 0;
  margin-top: 30px;
  padding: 15px;
  color: #fff;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
input[type=submit]:hover {
  background: #fff;
  color: #000;
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
<div>
  <a href="Controller?cmd=mainAction"><i class="fas fa-arrow-left fa-lg"></i></a>
   <nav class="navigation">
    <div class="hamburger">
      <i class="fas fa-filter fa-lg"></i>
    </div>
   
    <div class="menu">
      <h4><strong>검색 필터</strong></h4>
      <br/>
      
      
       <div class="main">
		    <form id="join" name="join" onsubmit="return validate();"
			  method="post" action="Controller?cmd=search2Action">
      
			<div class="container">
        <p><strong>카테고리</strong></p>
				<div class="row">
					
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
        
       <div class="container">
         <p><strong>정렬조건</strong></p>
	<ul>
		<li>
			<input checked type="radio" name="1">
			<label>최신순</label>
			<div class="bullet">
				<div class="line zero"></div>
				<div class="line one"></div>
				<div class="line two"></div>
				<div class="line three"></div>
				<div class="line four"></div>
				<div class="line five"></div>
				<div class="line six"></div>
				<div class="line seven"></div>
			</div>
		</li>
		<li>
			<input type="radio" name="1">
			<label>낮은 가격순</label>
			<div class="bullet">
				<div class="line zero"></div>
				<div class="line one"></div>
				<div class="line two"></div>
				<div class="line three"></div>
				<div class="line four"></div>
				<div class="line five"></div>
				<div class="line six"></div>
				<div class="line seven"></div>
			</div>
		</li>
		<li>
			<input type="radio" name="1">
			<label>높은 가격순</label>
			<div class="bullet">
				<div class="line zero"></div>
				<div class="line one"></div>
				<div class="line two"></div>
				<div class="line three"></div>
				<div class="line four"></div>
				<div class="line five"></div>
				<div class="line six"></div>
				<div class="line seven"></div>
			</div>
		</li>
	</ul>
</div>
           <div class=button><input type="submit" value="적용"></div>
          
		</form>
	  </div>
              
      
    </div>
  </nav>
  <form class="search-form" id="join" name="join" onsubmit="return validate();"
			method="post" action="Controller?cmd=searchAction">
  <button type="submit" class="search-button" onclick="CheckForm();">
    <svg class="submit-button">
      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#search"></use>
    </svg>
  </button>
  <input type="search" value="${word}" class="search-input"  name="word" id="id">
  <svg xmlns="http://www.w3.org/2000/svg" width="0" height="0" display="none">
  <symbol id="search" viewBox="0 0 32 32">
    <path d="M 19.5 3 C 14.26514 3 10 7.2651394 10 12.5 C 10 14.749977 10.810825 16.807458 12.125 18.4375 L 3.28125 27.28125 L 4.71875 28.71875 L 13.5625 19.875 C 15.192542 21.189175 17.250023 22 19.5 22 C 24.73486 22 29 17.73486 29 12.5 C 29 7.2651394 24.73486 3 19.5 3 z M 19.5 5 C 23.65398 5 27 8.3460198 27 12.5 C 27 16.65398 23.65398 20 19.5 20 C 15.34602 20 12 16.65398 12 12.5 C 12 8.3460198 15.34602 5 19.5 5 z" />
  </symbol>
</svg>
    
  </form>
  </div>
  
<div class="swiper-container tabs-buttons">
  <div class="swiper-wrapper">
    <div class="swiper-slide active-tab">중고거래</div>
    <div class="swiper-slide">서적</div>
    <div class="swiper-slide">EVENT</div>
  </div>
  <div class="swiper-scrollbar"></div>
</div>	

	<div class="swiper-container tabs-content">
  		<div class="swiper-wrapper">
    		<div class="swiper-slide">
      		<div class="page main">
		<c:forEach items="${search}" var="mainVO">
			<div class="cardee ripple">
				<c:choose>
			       <c:when test="${mainVO.sell_condition == '거래 중'}">
			           <span class="badg badge-ing"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:when test="${mainVO.sell_condition == '거래 완료'}">
			           <span class="badg badge-com"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:otherwise>
			           <span class="badge"></span>
			       </c:otherwise>
			   </c:choose>
				<a href="Controller?cmd=productPurchaseAction&number=${mainVO.num}">
					<img src="img/${mainVO.img1}"/>
				</a>
				<div class="pname">
					<c:out value="${mainVO.name}" /> <br/>
					<h6 class="lead"><c:out value="${mainVO.price}" /></h6>
				</div>
			</div>
		</c:forEach>
		<c:forEach items="${searchProductData}" var="mainVO">
			<div class="cardee ripple">
				<c:choose>
			       <c:when test="${mainVO.sell_condition == '거래 중'}">
			           <span class="badg badge-ing"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:when test="${mainVO.sell_condition == '거래 완료'}">
			           <span class="badg badge-com"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:otherwise>
			           <span class="badge"></span>
			       </c:otherwise>
			   </c:choose>
				<a href="Controller?cmd=productPurchaseAction&number=${mainVO.num}">
					<img src="img/${mainVO.img1}"/>
				</a>
				<div class="pname">
					<c:out value="${mainVO.name}" /> <br/>
					<h6 class="lead"><c:out value="${mainVO.price}" /></h6>
				</div>
			</div>
		</c:forEach>
		<div class="bott"></div>
	</div>
    		</div>
   		 
   		 	<div class="swiper-slide">
      		<div class="page main">
		<c:forEach items="${searchBazaarData}" var="mainVO">
			<div class="cardee ripple">
				<c:choose>
			       <c:when test="${mainVO.sell_condition == '거래 중'}">
			           <span class="badg badge-ing"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:when test="${mainVO.sell_condition == '거래 완료'}">
			           <span class="badg badge-com"><c:out value="${mainVO.sell_condition}" /></span>
			       </c:when>
			       <c:otherwise>
			           <span class="badge"></span>
			       </c:otherwise>
			   </c:choose>
				<a href="Controller?cmd=productPurchaseAction&number=${mainVO.num}">
					<img src="img/${mainVO.img1}"/>
				</a>
				<div class="pname">
					<c:out value="${mainVO.name}" /> <br/>
					<h6 class="lead"><c:out value="${mainVO.price}" /></h6>
				</div>
			</div>
		</c:forEach>
		<div class="bott"></div>
	</div>
    		</div>
   		 </div>
    </div>
    
    
    
    
    
    
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.min.js"></script>

	<script type="text/javascript">

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
						
		// Card Height

		$(window).resize(function() {
		  $('.cardee').each(function() {
		    $(this).height($(this).width() + 50);
		  });
		}).resize();

		// Ripple Effect

		$(document).on('click', '.ripple', function(e) {
		  
		  var $ripple = $('<span class="rippling" />'),
		      $button = $(this),
		      btnOffset = $button.offset(),
		      xPos = e.pageX - btnOffset.left,
		      yPos = e.pageY - btnOffset.top,
		      size = 0,
		      animateSize = parseInt(Math.max($button.width(), $button.height()) * Math.PI);

		  $ripple.css({
		      top: yPos,
		      left: xPos,
		      width: size,
		      height: size,
		      backgroundColor: $button.attr("ripple-color")
		    })
		    .appendTo($button)
		    .animate({
		      width: animateSize,
		      height: animateSize,
		      opacity: 0
		    }, 500, function() {
		      $(this).remove();
		    });
		});

		//tab
		var tabs = document.querySelector('.tabs-buttons .swiper-wrapper');

		var tabButtons = new Swiper('.tabs-buttons', {
		  slidesPerView: 'auto',
		  freeMode: true,
		  scrollbar: '.swiper-scrollbar',
		  mousewheelControl: true,
		  onTap: function(swiper, event) {
		    if ( event.target.classList.contains('swiper-slide') && !event.target.classList.contains('active-tab') ) {
		      event.target.parentElement.querySelector('.active-tab').classList.remove('active-tab');
		      event.target.classList.add('active-tab');
		      tabContent.slideTo(swiper.clickedIndex);
		    }
		  }
		});

		var tabContent = new Swiper('.tabs-content', {
		  onSlideChangeStart: function(swiper, event) {
		    tabs.children[swiper.previousIndex].classList.remove('active');
		    tabs.children[swiper.activeIndex].classList.add('active');
		  }
		});

		////////////////////////////////////////////검색필터///////////////////////////////////////////
		jQuery(function($)
		{
		    $(".hamburger").click(function()
		    {
		        $(".navigation").toggleClass("open");
		    })
		});

	</script>
</body>
</html>