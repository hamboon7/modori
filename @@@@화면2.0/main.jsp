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
	content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a32c0865ec.js"
	crossorigin="anonymous"></script>

<title>MODORI</title>
<!-- 직접지정하는 경로----------------------------------------------------------------------------------------------------------- -->
<link href="css/main.css" rel="stylesheet">

<style>
/*------------------------검색-------------------------------------------------*/
.search-form {
	position: relative;
	top: 25px;
	left: 155px;
	margin: 2px auto 20px auto;
	width: 310px;
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
	left: 38px;
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
	left: 270px;
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

/*스트롤----------------------------------------------------------------*/
.scrollTop {
	position: fixed;
	right: 5%;
	bottom: 10px;
	background-color: #F2CB05;
	padding: 5px 11px;
	opacity: 0;
	border-radius: 45px;
	transition: all 0.4s ease-in-out 0s;
}

.scrollTop a {
	font-size: 18px;
	color: #fff;
}
.first {
	color: #F2CB05;
}
.badg {
    font-size: 55%;
    font-weight: 700;
    padding: 1px 6px 2px 5px;
    position: relative;
    top: -1px;
    text-shadow: none !important;
    white-space: nowrap;
    letter-spacing: 0;
    position: absolute;
}
</style>
<script type="text/javascript">
	function CheckForm() {
		//[1]아이디 텍스트 박스에 접근해서 id 변수로 저장하는데, 입력한 id값을 저장
		var id = document.join.id;
		//만약 id의 값이 아무것도 입력되지 않았다면?
		if (id.value == "") {
			
		} else {//id, pass 모두 잘 입력받았따면? 이동!
			document.join.submit(); //form안에 있는 데이터를 action속성의 주소로 전송
		}
	}
</script>
</head>

<body>
	<jsp:include page="nav.jsp" />

	<div>
		<form class="search-form" id="join" name="join"
			onsubmit="return validate();" method="post"
			action="Controller?cmd=searchAction">
			<button type="submit" class="search-button" onclick="CheckForm();">
				<svg class="submit-button"> 
					<use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#search"></use>
    			</svg>
			</button>
			<input type="search" class="search-input" name="word" id="id">
			<svg xmlns="http://www.w3.org/2000/svg" width="0" height="0"
				display="none">
		  <symbol id="search" viewBox="0 0 32 32">
		    <path
					d="M 19.5 3 C 14.26514 3 10 7.2651394 10 12.5 C 10 14.749977 10.810825 16.807458 12.125 18.4375 L 3.28125 27.28125 L 4.71875 28.71875 L 13.5625 19.875 C 15.192542 21.189175 17.250023 22 19.5 22 C 24.73486 22 29 17.73486 29 12.5 C 29 7.2651394 24.73486 3 19.5 3 z M 19.5 5 C 23.65398 5 27 8.3460198 27 12.5 C 27 16.65398 23.65398 20 19.5 20 C 15.34602 20 12 16.65398 12 12.5 C 12 8.3460198 15.34602 5 19.5 5 z" />
		  </symbol>
		</svg>
		</form>
	</div>

	<!---------------------------------------------------- 위는 검색 아래는 배너 ---------------------------------------------------------------------->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/banner1.png" height="150" width="300"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/banner2.png" height="150" width="300"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/banner3.png" height="150" width="300"
					class="d-block w-100" alt="...">
			</div>
		</div>
	</div>
	
	<!---------------------------------------------------- 아래는 메인사진 ---------------------------------------------------------------------->
			
	<div class="page main">
		<c:forEach items="${mainData}" var="mainVO">
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
		<div class="bottom"></div>
	</div>
	
	<!---------------------------------------------------- 아래는 스크롤 탑 ---------------------------------------------------------------------->
	
	<div id="stop" class="scrollTop">
	   <a href="#top">
		<i class="fas fa-angle-up fa-lg"></i>
	  </a>
	</div>
	
	<script
		src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<script type="text/javascript">
	
	// Card Height
	$(window).resize(function() {
	  $('.cardee').each(function() {
	    $(this).height($(this).width() + 30);
	  });
	}).resize();

	/////////////////////////////////////////////////////////////////// Ripple Effect

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

	/////////////////////////////////////////////////////////////////scroll top
	$(document).ready(function() {

	  var scrollTop = $(".scrollTop");

	  $(window).scroll(function() {
	    // declare variable
	    var topPos = $(this).scrollTop();

	    // if user scrolls down - show scroll to top button
	    if (topPos > 100) {
	      $(scrollTop).css("opacity", "1");

	    } else {
	      $(scrollTop).css("opacity", "0");
	    }

	  }); // scroll END
	}); // ready() END
	    
	$(document).ready(function scrollNav() {
		  $('i').click(function(){  
		    //Toggle Class
		    $(".first").removeClass("first");      
		  });  
		});   
	</script>

</body>
</html>