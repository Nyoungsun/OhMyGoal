<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
header {
	width: 100%;
	position: sticky;
	top: 0;
	z-index: 1;
	background: #ffffff;
}

#navbarNav a {
	font-weight: bold;
	font-size: 16px;
	color: #212529;
	text-decoration: none
}

.navbar {
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#navbarNav a:hover {
	color: #6c757d;
}

.nav-link {
	color: #333;
	font-weight: 500;
	margin-right: 20px;
}

.OMGlogo img {
	height: 20px;
	margin-top: 15px;
	margin-bottom: 15px;
	margin-left: 20px;
}

</style>
<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!--BootStrap-->

<link rel="stylesheet" href="../css/member/findIdPwd.css">
<link rel="stylesheet" href="../css/member/edit.css">
<link rel="stylesheet" href="../css/member/myPage.css">
<link rel="stylesheet" href="../css/member/checkPwd.css">
<link rel="shortcut icon" href="../img/icon/check.ico">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
	rel="stylesheet">
</head>
<meta charset="UTF-8">
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

				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a id="topnav_loginBtn" class="nav-link"
							href="/OhMyGoal/" style="text-decoration: none;">로그인</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div id="wrap">
	<div class="shadow p-3 mb-5 bg-body rounded find">
		<h4><strong>아이디 찾기</strong></h4><br><br>
		<div class="findDiv">
			<span>이름</span><br> 
			<input type="text"
				   id="findName"
				   class="shadow-none p-3 mb-5 bg-light rounded">
		</div>
		<div class="findDiv">
			<span>휴대폰 번호</span><br> 
			<input type="text"
				   id="findPhone"
				   class="shadow-none p-3 mb-5 bg-light rounded "
				   placeholder="'-'(하이픈) 제외">
		</div>
		<div class="findBtnDiv">
			<input type="button" id="findOk" value="확인"> 
			<input type="reset" id="findOk" value="다시작성">
		</div>
	</div>
	<div class="shadow p-3 mb-5 bg-body rounded find">
		<h4><strong>비밀번호 찾기</strong></h4><br><br>
		<div class="findDiv">
			<span>아이디</span><br> 
			<input type="text" 
				   id="findId"
				   class="shadow-none p-3 mb-5 bg-light rounded">
		</div>
		<div class="findDiv">
			<span>휴대폰 번호</span><br> 
			<input type="text"
				   id="findPhone2"
				   class="shadow-none p-3 mb-5 bg-light rounded"
				   placeholder="'-'(하이픈) 제외">
		</div>
		<div class="findBtnDiv">
			<input type="button" id="findOk" value="확인">
			<input type="reset" id="findOk" value="다시작성">
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
</body>
</html>