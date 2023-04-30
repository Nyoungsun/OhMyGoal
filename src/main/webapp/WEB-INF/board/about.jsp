<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ABOUT</title>
<link rel="shortcut icon" href="../img/icon/check.ico">
<link rel="stylesheet" href="../css/board/about.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script>
	new WOW().init(); // wow 활성화
</script>
<script type="text/javascript">
	
</script>
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container" style="">
				<a class="OMGlogo" href="../"><img
					src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="#navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav " style="margin-left: 20px;">
						<c:if test="${not empty memName}">
							<li class="nav-item"><a class="nav-link"
								href="../mission/missionWrite">그룹미션 만들기 </a></li>
						</c:if>
						<li class="nav-item"><a class="nav-link" href="ranking">명예의
								전당 </a></li>
						<li class="nav-item"><a class="nav-link" href="qna">문의하기</a>
						</li>
					</ul>
				</div>

				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<c:if test="${empty memName}">
							<li class="nav-item"><a id="topnav_loginBtn"
								class="nav-link" href="#" style="text-decoration: none;">로그인</a>
							</li>
						</c:if>

						<c:if test="${not empty memName}">
							<li class="nav-item"><a class="nav-link"
								href="../member/myPage" style="text-decoration: none;">${memName}님
									환영합니다.&nbsp;&nbsp;&nbsp;마이페이지</a></li>
							<li class="nav-item"><a id="logoutBtn" class="nav-link"
								href="#" style="text-decoration: none;">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<section class="section">
		<div class="masthead-image" id="master-container">
			<div class="content center">
				<h1 id="master">
					<div>Welecom to</div>
					<div id="master-container-scroller">
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Friend</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Enemy</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Frenemy</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Mom</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Dad</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Brother</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Sister</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Son</a>.
						</div>
						<div class="master-container-scroller_item">
							<a class="cta-link" href="#">Daughter</a>.
						</div>
						<div class="master-container-scroller_item">Friend.</div>
					</div>
					<div>
						<img src="../img/logo/logo_no_bg2.png" width="400" height="100">
					</div>
				</h1>
			</div>
		</div>
	</section>

	<main>
		<div class="banner">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<h1>Welecom to</h1>
						<img src="../img/logo/logo_no_bg2.png" style="width: 200px;">
						<br> <br>
						<p>
							OhMyGoal은 자기계발을 추구하는 모든 사용자들에게 추천하는 사이트입니다. <br>누구나 쉽고 재미있게
							즐길 수 있는 1일 1미션 서비스로, 새로운 도전을 통해 자신의 성장을 이루고, 미션 수행을 통해 보상을 받는
							재미까지 함께 누리세요!
						</p>
						<p>
							사이트는 사용하기 쉽고 간단한 디자인으로 구성되어 있으며, 다양한 카테고리의 미션을<br> 제공하여
							사용자들이 자신에게 맞는 미션을 선택하여 수행할 수 있습니다. 또한, 미션 수행 후 제출한 결과물을 공유하면 다른
							사용자들의 참여와 소통도 가능합니다.
						</p>

						<p>목표 기간 내에 완료할 수 있는 재미있고 도전적인 활동을 제공하는 것이 우리의 목표이며, 일상에서 새로운
							도전을 하고 싶거나, 새로운 취미를 찾고 싶은 분들에게 적극 추천합니다.</p>

						<a href="/OhMyGoal/" class="btn btn-primary"
							style="background-color: #0000ff; border-color: #0000ff;">
							오늘의 미션에 참여하기</a>
					</div>
					<div class="col-md-6 col-sm-12">
						<img src="../image/challenge.png" alt="Mission" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</main>
	<section class="bg_bl wow slideInRight" data-wow-duration="4s">
		<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
			style="width: 90%; margin-left: auto; margin-right: auto;">
			<div class="jumbotron">
				<h1>
					<img src="../img/logo/logo_no_bg.png" style="width: 100px;"><br>
				</h1>
				<p>
				<h4>"새로운 도전을 위한 첫 걸음, OMG와 함께 시작해보실래요?"</h4>
				</p>
				<p>OMG 서비스를 살펴보고 귀사의 목표 달성을 위헤 미션을 만들어보세요.</p>
				<a href="/OhMyGoal/mission/missionWrite" class="btn btn-primary"
					style="background-color: #0000ff; border-color: #0000ff;">미션
					만들기</a>
			</div>
		</div>
	</section>
	<section class="bg_pu wow slideInLeft" data-wow-duration="4s">
		<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
			style="width: 90%; margin-left: auto; margin-right: auto;">
			<h2>✨ Mission</h2>
			<h4>매일 새로운 도전과 함께 새로운 경험과 습관을 형성할 수 있는 좋은 방법입니다!</h4>
			<p>자세한 내용은 미션 페이지에서 확인하실 수 있습니다. 많은 참여 부탁드립니다!</p>
			<a href="/OhMyGoal/" class="btn btn-primary"
				style="background-color: #0000ff; border-color: #0000ff;">미션
				보러가기</a>
		</div>
	</section>
	<!-- 	 <div class="shadow-lg p-3 mb-5 bg-body rounded" id="box">
		<h2 class="card-title">💪Exercise Mission</h2>
		<p class="card-text">Let's take a walk and exercise together
			today.</p>
		<a href="#" class="btn btn-primary">Learn More</a>
	</div> -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<strong>OhMyGoal! 2023</strong>
					</p>
					<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
					<p>OhMyGoal.help@gmail.com</p>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-ywuORbMAMokt+o/XtX9f1nnmQ2c43+18zvhVe1KyO08Tpzts0lVu02tWxGtLZ9/z"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="http://code.jQuery.com/jquery-3.6.4.min.js"></script>
	<script type="text/javascript">
		$('#logoutBtn').click(function() {
			$.ajax({
				type : 'post',
				url : '/OhMyGoal/board/logout',
				success : function() {
					alert("로그아웃이 완료되었습니다.");
					location.href = '/OhMyGoal/';
				},
				error : function(err) {
					console.log(err);
				}
			});
		});

		$('#topnav_loginBtn').click(function() {
			location.href = '/OhMyGoal/';
		});
	</script>
</body>
</html>