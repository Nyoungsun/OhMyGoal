<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ABOUT</title>
<link rel="stylesheet" href="css/about.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container">
				<a class="OMGlogo" href="#"><img src="img/logo/logo_no_bg2.png"
					alt="OhMyGoal!"></a>
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
						<p>Our goal is to provide fun and challenging activities that
							you can complete within the target period.</p>
						<p>Each mission is designed to be accessible to people of
							interest, so don't worry if you're not an expert on the topic.</p>
						<a href="#" class="btn btn-primary">Join Today's Mission</a>
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
			<h1>Hello ~ OMG</h1>
			<p>Explore our services and discover how we can help you achieve
				your goals.</p>
			<a href="#" class="btn btn-primary">Get Started</a>
		</div>
	</div>
	<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box">
		<h2>Featured Mission</h2>
		<h3>Complete the OhMyGoal Scavenger Hunt</h3>
		<p>Are you up for a challenge? Complete the OhMyGoal Scavenger
			Hunt and win a prize!</p>
		<a href="#" class="btn btn-primary">Learn More</a>
	</div>
	<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box">
		<h2 class="card-title">Walking with My Pet!</h2>
		<p class="card-text">Let's take a walk and exercise together
			today.</p>
		<a href="#" class="btn btn-primary">Learn More</a>
	</div>
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