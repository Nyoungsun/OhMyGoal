<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Q&A</title>

<link rel="stylesheet" href="../css/board/QnA.css">
<link rel="shortcut icon" href="../img/icon/check.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.6.4.min.js">
	
</script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<script>
	new WOW().init(); // wow 활성화
</script>

</head>

<body>

	<form method="post" data-email="dudtjs303@yonsei.ac.kr" class="gform"
		id="emailForm" target="iframe1"
		action="https://script.google.com/macros/s/AKfycbzXTvSzgRdzbHSP31hR6DwDhxOO5WVuvUUeZJOB81KXcX0-5bOewR9u5mliMxriXReq/exec">

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

		<br> <br>
		<main style="margin-left: 20%;">
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<img src="../img/logo/logo_no_bg2.png" style="width: 200px;">
							<br> <br>
							<h1>
								궁금한 점이 있으시면 저희에게 <br>문의해 주시기 바랍니다.
							</h1>

							<a href="/OhMyGoal/board/faq"
								class="btn btn-primary"
								style="border-color: #0000ff; background-color: #0000ff;">자주
								묻는 질문</a>
						</div>
						<div class="col-md-4 col-sm-8">
							<img src="../img/QnA.png" alt="Mission" class="img-fluid">
						</div>
					</div>
				</div>
			</div>
		</main>
		<section class="bg_re wow zoomIn" data-wow-duraion="3s">
			<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box"
				style="height: auto; width: 50%; max-width: 100%;">
				<h3
					style="text-align: center; font-weight: bold; margin-top: 3%; margin-bottom: 3%;"
					id="title1">1:1 문의하기</h3>
				<hr
					style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">
				<div class="option_ann1">
					<label for="title">✍ 문의 제목 <em style="color: red;">*</em></label> <input
						type="text" name="title" id="title" placeholder="제목을 입력해주세요.">&nbsp;
					<span id="title-error" style="color: red;"></span>
				</div>
				<div class="option_ann">
					<label>✍ 문의 유형 <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</label> <select class="selectbox" id="selectbox" name="selectbox">
						<option value="" disabled selected hidden>문의 선택</option>
						<option value="접속 장애">접속 장애</option>
						<option value="회원 탈퇴">회원 탈퇴</option>
						<option value="기타문의 및 제안의견">기타문의 및 제안의견</option>
						<option value="계정 문제">계정 문제</option>
						<option value="비밀번호 찾기">비밀번호 찾기</option>
					</select><br> <span id="selectbox-error" style="color: red;"> </span>
				</div>

				<div class="option_ann">
					<label for="message">✍ 문의 내용 <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</label><br>
					<textarea id="message" name="message" style="resize: none;"
						placeholder="문의 유형을 선택 후 문의내용을 자세하게 작성해주세요."></textarea>
					<br> <span id="textarea-error" style="color: red;"></span>
				</div>

				<div class="option_ann">
					<label for="name">✍ 이름 <em style="color: red">*</em></label> <input
						id="name" name="name" type="text" placeholder="이름을 입력해주세요">&nbsp;
					<span id="name-error" style="color: red;"></span>
				</div>

				<div class="option_ann">
					<label for="phone">✍ 핸드폰 번호 <em style="color: red">*</em></label> <input
						id="phone" name="phone" type="text" placeholder="010 1234 5678">&nbsp;
					<span id="phone-error" style="color: red;"></span>
				</div>


				<div class="option_ann">
					<label for="email">✍ 이메일 <em style="color: red">*</em> <input
						type="email" id="email" name="email"
						placeholder="ex)example@naver.com">&nbsp;&nbsp;
					</label><br> <span id="email-error" style="color: red;"></span>
				</div>

				<hr
					style="width: 100%; margin-left: auto; margin-right: auto; height: 3px; border: 0; background: black;">
				<div class="option_ann">
					<input type="checkbox" id="agreement" name="agreement"> <label
						for="agreement">개인정보, 수집, 이용 동의 <em style="color: red;">*</em></label>
					<span id="agreement-error" style="color: red;"></span>
				</div>

				<div>
					<input type="submit" id="upBtn" value="문의 접수"
						style="border-radius: 5px; border-color: #0000ff; background-color: #0000ff;">
				</div>
			</div>
		</section>
	</form>
	<iframe id="iframe1" name="iframe1" style="display:none"></iframe> 
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>
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
	<script data-cfasync="false"
		src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script>
	<script>
		$("#upBtn").click(function(e) {
			e.preventDefault();

			// 입력값 받아오기
			var title = $("#title").val();
			var type = $("#selectbox").val();
			var message = $("#message").val();
			var name = $("#name").val();
			var phone = $("#phone").val();
			var email = $("#email").val();
			var agreement = $("#agreement").prop("checked");

			// 유효성 검사
			var valid = true;

			// 문의 제목
			if (title === "") {
				$("#title-error").text("문의 제목을 입력해주세요.");
				valid = false;
			} else {
				$("#title-error").text("");
			}

			// 문의 유형
			if (type === null) {
				$("#selectbox-error").text("문의 유형을 선택해주세요.");
				valid = false;
			} else {
				$("#selectbox-error").text("");
			}

			// 문의 내용
			if (message === "") {
				$("#textarea-error").text("문의 내용을 입력해주세요.");
				valid = false;
			} else {
				$("#textarea-error").text("");
			}

			// 이름
			if (name === "") {
				$("#name-error").text("이름을 입력해주세요.");
				valid = false;
			} else {
				$("#name-error").text("");
			}

			// 핸드폰 번호
			var phoneRegex = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;
			if (phone === "" || !phoneRegex.test(phone)) {
				$("#phone-error").text("올바른 핸드폰 번호를 입력해주세요.");
				valid = false;
			} else {
				$("#phone-error").text("");
			}

			// 이메일
			var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			if (email === "" || !emailRegex.test(email)) {
				$("#email-error").text("올바른 이메일을 입력해주세요.");
				valid = false;
			} else {
				$("#email-error").text("");
			}

			// 동의 여부
			if (!agreement) {
				$("#agreement-error").text("개인정보 수집 및 이용에 동의해주세요.");
				valid = false;
			} else {
				$("#agreement-error").text("");
			}

			// 모든 입력값이 유효한 경우
			if (valid) {
				// 여기에 전송 처리 코드 작성
				$('#emailForm').submit();
				alert("문의가 성공적으로 접수되었습니다.");
				location.href="/OhMyGoal/";
			}
		});
	</script>
</body>
</html>
