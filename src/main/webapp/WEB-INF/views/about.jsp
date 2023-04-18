<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ABOUT✨</title>
<link rel="stylesheet" href="css/about.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script type="text/javascript">
</script>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">
				<a class="OMGlogo" href="#"><img src="img/logo/logo_no_bg2.png"
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
						style="text-decoration: none;">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="text-decoration: none;">로그아웃</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<main>
		<div class="banner">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<h1>Welcome to</h1>
						<img src="img/logo/logo_no_bg2.png" style="width: 200px;"> <br>
						<br>
						<p>목표 기간 내에 완료할 수 있는 재미있고 도전적인 활동을 제공하는 것이 우리의 목표입니다.</p>
						<p>각 미션은 관심 있는 사람들이 접근할 수 있도록 설계되었으므로, 당신이 관심 있는 사람이 아니더라도
							걱정하지 마세요.</p>
						👉 <a href="#" class="btn btn-primary"> 오늘의 미션에 참여하기</a>
					</div>
					<div class="col-md-6 col-sm-12">
						<img src="img/challenge.png" alt="Mission" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</main>
	<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box">
		<div class="jumbotron">
			<h1>
				<img src="img/logo/logo_no_bg.png" style="width: 100px;"><br>
			</h1>
			<p>
			<h4>OMG 서비스를 살펴보고 귀사의 목표 달성을 지원하는 방법을 알아보십시오.</h4>
			</p>
			<a href="#" class="btn btn-primary">Get Started</a>
		</div>
	</div>
	<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box">
		<h2>✨ Mission</h2>
		<h4>자세한 내용은 미션 페이지에서 확인하실 수 있습니다. 많은 참여 부탁드립니다!</h4>
		<p></p>
		<a href="#" class="btn btn-primary">Learn More</a>
	</div>
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
</body>
</html>