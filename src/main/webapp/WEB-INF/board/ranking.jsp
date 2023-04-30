<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명예의 전당</title>
<link rel="shortcut icon" href="../img/icon/check.ico">
<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<style>
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
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

* {
	font-size: 15pt;
	font-family: 'Pretendard-Regular';
}

.medal-table {
	width: 50%;
	margin-top: 300px;
	margin-left: auto;
	margin-right: auto;
	margin-left: auto;
}

.medal-table table {
	border-collapse: collapse;
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}

.medal-table th, .medal-table td {
	padding: 10px;
	text-align: center;
	vertical-align: middle;
}

.medal-table th {
	border: none;
}

.medal-table td {
	border: none;
}

.medal-table .label {
	font-weight: bold;
}

.medal-table img {
	max-width: 50px;
	display: block;
	margin: 0 auto;
}

canvas {
	z-index: 10;
	pointer-events: none;
	position: fixed;
	top: 0;
	transform: scale(1.1);
}

.canvasBtn {
	display: none;
}
</style>
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
	<canvas id="canvas"></canvas>
	<div class="buttonContainer">
		<button class="canvasBtn" id="stopButton">Stop Confetti</button>
		<button class="canvasBtn" id="startButton">Drop Confetti</button>
	</div>
	<div class="medal-table shadow p-3 mb-5 bg-body rounded">
		<table>
			<thead>
				<tr>
					<th>금메달</th>
					<th>은메달</th>
					<th>동메달</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img src="../img/medal/first.png" alt="금메달"></td>
					<td><img src="../img/medal/second.png" alt="은메달"></td>
					<td><img src="../img/medal/third.png" alt="동메달"></td>
				</tr>
				<tr>
					<td>${rankList[0].id}</td>
					<td>${rankList[1].id}</td>
					<td>${rankList[2].id}</td>
				</tr>
				<tr>
					<td colspan="3" style="font-size: 10pt;">* 순위는 참여 중인 미션 개수 기준입니다.</td>
				</tr> 
			</tbody>
		</table>
	</div>

	<!--jquery-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<!-- 꽃가루 -->
	<script
		src="https://tistory4.daumcdn.net/tistory/3134841/skin/images/confetti_v2.js"></script>

	<!--BootStrap-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
		
	</script>
	<script>
		$(function() {
			function reAction() {
				$('#startButton').trigger("click");
				setTimeout(function() {
					$('#stopButton').trigger("click");
				}, 6000);
			}

			reAction();
		});

		$('#logoutBtn').click(function() {
			$.ajax({
				type : 'post',
				url : '/OhMyGoal/board/logout',
				success : function() {
					alert("로그아웃 되었습니다.");
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