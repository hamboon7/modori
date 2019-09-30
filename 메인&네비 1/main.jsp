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
<title>메인화면</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 직접지정하는 경로----------------------------------------------------------------------------------------------------------- -->
<link href="css/main.css" rel="stylesheet">
<style>
.slider {
	margin: 30px auto;
	max-width: 940px;
}

.slide_viewer {
	height: 340px;
	overflow: hidden;
	position: relative;
}

.slide_group {
	height: 100%;
	position: relative;
	width: 100%;
}

.slide {
	display: none;
	height: 100%;
	position: absolute;
	width: 100%;
}

.slide:first-child {
	display: block;
}

.slide:nth-of-type(1) {
	background: #D7A151;
}

.slide:nth-of-type(2) {
	background: #F4E4CD;
}

.slide:nth-of-type(3) {
	background: #C75534;
}

.slide:nth-of-type(4) {
	background: #D1D1D4;
}

a.slide_btn {
	color: #474544;
	font-size: 42px;
	margin: 0 0.175em;
	-webkit-transition: all 0.4s ease-in-out;
	-moz-transition: all 0.4s ease-in-out;
	-ms-transition: all 0.4s ease-in-out;
	-o-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
}

.slide_btn.active, .slide_btn:hover {
	color: #428CC6;
	cursor: pointer;
}

.directional_nav {
	height: 340px;
	margin: 0 auto;
	max-width: 940px;
	position: relative;
	top: -340px;
}

.previous_btn {
	bottom: 0;
	left: 100px;
	margin: auto;
	position: absolute;
	top: 0;
}

.next_btn {
	bottom: 0;
	margin: auto;
	position: absolute;
	right: 100px;
	top: 0;
}

.previous_btn, .next_btn {
	cursor: pointer;
	height: 65px;
	opacity: 0.5;
	-webkit-transition: opacity 0.4s ease-in-out;
	-moz-transition: opacity 0.4s ease-in-out;
	-ms-transition: opacity 0.4s ease-in-out;
	-o-transition: opacity 0.4s ease-in-out;
	transition: opacity 0.4s ease-in-out;
	width: 65px;
}

.previous_btn:hover, .next_btn:hover {
	opacity: 1;
}

@media only screen and (max-width: 767px) {
	.previous_btn {
		left: 50px;
	}
	.next_btn {
		right: 50px;
	}
}

.has-search .form-control {
	padding-left: 2.375rem;
	top: 10px;
}

.main {
	width: 50%;
	margin: 50px auto;
}

:root {
  --clr1: #ddd;
  --clr2: #efefef;
  --clr3: #333;
  --clr4: #F2CB05;
  --border-radius: 7px;
  --text-radius: 50em;
}

@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    -moz-transform: translateY(0);
    -ms-transform: translateY(0);
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
  40% {
    -moz-transform: translateY(-30px);
    -ms-transform: translateY(-30px);
    -webkit-transform: translateY(-30px);
    transform: translateY(-30px);
  }
  60% {
    -moz-transform: translateY(-15px);
    -ms-transform: translateY(-15px);
    -webkit-transform: translateY(-15px);
    transform: translateY(-15px);
  }
}
.arrow {
	position: fixed;
	bottom: 50px;
	left: 50%;
	cursor: pointer;
	margin-left: -20px;
	width: 20px;
	height: 20px;
	padding: 20px;
	z-index: 99;
	background-color: var(- -clr4);
	border-radius: 50em;
	background-size: 20px 15px;
	background-repeat: no-repeat;
	background-position: center;
}

.bounce {
	-moz-animation: bounce 2s infinite;
	-webkit-animation: bounce 2s infinite;
	animation: bounce 2s infinite;
}

span {
	background: #ffffff;
	display: block;
	height: 4px;
	position: absolute;
	top: 18px;
	transition: all 0.15s 0s ease-out;
	width: 14px;
}

span.left {
	right: 9px;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

span.right {
	left: 9px;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
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
			//[2]암호체크
			//만약 document문서 안에 있는 join아이디를 가지는 폼안에 있는
			//txtpassword라는 id를 가진 <input>태그로 부터 입력받은 패스워드가 없다면?
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>
</head>

<body>
	<jsp:include page="nav.jsp" />
	<div class="slider">
		<div class="slide_viewer">
			<div class="slide_group">
				<div class="slide"></div>
				<div class="slide"></div>
				<div class="slide"></div>
				<div class="slide"></div>
			</div>
		</div>
	</div>
	<!-- End // .slider -->

	<div class="directional_nav">
		<div class="previous_btn" title="Previous">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				width="65px" height="65px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544"
					d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
			c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z" />
          <path fill="#474544"
					d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z" />
        </g>
      </g>
    </svg>
		</div>

		<div class="next_btn" title="Next">
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				width="65px" height="65px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544"
					d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z" />
          <path fill="#474544"
					d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z" />
        </g>
      </g>
    </svg>
		</div>
	</div>
	<!-- End // .directional_nav -->

	<div class="cards">

		<a class="smoothScroll" href="#top">
			<div class="arrow animated bounce">
				<span class="left"></span> <span class="right"></span>
			</div>
		</a>

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
			</form>
		</div>

		<c:forEach items="${mainData}" var="mainVO">
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




		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?beach" alt="beach" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?mountain" alt="mountain" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?field" alt="field" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?water" alt="water" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?river" alt="river" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?kite" alt="kite" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?underwater"
				alt="underwater" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<img class="card__image"
				src="https://source.unsplash.com/300x225/?desert" alt="desert" />
			<div class="card-title">
				<a href="#" class="toggle-info btn"> <span class="left"></span>
					<span class="right"></span>
				</a>
				<h2>
					Card title <small>Image from unsplash.com</small>
				</h2>
			</div>
			<div class="card-flap flap1">
				<div class="card-description">This grid is an attempt to make
					something nice that works on touch devices. Ignoring hover states
					when they're not available etc.</div>
				<div class="card-flap flap2">
					<div class="card-actions">
						<a href="#" class="btn">Read more</a>
					</div>
				</div>
			</div>
		</div>

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

		$('.slider').each(function() {
			var $this = $(this);
			var $group = $this.find('.slide_group');
			var $slides = $this.find('.slide');
			var bulletArray = [];
			var currentIndex = 0;
			var timeout;

			function move(newIndex) {
				var animateLeft, slideLeft;

				advance();

				if ($group.is(':animated') || currentIndex === newIndex) {
					return;
				}

				bulletArray[currentIndex].removeClass('active');
				bulletArray[newIndex].addClass('active');

				if (newIndex > currentIndex) {
					slideLeft = '100%';
					animateLeft = '-100%';
				} else {
					slideLeft = '-100%';
					animateLeft = '100%';
				}

				$slides.eq(newIndex).css({
					display : 'block',
					left : slideLeft
				});
				$group.animate({
					left : animateLeft
				}, function() {
					$slides.eq(currentIndex).css({
						display : 'none'
					});
					$slides.eq(newIndex).css({
						left : 0
					});
					$group.css({
						left : 0
					});
					currentIndex = newIndex;
				});
			}

			function advance() {
				clearTimeout(timeout);
				timeout = setTimeout(function() {
					if (currentIndex < ($slides.length - 1)) {
						move(currentIndex + 1);
					} else {
						move(0);
					}
				}, 4000);
			}

			$('.next_btn').on('click', function() {
				if (currentIndex < ($slides.length - 1)) {
					move(currentIndex + 1);
				} else {
					move(0);
				}
			});

			$('.previous_btn').on('click', function() {
				if (currentIndex !== 0) {
					move(currentIndex - 1);
				} else {
					move(3);
				}
			});

			$.each($slides, function(index) {
				var $button = $('<a class="slide_btn">&bull;</a>');

				if (index === currentIndex) {
					$button.addClass('active');
				}
				$button.on('click', function() {
					move(index);
				}).appendTo('.slide_buttons');
				bulletArray.push($button);
			});

			advance();
		});
	</script>

</body>
</html>