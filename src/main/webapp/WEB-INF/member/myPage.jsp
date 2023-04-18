<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MyPage🐟</title>
<!--Carousel-->
<link rel="stylesheet" href="../css/member/owlCarousel/owl.theme.default.css">
<link rel="stylesheet" href="../css/member/owlCarousel/owl.carousel.css">
<!--Carousel-->

<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!--BootStrap-->

<link rel="stylesheet" href="../css/member/edit.css">
<link rel="stylesheet" href="../css/member/myPage.css">
<!-- 음... -->

</head>
<meta charset="UTF-8">
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">
				<a class="OMGlogo" href="#"><img src="../img/logo/logo_no_bg2.png"
					alt="OhMyGoal!"></a>
			</div>
			<!-- 햄버거 -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- 햄버거 -->
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#"
						style="text-decoration: none; margin-right:20px;">개인정보수정</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="text-decoration: none;">로그아웃</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div id="profileDiv">
		<div id="profileContent">
			<div id="String">
			<span>"<span class="nickname">수박</span>" 님 안녕하세요.
			</span><br> <span>오늘의 미션을 달성하세요!</span>
			</div>
			<img id="banner" src="../img/people.png">
		</div>
	
	</div>
	<div id="missionDiv">
		<div id="missionList" class="shadow p-3 mb-5 bg-body rounded">
			<div id="grade">
				<img id="grade_img" src="../img/grade/seed.png"> <span><span
					class="nickname">수박</span>님의 미션</span>
			</div>
			<div id="carousel" class="owl-carousel owl-theme">
				<div class="item">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/running.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="item test">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/yoga.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/climbing.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/weight.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/swim.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="card" style="width: 19rem;">
						<img src="../img/mission/swim.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>

	<!-- edit_modal -->
	<jsp:include page='edit.jsp'></jsp:include>

	<!--BootStrap-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
		
	</script>
	<!--BootStrap-->

	<!--jquery-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!--jquery-->

	<!--Carousel-->
	<script src="../js/member/owlCarousel/owl.carousel.js"></script>
	<script src="../js/member/owlCarousel/owl.autoplay.js"></script>
	<script src="../js/member/owlCarousel/owl.navigation.js"></script>
	<script src="../js/member/owlCarousel/owl.mousewheel.js"></script>
	<script>
		var owl = $('.owl-carousel');
		owl.owlCarousel({
			items : 5,
			margin : 10,
			loop : true,
			nav : true,
			navText : [ '<', '>' ],
			autoplay : true,
			autoplayTimeout : 3000,
			autoplayHoverPause : true,
			responsive : {
				0 : {
					items : 1
				},
				600 : {
					items : 2
				},
				1000 : {
					items : 5
				}
			}
		});
		owl.on('mousewheel', '.owl-stage', function(e) {
			if (e.deltaY > 0) {
				owl.trigger('next.owl');
			} else {
				owl.trigger('prev.owl');
			}
			e.preventDefault();
		});
	</script>
	<!--Carousel-->
</body>

</html>