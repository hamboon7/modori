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
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<!-- 직접지정하는 경로----------------------------------------------------------------------------------------------------------- -->
<link href="./assets/bootstrap-4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./css/main.css" rel="stylesheet">

</head>
<body>
	<jsp:include page="nav.jsp" />
	<section class="container">
		<div class="page-header"></div>
		<div class="row active-with-click">

			<c:forEach items="${mainData}" var="mainVO">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<article class="material-card Red">
						<h2>
							<span><c:out value="${mainVO.name}" /></span> <strong> <i
								class="fa fa-fw fa-star"></i> <c:out value="${mainVO.price}" />
							</strong>
						</h2>
						<div class="mc-content">
							<div class="img-container">
								<img class="img-responsive" src="img/${mainVO.img1}.png"
									width="100px" height="100px">
							</div>
							<div class="mc-description">
								<c:out value="${mainVO.comment}" />
							</div>
						</div>
						<a class="mc-btn-action"> <i class="fa fa-bars"></i>
						</a>
						<div class="mc-footer">
							<h4>상품상태</h4>
							<a class="fa fa-fw fa-facebook"><c:out
									value="${mainVO.pro_condition}" /></a> <a
								class="fa fa-fw fa-twitter"><c:out
									value="${mainVO.sell_condition}" /></a> <a
								class="fa fa-fw fa-linkedin"><c:out
									value="${mainVO.total_score}" /></a> <a
								class="fa fa-fw fa-google-plus"></a>
						</div>
					</article>
				</div>
			</c:forEach>

			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Pink">
					<h2>
						<span>Sean Penn</span> <strong> <i
							class="fa fa-fw fa-star"></i> Mystic River
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-sean-penn.jpg">
						</div>
						<div class="mc-description">He has won two Academy Awards,
							for his roles in the mystery drama Mystic River (2003) and the
							biopic Milk (2008). Penn began his acting career in television
							with a brief appearance in a 1974 episode of Little House on the
							Prairie ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Purple">
					<h2>
						<span>Clint Eastwood</span> <strong> <i
							class="fa fa-fw fa-star"></i> Million Dollar Baby
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-clint-eastwood.jpg">
						</div>
						<div class="mc-description">He rose to international fame
							with his role as the Man with No Name in Sergio Leone's Dollars
							trilogy of spaghetti Westerns during the 1960s ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Deep-Purple">
					<h2>
						<span>Dustin Hoffman</span> <strong> <i
							class="fa fa-fw fa-star"></i> Kramer vs. Kramer
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-dustin-hoffman.jpg">
						</div>
						<div class="mc-description">He has been known for his
							versatile portrayals of antiheroes and vulnerable characters.[3]
							He won the Academy Award for Kramer vs. Kramer in 1979 ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Indigo">
					<h2>
						<span>Edward Norton</span> <strong> <i
							class="fa fa-fw fa-star"></i> American History X
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-edward-norton.jpg">
						</div>
						<div class="mc-description">He has been nominated for three
							Academy Awards for his work in the films Primal Fear, American
							History X and Birdman. He also starred in other roles ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Blue">
					<h2>
						<span>Michael Caine</span> <strong> <i
							class="fa fa-fw fa-star"></i> Educated Rita
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-michael-caine.jpg">
						</div>
						<div class="mc-description">English actor and author.
							Renowned for his distinctive working class cockney accent, Caine
							has appeared in over 115 films and is regarded as a British ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Light-Blue">
					<h2>
						<span>Harvey Keitel</span> <strong> <i
							class="fa fa-fw fa-star"></i> Pulp Fiction
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-harvey-keitel.jpg">
						</div>
						<div class="mc-description">Some of his most notable
							starring roles were in Martin Scorsese's Mean Streets and Taxi
							Driver, Ridley Scott's The Duellists and Thelma & Louise, Quentin
							Tarantino ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Cyan">
					<h2>
						<span>Jack Nicholson</span> <strong> <i
							class="fa fa-fw fa-star"></i> The Shining
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-jack-nicholson.jpg">
						</div>
						<div class="mc-description">Throughout his career, Nicholson
							has portrayed unique and challenging roles, many of which include
							dark portrayals of excitable, neurotic and psychopathic
							characters ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Teal">
					<h2>
						<span>Jeff Bridges</span> <strong> <i
							class="fa fa-fw fa-star"></i> The Big Lebowski
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-jeff-bridges.jpg">
						</div>
						<div class="mc-description">He comes from a well-known
							acting family and began his televised acting in 1958 as a child
							with his father, Lloyd Bridges, and brother, Beau, on
							television's Sea Hunt ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Green">
					<h2>
						<span>Joaquin Phoenix</span> <strong> <i
							class="fa fa-fw fa-star"></i> Her
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-joaquin-phoenix.jpg">
						</div>
						<div class="mc-description">is an American actor, producer,
							music video director, musician and activist. For his work as an
							artist, Phoenix has received a Grammy Award, a Golden Globe Award
							and three Academy ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Light-Green">
					<h2>
						<span>Tom Hanks</span> <strong> <i
							class="fa fa-fw fa-star"></i> Forrest Gump
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-tom-hanks.jpg">
						</div>
						<div class="mc-description">He is known for his roles in Big
							(1988), Philadelphia (1993), Forrest Gump (1994), Apollo 13
							(1995), Saving Private Ryan, You've Got Mail (both 1998), The
							Green Mile (1999), Cast Away (2000) ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Lime">
					<h2>
						<span>Philip Seymour Hoffman</span> <strong> <i
							class="fa fa-fw fa-star"></i> 25th Hour
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-philip-seymour-hoffman.jpg">
						</div>
						<div class="mc-description">Best known for his distinctive
							supporting and character roles – typically lowlifes, bullies, and
							misfits – Hoffman was a regular presence in films from the early
							1990s until his death at age 46.</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Yellow">
					<h2>
						<span>Paul Newman</span> <strong> <i
							class="fa fa-fw fa-star"></i> The Color of Money
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-paul-newman.jpg">
						</div>
						<div class="mc-description">He won numerous awards,
							including an Academy Award for his performance in the 1986 film
							The Color of Money,[3] a BAFTA Award, a Screen Actors Guild
							Award, a Cannes Film Festival Award, an Emmy Award ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Amber">
					<h2>
						<span>Marlon Brando</span> <strong> <i
							class="fa fa-fw fa-star"></i> The Godfather
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-marlon-brando.jpg">
						</div>
						<div class="mc-description">He is hailed for bringing a
							gripping realism to film acting, and is frequently cited as the
							greatest and most influential actor of all time.[2] A cultural
							icon, Brando is most famous for his Academy ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Orange">
					<h2>
						<span>Kevin Spacey</span> <strong> <i
							class="fa fa-fw fa-star"></i> American Beauty
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-kevin-spacey.jpg">
						</div>
						<div class="mc-description">He began his career as a stage
							actor during the 1980s, before being cast in supporting roles in
							film and television. He gained critical acclaim in the early
							1990s, culminating in his first Academy Award ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Deep-Orange">
					<h2>
						<span>Robert De Niro</span> <strong> <i
							class="fa fa-fw fa-star"></i> Taxy Driver
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-robert-de-niro.jpg">
						</div>
						<div class="mc-description">His first major film roles were
							in the sports drama Bang the Drum Slowly (1973) and Martin
							Scorsese's crime film Mean Streets (1973). In 1974, after being
							turned down for the role of Sonny Corleone in the crime ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Brown">
					<h2>
						<span>Steve Mcqueen</span> <strong> <i
							class="fa fa-fw fa-star"></i> Papillon
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-steve-mcqueen.jpg">
						</div>
						<div class="mc-description">Called "The King of Cool", his
							"anti-hero" persona, developed at the height of the Vietnam
							War-era counterculture, made him a top box-office draw of the
							1960s and 1970s. McQueen received an Academy Award nomination for
							his ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Grey">
					<h2>
						<span>Rugter Hauer</span> <strong> <i
							class="fa fa-fw fa-star"></i> Blade Runner
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-rugter-hauer.jpg">
						</div>
						<div class="mc-description">Blonde, blue-eyed, tall and
							handsome Dutch actor Rutger Hauer has an international reputation
							for playing everything from romantic leads to action heroes to
							sinister villains. Hauer was born in Breukelen, a town in the
							province ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<article class="material-card Blue-Grey">
					<h2>
						<span>Morgan Freeman</span> <strong> <i
							class="fa fa-fw fa-star"></i> Glory
						</strong>
					</h2>
					<div class="mc-content">
						<div class="img-container">
							<img class="img-responsive"
								src="http://u.lorenzoferrara.net/marlenesco/material-card/thumb-morgan-freeman.jpg">
						</div>
						<div class="mc-description">Freeman has received Academy
							Award nominations for his performances in Street Smart, Driving
							Miss Daisy, The Shawshank Redemption and Invictus ...</div>
					</div>
					<a class="mc-btn-action"> <i class="fa fa-bars"></i>
					</a>
					<div class="mc-footer">
						<h4>Social</h4>
						<a class="fa fa-fw fa-facebook"></a> <a
							class="fa fa-fw fa-twitter"></a> <a class="fa fa-fw fa-linkedin"></a>
						<a class="fa fa-fw fa-google-plus"></a>
					</div>
				</article>
			</div>
		</div>
	</section>
	<script src="https://kit.fontawesome.com/a32c0865ec.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- 직접지정하는 경로----------------------------------------------------------------------------------------------------------- -->
	<script type="text/javascript" src="./js/nav.js"></script>

	<script type="text/javascript">
	
	$(function() {
        $('.material-card > .mc-btn-action').click(function () {
            var card = $(this).parent('.material-card');
            var icon = $(this).children('i');
            icon.addClass('fa-spin-fast');

            if (card.hasClass('mc-active')) {
                card.removeClass('mc-active');

                window.setTimeout(function() {
                    icon
                        .removeClass('fa-arrow-left')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-bars');

                }, 800);
            } else {
                card.addClass('mc-active');

                window.setTimeout(function() {
                    icon
                        .removeClass('fa-bars')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-arrow-left');

                }, 800);
            }
        });
    });
	
	</script>

</body>
</html>